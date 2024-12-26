<input type="hidden" name="lesson_type" value="bunny-video">
<input type="hidden" name="lesson_provider" value="bunny_video">

<div class="form-group">
    <label> <?php echo get_phrase('upload_bunny_video_file'); ?></label>
    <div class="input-group">
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="bunny_video_file" name="bunny_video_file" onchange="changeTitleOfImageUploader(this)" required>
            <label class="custom-file-label" for="bunny_video_file"><?php echo get_phrase('select_bunny_video_file'); ?></label>
        </div>
    </div>
    <small class="badge badge-primary"><?php echo 'maximum_upload_size'; ?>: <?php echo ini_get('upload_max_filesize'); ?></small>
    <small class="badge badge-primary"><?php echo 'post_max_size'; ?>: <?php echo ini_get('post_max_size'); ?></small>
    <small class="badge badge-secondary"><?php echo '"post_max_size" '.get_phrase("has_to_be_bigger_than").' "upload_max_filesize"'; ?></small>
</div>
