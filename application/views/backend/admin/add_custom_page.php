<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body py-2">
			<h4 class=" header-style page-title">
				 <i style=" color: #232F43;font-size: 27px  ; margin-inline-end:16px;" class="dripicons-view-apps"></i>
				 <?php echo get_phrase('Settings'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
				 <span>   <?php echo get_phrase('add_your_new_page'); ?> </span>
				
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<div style="min-height:100vh;">
<div class="row  card">
    <div class="col-md-12">
    	<div class="">
    		<div class="card-body">
    			<h4 class='mb-3'><?php echo get_phrase('page_information'); ?></h4>
		    	<form action="<?php echo site_url('admin/custom_page/add'); ?>" method="post" enctype="multipart/form-data">
		    		<div class="form-group">
		    			<label class ="label-style" for="page_title"><?php echo get_phrase('page_title'); ?></label>
		    			<input type="text" class="form-control input-style2" name="page_title" id="page_title" placeholder="<?php echo get_phrase('enter_page_title'); ?>" required>
		    		</div>

		    		<div class="form-group">
		    			<label   class ="label-style" for="summernote-basic"><?php echo get_phrase('page_content'); ?></label>
		    			<textarea class="textarea-style2 form-control" name="page_content" id="summernote-basic"></textarea>
		    		</div>

		    		<div class="form-group">
			    		<label   class ="label-style" for="button_title"><?php echo get_phrase('button_title'); ?></label>
			    		<input class="form-control input-style2" type="text" id="button_title" name="button_title">
			    	</div>

		    		<div class="form-group">
		    			<label  class ="label-style"  for="button_position"><?php echo get_phrase('button_position'); ?></label>
		    			<select class="form-control select2 input-style " data-toggle="select2" name="button_position" id="button_position" required>
		    				<option value="footer"><?php echo get_phrase('footer'); ?></option>
		    				<option value="header"><?php echo get_phrase('header'); ?></option>
		    			</select>
		    		</div>

		    		<div class="form-group">
			    		<label  class ="label-style"   class ="label-style"  for="page_url"><?php echo get_phrase('page_url'); ?></label>
			    		<div class="input-group">
			    			<div class="input-group-prepend">
			    				<span class="input-group-text"><?php echo site_url('page/'); ?></span>
			    			</div>
			    			<input class="form-control" type="text" id="page_url" name="page_url">
			    		</div>
			    	</div>

					<div class=" style-setting d-flex justify-content-end w-100 my-3">
						<button class="submit-btn"><?php echo get_phrase('add_page'); ?></button>
					</div>
		    	</form>
		    </div>
		</div>
	</div>
</div>
</div>

