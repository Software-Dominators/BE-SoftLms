<?php
$message_thread_details = $this->db->get_where('message_thread', array('message_thread_code' => $current_message_thread_code))->row_array();
$first_sender = $message_thread_details['sender'];
?>





<div class="content chat__right-side">
<!-- user call -->
	<div class="user-active ">
		<img src="" alt="image">

		<div class="details">
			<h6>mmmm</h6>
			<small>wmaim.kmlkmkr</small>
		</div>
	</div>
	<ul class="chat-conversation">

		<?php
		$messages = $this->db->get_where('message', array('message_thread_code' => $current_message_thread_code))->result_array();
		foreach ($messages as $row):
			$sender_details = $this->user_model->get_all_user($row['sender'])->row_array();
			$sender_id = $row['sender'];

			$data['message_thread_code'] = $current_message_thread_code;
			?>

			<li class="conversation-content d-flex <?php if ($first_sender != $sender_id)
				echo 'sender'; ?>">
				<a href="">
					<img src="<?php echo $this->user_model->get_user_image_url($sender_id); ?>" alt="" srcset="">
				</a>

				<p><?php echo $row['message']; ?></p>
			</li>
		<?php endforeach; ?>
	</ul>

	<form method="post" action="<?php echo site_url('admin/message/send_reply/' . $current_message_thread_code); ?>"
		class="needs-validation chat-form" novalidate name="chat-form" id="chat-form">
		<div class="row">
			<div class="col">
				<input type="text" name="message" class="form-control chat-input message__input"
					placeholder="Enter your text" required>
				<div class="invalid-feedback">
					<?php echo get_phrase('Please enter your messsage'); ?>
				</div>
			</div>
			<div class="col-auto">
				<button type="submit" class="message__btn "><?php echo get_phrase('send'); ?></button>
			</div>
		</div>
	</form>
</div>













