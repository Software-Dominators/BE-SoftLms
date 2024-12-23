<?php if (get_frontend_settings('recaptcha_status')): ?>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php endif; ?>



<header class="login-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login-header__left">
                    <h1><?php echo get_phrase('Sign Up'); ?></h1>
                    <p><?php echo get_phrase('Explore, learn, and grow with us. Enjoy a seamless and enriching educational journey. Lets begin!') ?>
                    </p>
                </div>
            </div>

            <div class="col-lg-6 text-lg-end  px-0 text-center">
                <div class="login-header__right ">
                    <img src="<?= site_url('assets/frontend/design-one/assets/images/auth/auth.svg') ?>" alt="login">
                </div>
            </div>
        </div>

    </div>

</header>



<section class="login">
    <div class="container">
        <div class="row  ">
            <div class="col-lg-6 ">
                <div class=" login__form">
                    <form action="<?php echo site_url('login/register') ?>" method="post" enctype="multipart/form-data">

                        <!-- first name -->
                        <div class="form-group">
                            <label for="email"><?php echo get_phrase('First Name'); ?></label>
                            <input class="form-control" id="first_name" type="text" name="first_name"
                                placeholder="<?php echo get_phrase('Enter your first name'); ?>" required>
                        </div>
                        <!-- last name -->
                        <div class="form-group">
                            <label for="email"><?php echo get_phrase('Last Name'); ?></label>
                            <input class="form-control" id="last_name" type="text" name="last_name"
                                placeholder="<?php echo get_phrase('Enter your last name'); ?>" required>
                        </div>


                        <!-- email -->
                        <div class="form-group">
                            <label for="email"><?php echo get_phrase('Your email'); ?></label>
                            <input class="form-control" id="email" type="email" name="email"
                                placeholder="<?php echo get_phrase('Enter your email'); ?>" required>
                        </div>


                        <!-- password -->
                        <div class="form-group">
                            <label for="password"><?php echo get_phrase('Password') ?></label>
                            <input class="form-control" id="password" type="password" name="password"
                                placeholder="<?php echo get_phrase('Enter your valid password'); ?>" required>
                        </div>
<!-- ################################################################### -->



<?php if (get_settings('allow_instructor')): ?>
                            <div class="form-group login__checkbox-group d-flex align-items-center">
                                <input class="login__checkbox" id="instructor" type="checkbox" onchange="$('#become-instructor-fields').toggle()"
                                    name="instructor" value="yes" <?php echo isset($_GET['instructor']) ? 'checked' : ''; ?>>
                                <label for="instructor"><?php echo get_phrase('Apply to Become an '); ?>
                                <small><?php echo get_phrase(' instructor'); ?></small>
                            
                            </label>
                                
                            </div>

                            <div id="become-instructor-fields"
                                class="<?php echo isset($_GET['instructor']) ? '' : 'd-hidden'; ?>">
                                <div class="form-group login__phone-group">
                                    <label for="phone"><?php echo get_phrase('Phone'); ?></label>
                                
                                        <input class="form-control" id="phone" type="phone" name="phone"
                                            placeholder="<?php echo get_phrase('Enter your phone number'); ?>">
                                   
                                </div>

                               

                                
                              <div class="form-group  login__file-group">
                                    <label for="document"  ><?php echo get_phrase('Document'); ?> <small>(doc, docs, pdf, txt, png, jpg,jpeg)</small></label>
                                        <input class="form-control" id="document" type="file" name="document">
                                        <small><?php echo get_phrase('Provide some documents about your qualifications'); ?></small>
                                    
                                </div>
                              <div class="form-group login__textarea-group">
                                    <label for="message"><?php echo get_phrase('message'); ?></label>
                                  
                                        <textarea class="form-control" name="message"></textarea>
                                    
                                </div>
                            </div>
                        <?php endif; ?>

<!-- ######################################################### -->



                      

                        <?php if (get_frontend_settings('recaptcha_status')): ?>
                            <div class="g-recaptcha"
                                data-sitekey="<?php echo get_frontend_settings('recaptcha_sitekey'); ?>"></div>
                        <?php endif; ?>

                        <div class="form-group">
                            <button type="submit" class="w-100">
                                <?php echo get_phrase('Sign Up') ?>
                            </button>
                        </div>

                    </form>
                    <div class="login__have-account  d-flex align-items-center justify-content-center">
                        <p> <?php echo get_phrase('Already you have an account?') ?> </p>
                        <a href="<?php echo site_url('login') ?>"><?php echo get_phrase('Log In') ?></a>

                        <p>
                    </div>


                    <h5 class="login__line"><?php echo get_phrase('Or') ?></h5>

                    <div class="social-media">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <!-- <button type="button" class="btn btn-primary"><a href="#"><img loading="lazy" src="image/facebook.png"> Facebook</a></button> -->
                                <?php if (get_settings('fb_social_login'))
                                    include "facebook_login.php"; ?>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>
</section>

