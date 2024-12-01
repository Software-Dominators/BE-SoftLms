<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body py-2">
                <h4 class="page-title"> <i class="mdi mdi-apple-keyboard-command title_icon"></i> <?php echo get_phrase('BigBlueButton Live Class Settings'); ?>
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>


<div class="row ">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <form action="<?php echo site_url('admin/zoom_live_class_settings/update'); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="account_id"><?php echo get_phrase('Zoom Account ID'); ?></label>
                        <input value="<?php echo get_settings('zoom_settings', true)['account_id'] ?? ''; ?>" type="text" class="form-control" name="account_id" id="account_id" placeholder="" required>
                    </div>

                    <div class="form-group">
                        <label for="client_id"><?php echo get_phrase('Zoom Client ID'); ?></label>
                        <input value="<?php echo get_settings('zoom_settings', true)['client_id'] ?? ''; ?>" type="text" class="form-control" name="client_id" id="client_id" placeholder="" required>
                    </div>

                    <div class="form-group">
                        <label for="client_secret"><?php echo get_phrase('Zoom Client Secret'); ?></label>
                        <input value="<?php echo get_settings('zoom_settings', true)['client_secret'] ?? ''; ?>" type="text" class="form-control" name="client_secret" id="client_secret" placeholder="" required>
                    </div>

                    <div class="form-group mt-4">
                        <button class="btn btn-success"><?php echo get_phrase('Save Changes'); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
