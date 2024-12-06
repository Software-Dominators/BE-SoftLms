<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <div class="content d-flex justify-content-between align-items-center">
             

                        <h4
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
              
                 <span>  <?php echo get_phrase('private_message'); ?></h4> </span>
                </h4>
                    <div>
                        <a href="<?php echo site_url('admin/message/message_new'); ?>" class="new-message-btn">
                            <?php echo get_phrase('new_message'); ?>

                        </a>
                    </div>
                </div>

            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>



<section class="chat">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="content chat__left-side">
                    <h3>User</h3>
                    <div class="search">
                        <input type="text" placeholder="Search ( Name , mail .....)" id="search-input">
                    </div>

                    <ul class="message__user-list  list-unstyled">
                        <?php
                        $current_user = $this->session->userdata('user_id');
                        $this->db->where('sender', $current_user);
                        $this->db->or_where('receiver', $current_user);
                        $message_threads = $this->db->get('message_thread')->result_array();
                        foreach ($message_threads as $row):

                            // defining the user to show
                            if ($row['sender'] == $current_user)
                                $user_to_show_id = $row['receiver'];
                            if ($row['receiver'] == $current_user)
                                $user_to_show_id = $row['sender'];

                            $unread_message_number = $this->crud_model->count_unread_message_of_thread($row['message_thread_code']);
                            ?>
                            <li >
                                <a class="message__user-list-item <?php if (isset($current_message_thread_code) && $current_message_thread_code == $row['message_thread_code'])
                                    echo 'active'; ?>"
                                    href="<?php echo site_url('admin/message/message_read/' . $row['message_thread_code']); ?>">
    
                                    <?php
                                    $user_details = $this->db->get_where('users', ['id' => $user_to_show_id])->row_array();
                                    if ($user_details):
                                        ?> 
                                    <img  loading="lazy" src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>">

                                        <div class="message__user-list-item-content">
                                

                                            <h6><?= $user_details['first_name'] . ' ' . $user_details['last_name'] ?></h6>
                                            <small><?= $user_details['email'] ?></small>
                                        </div>

                                    <?php else:
                                        echo get_phrase('deleted user');

                                        ?>
                                    <?php endif; ?>
                                    <?php if ($unread_message_number > 0): ?>
                                        <span class="badge badge-secondary float-right">
                                            <?php echo $unread_message_number; ?>
                                        </span>
                                    <?php endif; ?>
                                </a>
                            </li>

                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>


            <div class="col-lg-8 message-border">
                
                <?php include $message_inner_page_name . '.php'; ?>
               
        
</div>
        </div>
    </div>
</section>





<script>
    document.getElementById('search-input').addEventListener('input', function() {
    // Get the search query from the input field
    const searchQuery = this.value.toLowerCase();
    
    // Get all the list items (users) from the message list
    const userListItems = document.querySelectorAll('.message__user-list-item');
    
    // Loop through each list item and check if it matches the search query
    userListItems.forEach(function(item) {
        // Get the name and email text content of the user
        const userName = item.querySelector('.message__user-list-item-content h6').textContent.toLowerCase();
        const userEmail = item.querySelector('.message__user-list-item-content small').textContent.toLowerCase();
        
        // Check if either the name or email includes the search query
        if (userName.includes(searchQuery) || userEmail.includes(searchQuery)) {
            item.style.display = '';  // Show the item
        } else {
            item.style.display = 'none';  // Hide the item
        }
    });
});

</script>