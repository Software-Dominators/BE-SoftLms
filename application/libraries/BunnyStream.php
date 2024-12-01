<?php

defined('BASEPATH') or exit('No direct script access allowed');

class BunnyStream
{
    protected $client;
    protected $hostname;
    protected $library_id;
    protected $api_key;

    public function __construct()
    {
        // Get Bunny Settings
        $bunny_stream_settings = get_settings('bunny_stream_settings', true) ?? [];

        // Define Bunny Credentials
        $this->hostname = $bunny_stream_settings['hostname'] ?? null;
        $this->library_id = $bunny_stream_settings['library_id'] ?? null;
        $this->api_key = $bunny_stream_settings['api_key'] ?? null;

        // Load Guzzle Lib
        $this->load->library('guzzle');

        // Define Guzzle Client Instance
        $this->client = new GuzzleHttp\Client([
            'base_uri' => 'https://video.bunnycdn.com/library/',
            'headers' => [
                'AccessKey' => $this->api_key,
                'Content-Type' => 'application/json',
                'accept' => 'application/json',
            ],
        ]);
    }

    public function __get($var)
    {
        return get_instance()->$var;
    }

    public function createVideo($collection_name, $title, $video_path)
    {
        $collection_id = $this->createCollection($collection_name);

        if ($collection_id == null) {
            return false;
        }

        try {
            // Create Video
            $response = $this->client->request('POST', "{$this->library_id}/videos", [
                'json' => [
                    'title' => $title,
                    'collectionId' => $collection_id,
                ],
            ]);

            $res = json_decode($response->getBody(), true);

            $videoId = $res['guid'];

            // Upload Video
            $this->client->request('PUT', "{$this->library_id}/videos/{$videoId}", [
                'body' => fopen($video_path, 'r'),
            ]);

            $video_url = "https://iframe.mediadelivery.net/embed/{$this->library_id}/{$videoId}";

            @unlink($video_path);

            return $video_url;
        } catch (\Throwable $th) {
            return null;
        }
    }

    public function updateVideo($collection_id, $video_url, $title, $video_path)
    {
        $this->deleteVideo($video_url);

        return $this->createVideo($collection_id, $title, $video_path);
    }

    public function deleteVideo($video_url)
    {
        $video_id = $this->getVideoId($video_url);

        try {
            // Delete Video
            $this->client->request('DELETE', "{$this->library_id}/videos/{$video_id}");

            return true;
        } catch (\Throwable $th) {
            return null;
        }
    }

    private function createCollection($name)
    {
        $name = $this->getCollectionName($name);

        try {
            $response = $this->client->request('GET', "{$this->library_id}/collections", [
                'json' => [
                    'search' => $name,
                ],
            ]);

            $res = json_decode($response->getBody(), true);

            foreach ($res['items'] as $item) {
                if ($item['name'] == $name) {
                    return $item['guid'];
                }
            }

            $response = $this->client->request('POST', "{$this->library_id}/collections", [
                'json' => [
                    'name' => $name,
                ],
            ]);

            $res = json_decode($response->getBody(), true);

            return $res['guid'];
        } catch (\Throwable $th) {
            return null;
        }
    }

    private function getCollectionName($name)
    {
        return "course_$name";
    }

    private function getVideoId($video_url)
    {
        $video_url_exploded = explode('/', $video_url);

        $video_url_last_segment = end($video_url_exploded);

        $video_url_last_segment_exploded = explode('?', $video_url_last_segment);

        return $video_url_last_segment_exploded[0];
    }
}
