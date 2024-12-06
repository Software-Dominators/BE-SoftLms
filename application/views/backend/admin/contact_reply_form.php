<form action="<?php echo site_url('admin/contact/send_reply/'.$contact['id']); ?>" method="post">
	<div class="mb-3">
        <textarea class="form-control" name="reply_message" rows="10"></textarea>
    </div>
    <div class="w-100 d-flex justify-content-end my-3">
        <button type="submit" class="submit-btn"><?php echo get_phrase('Send reply') ?></button>
    </div>
</form>