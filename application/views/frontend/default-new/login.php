<?php if (get_frontend_settings('recaptcha_status')): ?>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php endif; ?>

<header class="login-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login-header__left">
                    <h1><?php echo get_phrase('Log In'); ?></h1>
                    <p><?php echo get_phrase('Explore, learn, and grow with us. Enjoy a seamless and enriching educational journey. Lets begin!') ?>
                    </p>
                </div>
            </div>

            <div class="col-lg-6 text-lg-end  px-0 text-center">
                <div class="login-header__right ">
                    <img src="<?= site_url('assets/frontend/design-one/assets/images/footer-pages-imgs/auth.svg') ?>" alt="login">
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
                    <form action="<?php echo site_url('login/validate_login') ?>" method="post">

                        <div class="form-group">
                            <label for="email"><?php echo get_phrase('Your email'); ?></label>
                            <input class="form-control" id="email" type="email" name="email"
                                placeholder="<?php echo get_phrase('Enter your email'); ?>">

                            <?php
                            $form_errors = $this->session->flashdata('form_errors');
                            if ($form_errors && isset($form_errors['email'])): ?>
                                <div class="login__form-error">
                                    <i class="fa-solid fa-circle-exclamation"></i>
                                    <small class="text-danger "><?php echo strip_tags($form_errors['email']); ?></small>
                                </div>
                            <?php endif; ?>

                        </div>
                        <div class="form-group">
                            <label for="password"><?php echo get_phrase('Password') ?></label>
                            <div class="position-relative">
                          
    <input class="form-control" id="password" type="password" name="password"
           placeholder="<?php echo get_phrase('Enter your valid password'); ?>" />
    <i class="fa-solid fa-eye-slash position-absolute top-50 translate-middle-y"    onclick="if($('#password').attr('type') == 'text'){$('#password').attr('type', 'password');}else{$('#password').attr('type', 'text');} $(this).toggleClass('fa-eye'); $(this).toggleClass('fa-eye-slash') "
       id="togglePassword"></i>
</div>


                            <?php $form_errors = $this->session->flashdata('form_errors');
                            if ($form_errors && isset($form_errors['password'])): ?>
                                <div class="login__form-error">
                                    <i class="fa-solid fa-circle-exclamation"></i>
                                    <small class="text-danger"><?php echo strip_tags($form_errors['password']); ?></small>
                                </div>
                            <?php endif; ?>

                            <div class="login__forget-password text-end">
                                <i class="fa-solid fa-circle-exclamation"></i>
                                <a
                                    href="<?php echo site_url('login/forgot_password_request'); ?>"><?php echo get_phrase('Forgot password?'); ?></a>
                            </div>
                        </div>

              




                        <div class="form-group">
                            <?php if (get_frontend_settings('recaptcha_status')): ?>
                                <div class="g-recaptcha"
                                    data-sitekey="<?php echo get_frontend_settings('recaptcha_sitekey'); ?>">
                                </div>
                            <?php endif; ?>
                        </div>

                        <div class="form-group">

                            <button type="submit" class="w-100">
                                <?php echo get_phrase('Log in') ?>
                            </button>
                        </div>



                    </form>
                    <div class="login__have-account  d-flex align-items-center justify-content-center">
                        <p><?php echo get_phrase('Don`t have an account?') ?> </p>
                        <a href="<?php echo site_url('sign_up') ?>"><?php echo get_phrase('Sign up') ?></a>


                    </div>


                    <h5 class="login__line"><?php echo get_phrase('Or') ?></h5>

                    <div class="social-media ">

                        <!-- <button type="button" class="btn btn-primary"><a href="#"><img loading="lazy" src="image/facebook.png"> Facebook</a></button> -->
                        <?php if (get_settings('fb_social_login'))
                            include "facebook_login.php"; ?>


                    </div>
                </div>

            </div>


        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
  $(document).ready(function() {
    // Ensure the document is fully loaded before running the script
    $('#togglePassword').on('click', function() {
        var password = $('#password');
        var icon = $(this);

        // Toggle the password visibility
        if (password.attr('type') === 'password') {
            password.attr('type', 'text');  // Show the password
            icon.removeClass('fa-eye-slash').addClass('fa-eye');  // Change icon to eye
        } else {
            password.attr('type', 'password');  // Hide the password
            icon.removeClass('fa-eye').addClass('fa-eye-slash');  // Change icon to eye-slash
        }
    });
});

</script>