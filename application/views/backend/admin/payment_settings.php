<?php

?>
<style>
    .btn{
	width: auto;
	padding:7.5px 38px;
}
h3 , h4 , p {
    font-family : var(--main-font--) !important;
}
</style>
<!-- start page title -->
<div class="row ">
    <div class="col-xl-12">
        <div class="card card-new2">
            <div class="card-body"> 

            <h4  
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('Settings'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
                 <span>  <?=get_phrase('setup_payment_information'); ?>  </span>
                
                </h4>

                <!-- <button  type="button" onclick="save_bbb_meeting()" class=" w-15 btn-new add-btn">Edit</button> -->
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>


<!-- System Currency Settings -->

<div class="card">
    <div class="card-body">
        <h4 class="header-title mt-2">
            <p><?php echo get_phrase('system_currency_settings'); ?></p>
        </h4>
        <form  action="<?php echo site_url('admin/payment_settings/system_currency'); ?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="label-style"><?php echo get_phrase('system_currency'); ?></label>
                <select class="form-control select2" data-toggle="select2" id="system_currency" name="system_currency" required>
                    <option value=""><?php echo get_phrase('select_system_currency'); ?></option>
                    <?php
                    $currencies = $this->crud_model->get_currencies();
                    foreach ($currencies as $currency): ?>
                        <option value="<?php echo $currency['code']; ?>"
                            <?php if (get_settings('system_currency') == $currency['code']) {
                                echo 'selected';
                            }
                            ?>> <?php echo $currency['code']; ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <label class="label-style"><?php echo get_phrase('currency_position'); ?></label>
                <select class="form-control select2" data-toggle="select2" id="currency_position" name="currency_position" required>
                    <option value="left" <?php if (get_settings('currency_position') == 'left') {
                                                echo 'selected';
                                            }
                                            ?>><?php echo get_phrase('left'); ?></option>
                    <option value="right" <?php if (get_settings('currency_position') == 'right') {
                                                echo 'selected';
                                            }
                                            ?>><?php echo get_phrase('right'); ?></option>
                    <option value="left-space" <?php if (get_settings('currency_position') == 'left-space') {
                                                    echo 'selected';
                                                }
                                                ?>><?php echo get_phrase('left_with_a_space'); ?></option>
                    <option value="right-space" <?php if (get_settings('currency_position') == 'right-space') {
                                                    echo 'selected';
                                                }
                                                ?>><?php echo get_phrase('right_with_a_space'); ?></option>
                </select>
            </div>


            <div class=" text-right w-100 mb-3">
                <button class="submit-btn btn" type="submit"><?php echo get_phrase('update_system_currency'); ?></button>
            </div>

        </form>
    </div>
</div>




<?php foreach ($payment_gateways as $payment_gateway): ?>
    <!-- if is addon and deactivate -->
    <?php if ($payment_gateway['is_addon'] && !addon_status($payment_gateway['identifier']) || $payment_gateway['identifier'] == 'offline_payment') {
        continue;
    }
    ?>

    <div class="card">
        <div class="card-body">

            <h4 class="header-title mt-2">
                <p><?php echo $payment_gateway['title'] ?> <?php echo get_phrase('settings'); ?></p>
            </h4>
            <form class="" action="<?php echo site_url('admin/payment_settings'); ?>" method="post" enctype="multipart/form-data">

                <input type="hidden" name="identifier" value="<?php echo $payment_gateway['identifier']; ?>">

                <div class="form-group">
                    <label class="label-style"><?php echo get_phrase('active'); ?></label>
                    <select class="form-control select2" data-toggle="select2" name="status">
                        <option value="0" <?php if ($payment_gateway['status'] != 1) {
                                                echo 'selected';
                                            }
                                            ?>> <?php echo get_phrase('no'); ?></option>
                        <option value="1" <?php if ($payment_gateway['status'] == 1) {
                                                echo 'selected';
                                            }
                                            ?>> <?php echo get_phrase('yes'); ?></option>
                    </select>
                </div>

                <div class="form-group">
                    <label class="label-style"><?php echo get_phrase('want_to_keep_test_mode_enabled'); ?>?</label>
                    <select class="form-control select2" data-toggle="select2" name="enabled_test_mode">
                        <option value="0" <?php if ($payment_gateway['enabled_test_mode'] != 1) {
                                                echo 'selected';
                                            }
                                            ?>> <?php echo get_phrase('no'); ?></option>
                        <option value="1" <?php if ($payment_gateway['enabled_test_mode'] == 1) {
                                                echo 'selected';
                                            }
                                            ?>> <?php echo get_phrase('yes'); ?></option>
                    </select>
                </div>

                <div class="form-group">
                    <label class="label-style"><?php echo get_phrase('select_currency'); ?></label>
                    <select class="form-control select2" data-toggle="select2" name="currency" required>
                        <option value=""><?php echo get_phrase('select_currency'); ?></option>
                        <?php
                        $currencies = $this->crud_model->get_currencies();
                        foreach ($currencies as $currency): ?>
                            <option value="<?php echo $currency['code']; ?>" <?php if ($payment_gateway['currency'] == $currency['code']) {
                                                                                    echo 'selected';
                                                                                }
                                                                                ?>>
                                <?php echo $currency['code']; ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>


                <?php foreach (json_decode($payment_gateway['keys'], true) as $key => $value): ?>
                    <?php if ($key == 'theme_color'): ?>
                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase($key); ?></label>
                            <input type="color" value="#F7931E" name="<?php echo $key; ?>" class="form-control" value="<?php echo $value; ?>" required />
                        </div>
                    <?php else: ?>
                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase($key); ?></label>
                            <input type="text" name="<?php echo $key; ?>" class="form-control" value="<?php echo $value; ?>" required />
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>


                <div class=" text-right w-100 mb-3">
                    <br> <button class=" submit-btn btn" type="submit"><?php echo get_phrase('update'); ?> <?php echo $payment_gateway['title']; ?> <?php echo get_phrase('settings'); ?></button>
                </div>

            </form>
        </div>
    </div>

<?php endforeach; ?>