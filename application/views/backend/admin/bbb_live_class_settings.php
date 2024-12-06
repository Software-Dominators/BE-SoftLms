<div class="row ">
    <div class="col-xl-12">
	<div class="card card-new2">
		<div  class="card-body">
        <h4  
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('Settings'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
                 <span>    <?php echo get_phrase('BigBlueButton Live Class Settings'); ?>  </span>
               
                </h4>


      <!-- <button  type="button" onclick="save_bbb_meeting()" class=" w-15 btn-new add-btn">Edit</button> -->
   </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>


<div class="row card ">
    <div class="col-xl-12">
    	<div  style ="height:90vh ;">
    		<div class="card-body">
			<h4 class="mb-3 header-title"><?php echo get_phrase('Wasabi storage settings');?></h4>
		    	<form action="<?php echo site_url('admin/bbb_live_class_settings/update'); ?>" method="post" enctype="multipart/form-data">
		    		<div class="form-group">
		    			<label  class="label-style" for="endpoint"><?php echo get_phrase('BigBlueButton Endpoint'); ?></label>
		    			<input value="<?php echo get_settings('bbb_setting', true)['endpoint'] ?? ''; ?>" type="text" class="form-control" name="endpoint" id="endpoint" placeholder="https://manager.bigbluemeeting.com/bigbluebutton/" required>
		    		</div>

		    		<div class="form-group">
		    			<label class="label-style"  for="secret"><?php echo get_phrase('BigBlueButton Shared Secret or Salt'); ?></label>
		    			<input value="<?php echo get_settings('bbb_setting', true)['secret'] ?? ''; ?>" type="text" class="form-control" name="secret" id="secret" placeholder="shared-secretchrome-extension://mnlohknjofogcljbcknkakphddjpijak/assets/Images/icon_sound.svg-or-salt" required>
		    		</div>

					<div class="w-100 d-flex justify-content-end my-3">
						<button class="submit-btn "><?php echo get_phrase('Edit'); ?></button>
					</div>
		    	</form>
		    </div>
		</div>
	</div>
</div>