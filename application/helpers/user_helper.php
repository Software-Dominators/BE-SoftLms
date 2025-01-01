<?php if (! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2011, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */


if (! function_exists('get_user_role')) {
	function get_user_role($type = "", $user_id = '')
	{
		$CI	= &get_instance();
		$CI->load->database();

		$role_id	=	$CI->db->get_where('users', array('id' => $user_id))->row()->role_id;
		$user_role	=	$CI->db->get_where('role', array('id' => $role_id))->row()->name;

		if ($type == "user_role") {
			return $user_role;
		} else {
			return $role_id;
		}
	}
}


if (! function_exists('is_purchased')) {
	function is_purchased($conditions, $no_extra_conditions = false)
	{
		return enroll_status($conditions, $no_extra_conditions) == 'valid';
	}
}
if (! function_exists('enroll_status')) {
	function enroll_status($conditions, $no_extra_conditions = false)
	{
		// course_id is required
		if (!isset($conditions['course_id']))
			return false;

		$CI	= &get_instance();
		$CI->load->library('session');
		$CI->load->database();

		$user_id = $conditions['user_id'] ?? '';

		if ($user_id == '' && $CI->session->userdata('user_login'))
			$user_id = $CI->session->userdata('user_id');

		// course_id is required if no session exists
		if ($user_id == '')
			return false;

		$conditions['user_id'] = $user_id;

		$CI->db->where('user_id', $user_id);

		// Start Conditions Group
		$CI->db->group_start();

		// course_id
		$CI->db->group_start();
		$CI->db->where('course_id', $conditions['course_id']);
		if ($no_extra_conditions == false) {
			$CI->db->where('section_id IS NULL');
			$CI->db->where('lesson_id IS NULL');
		}
		$CI->db->group_end();

		// course_id, section_id
		if (isset($conditions['section_id'])) {
			$CI->db->or_group_start();
			$CI->db->where('course_id', $conditions['course_id']);
			$CI->db->where('section_id', $conditions['section_id']);
			if ($no_extra_conditions == false) {
				$CI->db->where('lesson_id IS NULL');
			}
			$CI->db->group_end();
		}

		// course_id, section_id, lesson_id
		if (isset($conditions['section_id']) && isset($conditions['lesson_id'])) {
			$CI->db->or_group_start();
			$CI->db->where('course_id', $conditions['course_id']);
			$CI->db->where('section_id', $conditions['section_id']);
			$CI->db->where('lesson_id', $conditions['lesson_id']);
			$CI->db->group_end();
		}

		$CI->db->group_end();

		$enrolled_history = $CI->db->get('enrol');
		if ($enrolled_history->num_rows() > 0) {
			$expiry_date = $enrolled_history->row('expiry_date');
			if ($expiry_date == null || $expiry_date >= time()) {
				return 'valid';
			}

			return 'expired';
		}

		return false;
	}
}

// ------------------------------------------------------------------------
/* End of file user_helper.php */
/* Location: ./system/helpers/user_helper.php */
