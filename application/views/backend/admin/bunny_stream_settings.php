<?php
    $bunny_stream_settings = get_settings('bunny_stream_settings', true) ?? [];
?>
<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <h4 class="page-title"> <i class="mdi mdi-apple-keyboard-command title_icon"></i> <?php echo get_phrase('Bunny stream settings'); ?></h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>

<div class="row">
    <div class="col-xl-7">
        <div class="card">
            <div class="card-body">
                <div class="col-lg-12">
                    <h4 class="mb-3 header-title"><?php echo get_phrase('Bunny stream settings');?></h4>

                    <form class="required-form" action="<?php echo site_url('admin/bunny_stream_settings/update'); ?>" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="hostname"><?= get_phrase('Bunny Hostname'); ?><span class="required">*</span></label>
                            <input type="text" name = "hostname" id = "hostname" class="form-control" value="<?php echo $bunny_stream_settings['hostname'] ?? '';  ?>" required>
                        </div>

                        <div class="form-group">
                            <label for="library_id"><?= get_phrase('Bunny Library ID'); ?><span class="required">*</span></label>
                            <input type="text" name = "library_id" id = "library_id" class="form-control" value="<?php echo $bunny_stream_settings['library_id'] ?? '';  ?>" required>
                        </div>

                        <div class="form-group">
                            <label for="api_key"><?= get_phrase('Bunny API Key'); ?><span class="required">*</span></label>
                            <input type="text" name = "api_key" id = "api_key" class="form-control" value="<?php echo $bunny_stream_settings['api_key'] ?? '';  ?>" required>
                        </div>

                        <button type="submit" class="btn btn-primary"><?php echo get_phrase('save'); ?></button>
                    </form>
                </div>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
