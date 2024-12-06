<!-- start page title -->
<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
            
            <h4  
                class=" page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('coupon'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
                 <span> <?php echo $page_title; ?></span>
            
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>

<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <div class="col-lg-12">
                    <!-- <h4 class="mb-3 header-title"><?php echo get_phrase('coupon_add_form'); ?></h4> -->

                    <form class="required-form" action="<?php echo site_url('admin/coupons/add'); ?>" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                            <label for="code"><?php echo get_phrase('coupon_code'); ?><span class="required">*</span></label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="code" name="code" required>
                                <div class="input-group-append">
                                    <button type="button" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('generate_a_random_coupon_code'); ?>" onclick="generateARandomCouponCode()"><i class="mdi mdi-sync"></i> <?php echo get_phrase('generate_random'); ?></button>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="discount_percentage"><?php echo get_phrase('discount_percentage'); ?></label>
                            <div class="input-group">
                                <input type="number" name="discount_percentage" id="discount_percentage" class="form-control" value="0" min="1" max="100">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="mdi mdi-percent"></i></span>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="expiry_date"><?php echo get_phrase('expiry_date'); ?><span class="required">*</span></label>
                            <input type="text" name="expiry_date" class="form-control date" id="expiry_date" data-toggle="date-picker" data-single-date-picker="true">
                        </div>
                        <div class="d-flex justify-content-end w-100 my-3">
                        <button type="submit" class="submit-btn"><?php echo get_phrase("submit"); ?></button>
                         </div>
                       
                    </form>
                </div>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>
<script>
    function generateARandomCouponCode() {
        var randomCouponCode;
        randomCouponCode = randomString(7);
        $('#code').val(randomCouponCode);
    }

    function randomString(len) {
        var p = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        return [...Array(len)].reduce(a => a + p[~~(Math.random() * p.length)], '');
    }
</script>