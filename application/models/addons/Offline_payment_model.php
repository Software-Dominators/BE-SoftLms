<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Offline_payment_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}

	//Offline checkout User panel
	public function check_offline_payment_payment($payment_method = "", $item_type = ""){
		$payment_details = $this->session->userdata('payment_details');
		$item_ids = array();

		$file_extension = pathinfo($_FILES['payment_document']['name'], PATHINFO_EXTENSION);
		if ($file_extension == 'jpg' || $file_extension == 'pdf' || $file_extension == 'txt' || $file_extension == 'png' || $file_extension == 'docx') :
			if ($payment_details['total_payable_amount'] > 0) :
				foreach($payment_details['items'] as $item){
					$item_ids[] = $item['id'];
				}

				$user_id = $this->session->userdata('user_id');
				$data['user_id'] = $user_id;
				$data['amount'] = $payment_details['total_payable_amount'];
				$data['item_id'] = json_encode($item_ids);
				$data['item_info'] = json_encode($payment_details['items']);
				$data['item_type'] = $item_type;
				$data['document_image'] = rand(6000, 10000000) . '.' . $file_extension;
				$data['timestamp'] = strtotime(date('H:i'));
				$data['status'] = 0;
				$this->db->insert('offline_payment', $data);
				move_uploaded_file($_FILES['payment_document']['tmp_name'], 'uploads/payment_document/' . $data['document_image']);
				$this->session->set_userdata('cart_items', array());
	            $this->session->set_userdata('payment_details', '');
	            $this->session->set_userdata('applied_coupon', '');

				$this->session->set_flashdata('flash_message', get_phrase('your_document_will_be_reviewd'));
			else :
				$this->session->set_flashdata('error_message', get_phrase('session_timed_out') . ' ! ' . get_phrase('please_try_again'));
			endif;
		else :
			$this->session->set_flashdata('error_message', get_phrase('this_type_of_file_does_not_have_permissions') . '. ' . get_phrase('there_are_permissions_for') . ' jpg, pdf, txt, png, docx ' . get_phrase('extension'));
			redirect(site_url('home/shopping_cart'), 'refresh');
		endif;
		redirect(site_url('home/purchase_history'), 'refresh');
	}
	public function attach_payment_document($file_extension = "")
	{
		$total_amount = $this->session->userdata('total_price_of_checking_out');
		$user_id = $this->session->userdata('user_id');
		$curse_id = json_encode($this->session->userdata('cart_items'));

		$data['user_id'] = $user_id;
		$data['amount'] = $total_amount;
		$data['course_id'] = $curse_id;
		$data['document_image'] = rand(6000, 10000000) . '.' . $file_extension;
		$data['timestamp'] = strtotime(date('H:i'));
		$data['status'] = 0;

		$this->db->insert('offline_payment', $data);
		move_uploaded_file($_FILES['payment_document']['tmp_name'], 'uploads/payment_document/' . $data['document_image']);

		$this->session->set_userdata('cart_items', array());
	}

	//User panel
	public function pending_offline_payment($user_id = "")
	{
		if ($user_id > 0) {
			$this->db->where('user_id', $user_id);
		}
		$this->db->where('status', 0);
		return $this->db->get('offline_payment');
	}

	//Admin panel
	public function offline_payment_all_data($offline_payment_id = "")
	{
		if ($offline_payment_id > 0) {
			$this->db->where('id', $offline_payment_id);
		}
		return $this->db->get('offline_payment');
	}
	public function offline_payment_pending($offline_payment_id = "")
	{
		if ($offline_payment_id > 0) {
			$this->db->where('id', $offline_payment_id);
		}
		$this->db->order_by('id', 'ASC');
		$this->db->where('status', 0);
		return $this->db->get('offline_payment');
	}
	public function offline_payment_approve($offline_payment_id = "")
	{
		if ($offline_payment_id > 0) {
			$this->db->where('id', $offline_payment_id);
		}
		$this->db->order_by('id', 'ASC');
		$this->db->where('status', 1);
		return $this->db->get('offline_payment');
	}
	public function offline_payment_suspended($offline_payment_id = "")
	{
		if ($offline_payment_id > 0) {
			$this->db->where('id', $offline_payment_id);
		}
		$this->db->order_by('id', 'ASC');
		$this->db->where('status', 2);
		return $this->db->get('offline_payment');
	}


	public function approve_offline_payment($param1 = "")
	{
		$this->db->where('id', $param1);
		$this->db->update('offline_payment', array('status' => 1));
	}
	public function suspended_offline_payment($param1 = "")
	{
		$this->db->where('id', $param1);
		$this->db->update('offline_payment', array('status' => 2));
	}
	public function delete_offline_payment($param1 = "")
	{
		$this->db->where('id', $param1);
		$this->db->delete('offline_payment');
	}



	// CHECK WHETHER A COURSE IS IN OFFLINE PAYMENT TABLE AS PENDING STATUS
	public function get_course_status($user_id = "", $course_id = "")
	{
		$offline_payment_courses = $this->db->get_where('offline_payment', array('user_id' => $user_id))->result_array();
		foreach ($offline_payment_courses as $row) {
			$course_ids = json_decode($row['course_id'], true);
			foreach ($course_ids as $cart_item) {
				if ($cart_item['type'] == 'course' && $cart_item['id'] == $course_id) {
					return $row['status'] == 0 ? "pending"
					: ($row['status'] == 1 ? "approved"
					: "suspended");
				}
			}
		}
		return false;
	}


	public function settings()
	{
		$data['value'] = htmlspecialchars($this->input->post('bank_information', false));
		if($this->db->get_where('settings', ['key' => 'offline_bank_information'])->num_rows() > 0){
        	$this->db->where('key', 'offline_bank_information');
        	$this->db->update('settings', $data);
		}else{
			$data['key'] = 'offline_bank_information';
        	$this->db->insert('settings', $data);
		}

        // Call the function to upload the image and delete the old one if it exists
        $this->upload_offline_payment_image('offline_payment');

	}
    public function upload_offline_payment_image($image_code)
    {
        $file_path = 'assets/payment/' . $image_code . '.png';

        // Check if the file already exists
        if (file_exists($file_path)) {
            // Delete the old file
            unlink($file_path);
        }

        // Check if a new file is uploaded and has a valid name
        if (isset($_FILES['offline_payment_image']) && $_FILES['offline_payment_image']['name'] != "") {

            // Move the new uploaded file to the specified directory
            if (move_uploaded_file($_FILES['offline_payment_image']['tmp_name'], $file_path)) {
                // Success: File was uploaded
                $this->session->set_flashdata('flash_message', 'Image uploaded successfully');
            } else {
                // Error: Something went wrong during the upload
                $this->session->set_flashdata('error_message', 'Image upload failed. Please try again.');
            }
        }
    }
}
