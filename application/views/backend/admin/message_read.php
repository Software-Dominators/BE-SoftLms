<?php
$message_thread_details = $this->db->get_where('message_thread', array('message_thread_code' => $current_message_thread_code))->row_array();
$first_sender = $message_thread_details['sender'];

// Identify the receiver (for the first message thread, the receiver is the opposite user)
$receiver_id = ($first_sender == $message_thread_details['sender']) ? $message_thread_details['receiver'] : $message_thread_details['sender'];

// Fetch receiver details
$receiver_details = $this->user_model->get_all_user($receiver_id)->row_array();
$receiver_name = isset($receiver_details) ? $receiver_details['first_name'] . ' ' . $receiver_details['last_name'] : 'User Deleted';
$receiver_email = isset($receiver_details) ? $receiver_details['email'] : 'N/A';
?>

<div class="content chat__right-side">
    <!-- user call -->
    <div class="user-active">
        <!-- Optionally, you can use a dynamic image URL here as well -->
        <img src="<?php echo $this->user_model->get_user_image_url($receiver_id); ?>" alt="image">
        
        <div class="details">
            <h6><?php echo $receiver_name; ?></h6>
            <small><?php echo $receiver_email; ?></small>
        </div>
    </div>
    
    <ul class="chat-conversation">
        <?php
        $messages = $this->db->get_where('message', array('message_thread_code' => $current_message_thread_code))->result_array();
        foreach ($messages as $row):
            $sender_details = $this->user_model->get_all_user($row['sender'])->row_array();
            $sender_id = $row['sender'];
            ?>
            
            <li class="conversation-content d-flex <?php if ($first_sender != $sender_id) echo 'sender'; ?>">
                <a href="">
                    <img src="<?php echo $this->user_model->get_user_image_url($sender_id); ?>" alt="">
                </a>
                <p><?php echo $row['message']; ?></p>
            </li>
        <?php endforeach; ?>
    </ul>

    <form method="post" action="<?php echo site_url('admin/message/send_reply/' . $current_message_thread_code); ?>" class="needs-validation chat-form" novalidate name="chat-form" id="chat-form">
        <div class="row">
            <div class="col">
                <input type="text" name="message" class="form-control chat-input message__input" placeholder="Enter your text" required>
                <div class="invalid-feedback">
                    <?php echo get_phrase('Please enter your message'); ?>
                </div>
            </div>
            <div class="col-auto">
                <button type="submit" class="message__btn "><?php echo get_phrase('send'); ?></button>
            </div>
        </div>
    </form>
</div>
