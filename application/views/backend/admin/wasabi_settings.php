<div class="row ">
    <div class="col-xl-12">
    <div class="card card-new2">
		<div  class="card-body">
        <h4  
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('Settings'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
                 <span>    <?php echo get_phrase('data_center'); ?>  </span>
               
                </h4>

 
      <!-- <button  type="button" onclick="save_bbb_meeting()" class=" w-15 btn-new add-btn">Edit</button> -->

   </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<div class="row card">
    <div class="col-xl-12">
        <div style ="height:90vh ; " class="">
            <div class="card-body">
                <div class="col-lg-12">
                    <h4 class="mb-3 header-title"><?php echo get_phrase('Wasabi storage settings');?></h4>

                    <form class="required-form" action="<?php echo site_url('admin/wasabi_settings/update'); ?>" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="label-style"  for="access_key"><?php echo 'Wasabi S3 '.get_phrase('access_key'); ?><span class="required">*</span></label>
                            <input type="text" placeholder ="access-key" name = "access_key" id = "access_key" class="form-control" value="<?php echo get_settings('wasabi_key');  ?>" required>
                        </div>

                        <div class="form-group">
                            <label class="label-style"  for="secret_key"><?php echo 'Wasabi S3 '.get_phrase('secret_key'); ?><span class="required">*</span></label>
                            <input type="text" placeholder ="secret-key" name = "secret_key" id = "secret_key" class="form-control" value="<?php echo get_settings('wasabi_secret_key');  ?>" required>
                        </div>

                        <div class="form-group">
                            <label for="bucket_name"><?php echo 'Wasabi S3 '.get_phrase('bucket_name'); ?><span class="required">*</span></label>
                            <input type="text" placeholder ="bucket-name" name = "bucket_name" id = "bucket_name" class="form-control" value="<?php echo get_settings('wasabi_bucketname');  ?>" required>
                        </div>

                        <div class="form-group">
                            <label  class="label-style" for="region_name"><?php echo 'Wasabi S3 '.get_phrase('region_name'); ?><span class="required">*</span></label>
                            <input type="text"  placeholder = "region-name"name = "region_name" id = "region_name" class="form-control" value="<?php echo get_settings('wasabi_region');  ?>" required>
                        </div>
                        <div class="d-flex w-100 justify-content-end my-3">
                        <button type="submit" class="submit-btn"><?php echo get_phrase('Edit'); ?></button>
                        </div>
                      
                    </form>
                </div>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
