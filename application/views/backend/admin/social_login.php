<div class="row">
    <div class="col-xl-12">
        <div class="card">
        <div  class="card-body">
     
                <h4  
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('Settings'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
                 <span>    <?php echo get_phrase('social_login_configuration'); ?> </span>
               
                </h4>

</div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>

<div class="row card">
    <div class="col-xl-12">
        <div style = " height:100vh; " class="">
            <div class="card-body">
                <h4 class="header-title">  <?php echo get_phrase('Manage your social login settings'); ?> </h4>
                <?php if (strpos(site_url(), 'https') !== 0): ?>
                    <div class="alert alert-style">
                        <strong><?php echo  'SSL(https) '.get_phrase('issue'); ?> !</strong>
                        <br>
                        <?php echo get_phrase('you_must_use_an_SSL_supported_server_to_use_the_Facebook_login_feature'); ?>
                    </div>
                <?php endif; ?>

                <div class="col-xl-12">
                    <h4 class="mb-3 header-title">
                        <?php echo get_phrase('facebook_login');?>
                        <a target="_blank" href="https://developers.facebook.com/docs/development/create-an-app/"><img src="../assets/backend/images/Vector (1).svg" class="title-icon" alt=""></a>
                    </h4>

                    <form class="required-form" action="<?php echo site_url('admin/social_login_settings/update'); ?>" method="post" enctype="multipart/form-data">
                        <div class="form-group ">
                            <label  class="label-style"  for="smtp_protocol"><?php echo get_phrase('facebook_login'); ?><span class="required">*</span></label>
                            <br>
                            <input type="radio" id="fb_social_login_active" name="fb_social_login" value="1" <?php if(get_settings('fb_social_login') == 1)echo 'checked'; ?>>
                            <label  class="label-style"  for="fb_social_login_active"><?php echo get_phrase('active'); ?></label>

                            <input type="radio" id="fb_social_login_disabled" name="fb_social_login" value="0" <?php if(get_settings('fb_social_login') != 1)echo 'checked'; ?>>
                            <label   class="label-style" for="fb_social_login_disabled"><?php echo get_phrase('inactive'); ?></label>
                        </div>

                        <div class="form-group">
                            <label  class="label-style"  for="fb_app_id"><?php echo get_phrase('facebook_app_id'); ?><span class="required">*</span></label>
                            <input type="text" name = "fb_app_id" id = "fb_app_id" class="form-control" value="<?php echo get_settings('fb_app_id');  ?>" required>
                        </div>

                        <div class="form-group">
                            <label   class="label-style" for="fb_app_secret"><?php echo get_phrase('facebook_app_secret'); ?><span class="required">*</span></label>
                            <input type="text" name = "fb_app_secret" id = "fb_app_secret" class="form-control" value="<?php echo get_settings('fb_app_secret');  ?>" required>
                        </div>
                          <div class="d-flex w-100 justify-content-end mt-4">
                          <button type="button"  class="submit-btn" 
                          onclick="checkRequiredFields()"><?php echo get_phrase('save_changes'); ?></button>
                          </div>
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
