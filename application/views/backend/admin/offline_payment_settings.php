<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
    

                <h4
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('offline_payments'); ?>
                 <i class="fa-solid fa-angle-right"></i>
                 <span>  <?php echo $page_title; ?> </span>
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<div class="off-pay-settings" style = "100vh">
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<form action="<?php echo site_url('addons/offline_payment/settings/save'); ?>" enctype="multipart/form-data" method="post">
					<div class="form-group">
	                    <label for="bank_information"><?php echo get_phrase('enter_your_bank_information'); ?></label>
	                    <textarea name="bank_information" id = "bank_information" class="form-control" rows="5"><?php echo htmlspecialchars_decode(get_settings('offline_bank_information')); ?></textarea>
	                </div>

                    <div class="form-group ">
                        <label class=" col-form-label" for="offline_payment_image"><?php echo get_phrase('offline_payment_image'); ?></label>
                        <div class="">
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="offline_payment_image" name="offline_payment_image" onchange="changeTitleOfImageUploader(this)">
                                    <label class="custom-file-label" for="offline_payment_image"><?php echo get_phrase('choose_offline_payment_image'); ?></label>
                                </div>
                            </div>
                        </div>
                    </div>

	                <div class="action-btn my-3 d-flex justify-content-end w-100">
	                	<button class="submit-btn"><?php echo get_phrase('Submit'); ?></button>
	                </div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>


<script type="text/javascript">
  $(document).ready(function () {
  });
</script>