<style>
    .text-gray {
        color: #868686;
    }

    .text-18-px {
        font-size: 18px;
        text-wrap: nowrap;
    }

    .upload-btn {
        border-radius: 0 0 16px 16px;
        border: 1px solid #ccc;
        border-top: none;
        background: #FDFDFD;
    }

    .thumbnail-bg {
        background: #D6D6D6;
        border-radius: 16px 16px 0 0;
    }

    .thumbnail-and-ntn {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .orange-box {
        background-color: #F7931E;
        color: white;
        border: none;
        border-radius: 10px;
        padding: 5px 30px;
        transition: .3s;
    }

    .orange-box-ani:hover {
        opacity: 0.8;
        transform: scale(1.1);
        color: white;
        background: #F7931E;
    }

    form input {
        font-size: 18px !important;
    }
</style>

<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <h4 class="page-title"> <i class="mdi mdi-apple-keyboard-command title_icon"></i>
                    <?php echo $page_title; ?></h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="w-100 pr-30">
                <form class="row justify-content-between w-100" style="padding-left:25px;"
                    action="<?= site_url('addons/bundle/add_course_bundle'); ?>" method="post"
                    enctype="multipart/form-data">
                    <div style="width:50%;">
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <h4><?= get_phrase('bundle_add_form'); ?></h4>
                            </div>
                        </div>
                        <div class="form-group d-flex flex-column mb-3 text-18-px">
                            <label class="col-md-3 col-form-label text-gray"
                                for="bundle_title"><?php echo get_phrase('title'); ?>
                                <span class="required">*</span> </label>
                            <div class="ml-2">
                                <input type="text" class="form-control" id="bundle_title" name="title"
                                    placeholder="<?php echo get_phrase('course_bundle_title'); ?>" required>
                            </div>
                        </div>
                        <div class="form-group d-flex flex-column mb-3 text-18-px">
                            <label class="col-md-3 col-form-label text-gray"
                                for="select_bundle_courses"><?php echo get_phrase('select_courses'); ?> <span
                                    class="required">*</span> </label>
                            <div class="ml-2">
                                <?php
                                $user_id = $this->session->userdata('user_id');
                                $courses = $this->crud_model->get_courses_by_user_id($user_id)['active']->result_array();
                                ?>
                                <select name="course_ids[]" id="select_bundle_courses"
                                    onchange="current_price_of_selected_courses(this)"
                                    class="select2 form-control select2-multiple text-gray" data-toggle="select2"
                                    multiple="multiple" data-placeholder="Choose ..." required>
                                    <?php foreach ($courses as $course): ?>
                                        <option value="<?= $course['id']; ?>"><?= $course['title']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <p class="text-muted" id="current_price_of_the_courses">
                                    <?= get_phrase('current_price_of_the_courses_is') . ' ' . currency('0'); ?>
                                </p>
                            </div>
                        </div>
                        <div class="form-group d-flex flex-column
d-flex flex-column mb-3 text-18-px">
                            <label class="col-md-3 col-form-label text-gray"
                                for="price"><?php echo get_phrase('bundle_price'); ?>
                                <span class="required">*</span> </label>
                            <div class="ml-2">
                                <input type="number" class="form-control" id="price" name="price"
                                    placeholder="<?php echo get_phrase('price'); ?>" required>
                            </div>
                        </div>
                        <div class="form-group d-flex flex-column
d-flex flex-column mb-3 text-18-px">
                            <label class="col-md-3 col-form-label text-gray"
                                for="subscription_limit"><?php echo get_phrase('subscription_renew_days'); ?> <span
                                    class="required">*</span> </label>
                            <div class="ml-2">
                                <input type="number" class="form-control" id="subscription_limit"
                                    name="subscription_limit" placeholder="<?php echo get_phrase('count_day'); ?>"
                                    required>
                            </div>
                        </div>
                        <div class="form-group d-flex flex-column
d-flex flex-column mb-3 text-18-px">
                            <label class="col-md-3 col-form-label text-gray"
                                for="bundle_details"><?php echo get_phrase('bundle_details'); ?></label>
                            <div class="ml-2">
                                <textarea name="bundle_details" id="" class="form-control w-100"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="thumbnail-and-ntn">
                        <div class="form-group row mb-3"> <label class="col-md-3 col-form-label" for="banner">
                                <?php if (get_frontend_settings('theme') == 'default-new'): ?>
                                    <span class="fs-6 text-18-px"><?php echo get_phrase('Thumbnail'); ?></span> <span
                                        class="required">*</span><?php else: ?>
                                    <?php echo get_phrase('Banner'); ?>
                                <?php endif; ?> </label>
                            <label for="banner" class="">
                                <div class="thumbnail-placeholder thumbnail-bg d-flex flex-column"
                                    id="thumbnail-placeholder"
                                    style="width: 400px; height: 250px; border: 1px solid #ccc; display: flex; align-items: center; justify-content: center;">
                                    <h2 class=" text-center">Thumbnail Size<br>
                                    </h2>
                                    <h1>400X250</h1>
                                </div> <input hidden type="file" class="form-control" id="banner" name="banner"
                                    style="margin-top: 10px;" onchange="showThumbnail(this)">
                                <label for="banner" class="upload-btn w-100 p-2 text-center">
                                    <h3 style="color:#02487B;">Upload</h3>
                                </label>
                            </label>
                        </div>
                        <div class="form-group">
                            <button
                                class="radius-10 orange-box orange-box-ani float-right"><?= get_phrase('create_bundle'); ?></button>
                        </div>
                        <script> function showThumbnail(input) { var placeholder = document.getElementById('thumbnail-placeholder'); if (input.files && input.files[0]) { var reader = new FileReader(); reader.onload = function (e) { placeholder.innerHTML = '<img src="' + e.target.result + '" style="max-width: 100%; max-height: 100%;">'; }; reader.readAsDataURL(input.files[0]); } } </script>
                    </div>
                </form>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<script>
    "use strict";
    $(document).ready(function () {
        initSummerNote(['#bundle_details']);
    });
</script>
<?php include 'course_bundle_script.php'; ?>