<!---------- Header Section start  ---------->



<?php $cart_items = $this->session->userdata('cart_items'); ?>
<?php $user_id = $this->session->userdata('user_id'); ?>
<?php $user_login = $this->session->userdata('user_login'); ?>
<?php $admin_login = $this->session->userdata('admin_login'); ?>



<?php include "header_lg_device.php"; ?>
<!-- Offcanves Menu  -->
<?php include "header_sm_device.php"; ?>