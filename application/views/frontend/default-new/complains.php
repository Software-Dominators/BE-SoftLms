<header class="contact-header header">
    <img src="<?php echo base_url('assets/frontend/design-one/assets/images/contact/left.svg'); ?>"
        class="contact-header__left-img">
    <img src="<?php echo base_url('assets/frontend/design-one/assets/images/contact/right.svg'); ?>"
        class="contact-header__right-img">
    <div class="container">
        <div class="row justify-content-md-between">
            <div class="col-md-6  contact-header__left">
                <div class="contact-header__top d-flex">
                    <a href="<?php echo site_url(); ?>" class="">
                        <i class="fa-solid fa-house"></i>
                        <span class="home-link"><?php echo get_phrase('Home') ?></span>
                    </a>
                    <a href="#">
                        <i class="fa-solid fa-chevron-right"></i>
                        <span class="active-link"><?php echo $page_title; ?></span>
                    </a>
                </div>
                <div class="contact-header__bottom">
                    <h1><?php echo $page_title; ?></h1>
                    <p><?php echo get_phrase('Lorem ipsum dolor sit amet consectetur. Tortor iaculis eget semper cras. In tempor aliquam adipiscing ullamcorper. ') ?>
                    </p>


                </div>
            </div>

            <!-- <div class="col-md-6">
                <div class="contact-header__right text-md-end ">
                    <img loading="lazy" src="<?php echo base_url('assets/frontend/design-one/assets/images/contact/header.svg'); ?>">
                </div>
            </div> -->
        </div>
    </div>
</header>

<section class="contact">
    <div class="container">
        <div class="row justify-content-md-between justify-content-center">
            <div class="col-md-6 form col-11">
                <h2><?php echo get_phrase('Contact Us') ?></h2>
                <form action="<?php echo base_url('home/put_complains'); ?>" method="POST">
                    <div class="row">


                        <div class="form-group col-md-6">
                            <label for="first_name"><?php echo get_phrase('First Name') ?></label>
                            <input id="first_name" name="first_name" type="text" class="form-control" id="first_name"
                                placeholder="<?php echo get_phrase('First Name') ?>">

                        </div>
                        <div class="form-group col-md-6">

                            <label for="last_name"><?php echo get_phrase('Last Name') ?></label>
                            <input id="last_name" name="last_name" type="text" class="form-control"
                                placeholder="<?php echo get_phrase('Last Name') ?>">

                        </div>
                    </div>

                    <div class="form-group ">

                        <label for="first_name"><?php echo get_phrase('Email ') ?> </label>
                        <input name="email" type="text" class="form-control" id="email"
                            placeholder="<?php echo get_phrase('Email ') ?>">

                    </div>
                    <div class="form-group ">
                        <label for="phone"><?php echo get_phrase('Phone') ?></label>
                        <input name="phone" type="text" class="form-control" id="phone"
                            placeholder="<?php echo get_phrase('Phone') ?>">

                    </div>


                    <div class="form-group">
                        <label for="course"><?php echo get_phrase('Choose the course with the problem') ?></label>
                        <select class="form-control" id="course" name="course_id">
                            <option value="0" selected="" hidden>witch course</option>
                            <?php foreach ($courses_data as $course) { ?>
                                <option value="<?= $course['id'] ?>"><?= $course['title'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                    <label for="course"><?php echo get_phrase('Choose problem type') ?></label>
                        <select class="form-control" name="problem_type">
                            <?php if ($user_data['role_id'] == 1) { ?>
                                <option value="" selected="" hidden>What is the type of the problem</option>
                                <option value="sign_problem">Sign Problem</option>
                                <option value="payment_problem">Payment Problem</option>
                                <option value="general_matter">General matter</option>
                            <?php } else { ?>
                                <option value="" selected="" hidden>What is the type of the problem</option>
                                <option value="technical_problem">Technical Problem</option>
                                <option value="quiz_problem">Quiz Problem</option>
                                <option value="content_problem">Content Problem</option>
                                <option value="general_problem">General Problem</option>
                            <?php } ?>
                        </select>
                    </div>


                    <div class="form-group ">
                        <div class="mb-3">
                            <label for="address"><?php echo get_phrase('Upload Document /Photo') ?></label>
                            <input name="address" type="file" class="form-control styled-file-input" >
                        </div>
                        <div class="form-group ">
                            <label for="message"><?php echo get_phrase('Write your message') ?></label>
                            <textarea name="message" class="form-control" aria-label="With textarea" id="message"
                                placeholder="<?php echo get_phrase('Write your message'); ?>"></textarea>
                        </div>
                
                        <div class="form-group ">
                                <div class="form-check">
                                    <input name="i_agree" class="form-check-input" type="checkbox" value="1"
                                        id="i_agree">
                                    <label class="" for="i_agree">
                                        <?php echo get_phrase('I agree that my submitted data is being collected and stored.'); ?>
                                       
                                    </label>
                                </div>
                            </div>
                        <div class="form-group ">
                            <button type="submit"
                                class="btn btn-primary w-100"><?php echo get_phrase('Submit'); ?></button>
                        </div>
                    </div>
                </form>
            </div>


            <div class="col-md-5 contact__info">
                <h2> <?php echo get_phrase('Contact Information') ?></h2>
                <?php
                $contact_info = json_decode(get_frontend_settings('contact_info'), true);
                ?>
                <ul class="contact__info-list">
                    <li class="d-flex  align-items-center">
                        <i class="fa-solid fa-envelope"></i>
                        <h3 class="d-flex flex-column">
                            <p><?php echo get_phrase('Email'); ?></p>
                            <small> <?php echo nl2br($contact_info['email']); ?></small>
                        </h3>
                    </li>
                    <li class="d-flex  align-items-center">
                        <i class="fa-solid fa-phone"></i>
                        <h3 class="d-flex flex-column">
                            <p><?php echo get_phrase('Get In Touch'); ?></p>
                            <small> <?php echo nl2br($contact_info['phone']); ?></small>
                        </h3>
                    </li>
                    <li class="d-flex  align-items-center">
                        <i class="fa-solid fa-location-dot"></i>
                        <h3 class="d-flex flex-column">

                            <p><?php echo get_phrase('Our Address'); ?></p>
                            <small><?php echo nl2br($contact_info['address']); ?></small>
                        </h3>
                    </li>


                    <li class="d-flex  align-items-center">
                        <i class="fa-solid fa-clock"></i>
                        <h3 class="d-flex flex-column">

                            <p><?php echo get_phrase('Office Hours'); ?></p>
                            <small> <?php echo nl2br($contact_info['office_hours']); ?></small>
                        </h3>
                    </li>
                </ul>


            </div>

        </div>
    </div>
</section>
























