


<header class="wrapper">



  <div class="container-fluid ">
    <div class="row">
      <div class="col-md-6 order-2 order-lg-1">
     
       <div class="wrapper_left">
       
         <?php
         $banner_title = site_phrase(get_frontend_settings('banner_title'));
         $banner_title_arr = explode(' ', $banner_title);
         ?>
         <h1>
           <?php
           foreach ($banner_title_arr as $key => $value) {
             if ($key == count($banner_title_arr) - 1) {
               echo '<span class="d-inline-block">' . $value . '</span>';
             } else {
               echo $value . ' ';
             }
           }
           ?>
         </h1>
         <p>
           <?php echo site_phrase(get_frontend_settings('banner_sub_title')); ?>
         </p>

         <form action="<?php echo site_url('home/search'); ?>" method="get">
           <input class="form-control" type="text" placeholder="<?php echo get_phrase('What do you want to learn'); ?>"
             name="query">
           <button type="submit">
             Search
           </button>
           <i class="fa-solid fa-magnifying-glass"></i>
         </form>
       </div>
    
      </div>

      <div class="col-md-6 order-1 order-lg-2">
        <div class="wrapper_right">
              <img  src="<?= base_url('assets/frontend/design-one/assets/images/home/header.svg') ?>" class="w-100">
       
            </div>
          </div>

    </div>
  </div>

</header>





<section class="banner d-flex align-items-center">
    <div class="container">
        <div class="row ">
            <div class="col-md-4">
                <div class="banner__content d-flex ">
                    <img src="<?= base_url('assets/frontend/design-one/assets/images/home/1.svg'); ?>"
                        class="banner_image">
                    <div class="banner__text">
                        <h6><?php echo site_phrase('expert_instruction'); ?></h6>
                        <p><?php echo site_phrase('find_the_right_course_for_you'); ?></p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="banner__content d-flex ">
                    <img src="<?= base_url('assets/frontend/design-one/assets/images/home/2.svg'); ?>"
                        class="banner_image">
                    <div class="banner__text">
                        <h6><?php
                        $status_wise_courses = $this->crud_model->get_status_wise_courses_front();
                        $number_of_courses = $status_wise_courses['active']->num_rows();
                        echo $number_of_courses . ' ' . site_phrase('online_courses'); ?></h6>
                        <p><?php echo site_phrase('explore_a_variety_of_fresh_topics'); ?></p>
                    </div>
                </div>
            </div>


            <div class="col-md-4">
                <div class="banner__content d-flex ">
                    <img src="<?= base_url('assets/frontend/design-one/assets/images/home/3.svg'); ?>"
                        class="banner_image">
                    <div class="banner__text">
                        <h6><?php echo site_phrase('Lifetime access'); ?></h6>
                        <p><?php echo site_phrase('learn_on_your_schedule'); ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!---------- Banner Section End ---------------->


<?php if (get_frontend_settings('top_course_section') == 1): ?>


    <?php include_once('includes/top-courses.php'); ?>

<?php endif; ?>

<?php if (get_frontend_settings('top_category_section') == 1): ?>
    <!---------- Top Categories Start ------------->
<section class="top-category">
    <div class="container">
        <div class="row ">

            <header class="top-header-section">
                <h2>
                    <span>
                        <?php echo site_phrase('top'); ?>
                    </span>
                    <?php echo site_phrase('categories'); ?>
                </h2>
                <?php echo site_phrase('These_are_the_most_popular_courses_among_Listen_Courses_learners_worldwide') ?>
            </header>
            <?php $top_10_categories = $this->crud_model->get_top_categories(12, 'sub_category_id'); ?>
            <?php foreach ($top_10_categories as $top_10_category): ?>
            <?php $category_details = $this->crud_model->get_category_details_by_id($top_10_category['sub_category_id'])->row_array(); ?>
            <div class="col-lg-3 col-md-4 col-sm-6 text-center p-0 ">
                <a class="top-category__content"
                    href="<?php echo site_url('home/courses?category=' . $category_details['slug']); ?>">
                    <img class="top-category__image"
                        src="<?php echo base_url('uploads/thumbnails/category_thumbnails/' . $category_details['sub_category_thumbnail']); ?>"
                        class="w-100 h-100">
                    <h3 class="top-category__title">
                        <?php echo $category_details['name']; ?>
                    </h3>
                    <p class="top-category__number">
                        <?php echo $top_10_category['course_number'] . ' ' . site_phrase('courses'); ?>
                    </p>
                </a>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>

<!---------- Top Categories end ------------->
<?php endif; ?>




<?php if (get_frontend_settings('top_instructor_section') == 1): ?>
<!---------  Expert Instructor Start ---------------->
    <?php $top_instructor_ids = $this->crud_model->get_top_instructor(10); ?>
    <?php if (count($top_instructor_ids) > 0): ?>
        <section class="top-instructor">
            <div class="container">


                <header class="top-header-section">
                    <h2>
                        <span>
                            <?php echo site_phrase('our_expert'); ?>
                        </span>
                        <?php echo site_phrase('instructor') ?>
                    </h2>
                    <p>
                        <?php echo get_phrase('They efficiently serve large number of students on our platform') ?>
                    </p>
                </header>




                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->

                        <?php foreach ($top_instructor_ids as $top_instructor_id):

                            $top_instructor = $this->user_model->get_all_user($top_instructor_id['creator'])->row_array();

                            ?>
                            <div class="swiper-slide">
                                <div class="top-instructor__content">

                                    <img src="<?php echo $this->user_model->get_user_image_url($top_instructor['id']); ?>"
                                        class="w-100 top-instructor__image">

                                    <div class="top-instructor__info">
                                        <h3><?php echo $top_instructor['first_name'] . ' ' . $top_instructor['last_name']; ?>
                                        </h3>
                                        <a href="<?php echo site_url('home/instructor_page/' . $top_instructor['id']); ?>">view
                                            profile
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>

                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>

                    <!-- If we need scrollbar -->
                    <div class="swiper-scrollbar"></div>
                </div>


            </div>

        </section>
    <?php endif; ?>
<?php endif; ?>









<?php if (get_frontend_settings('blog_visibility_on_the_home_page') == 1): ?>
    <!------------- Blog Section Start ------------>
    <?php $latest_blogs = $this->crud_model->get_latest_blogs(3); ?>
    <?php if ($latest_blogs->num_rows() > 0): ?>
        <section class="latest-blog">
            <div class="container">
                <header class="top-header-section">
                    <h2>
                        <span><?php echo site_phrase('Our'); ?></span>
                        <?php echo site_phrase('Blog'); ?>
                    </h2>
                    <p><?php echo site_phrase('Visit our valuable articles to get more information.') ?></p>
                </header>
                <div class="swiper-blog">
                    <!-- Swiper Wrapper -->
                    <div class="swiper-wrapper">
                        <?php foreach ($latest_blogs->result_array() as $latest_blog):
                            $user_details = $this->user_model->get_all_user($latest_blog['user_id'])->row_array();
                            $blog_category = $this->crud_model->get_blog_categories($latest_blog['blog_category_id'])->row_array();
                            $blog_thumbnail = 'uploads/blog/thumbnail/' . $latest_blog['thumbnail'];
                            if (!file_exists($blog_thumbnail) || !is_file($blog_thumbnail)) {
                                $blog_thumbnail = base_url('uploads/blog/thumbnail/placeholder.png');
                            }
                            ?>
                            <div class="swiper-slide latest-blog__content">

                                <img src="<?php echo $blog_thumbnail; ?>" class="latest-blog__image m-auto">
                                <div class="latest-blog__top d-flex justify-content-between align-items-center">
                                    <span><?php echo get_past_time($latest_blog['added_date']); ?></span>
                                    <small class="btn btn-secondary"><?php echo $blog_category['title']; ?></small>
                                </div>
                                <div class="latest-blog__middle">
                                    <h3><?php echo $latest_blog['title']; ?></h3>
                                    <p><?php echo ellipsis(strip_tags(htmlspecialchars_decode_($latest_blog['description'])), 100); ?>
                                    </p>
                                </div>
                                <div class="latest-blog__bottom d-flex justify-content-between align-items-center">
                                    <div class="latest-blog__creator">
                                        <img src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>">
                                        <h5><?php echo $user_details['first_name'] . ' ' . $user_details['last_name']; ?>
                                        </h5>
                                    </div>
                                    <a href="<?php echo site_url('blog/details/' . slugify($latest_blog['title']) . '/' . $latest_blog['blog_id']); ?>"
                                        class="latest-blog__read-more">
                                        <span>read more</span>
                                        <i class="fas fa-arrow-right"></i>
                                    </a>
                                </div>

                            </div>
                        <?php endforeach; ?>
                    </div>

                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>

                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev bg-info"> ttt</div>
                    <div class="swiper-button-next">ttt</div>

                    <!-- If we need scrollbar -->
                    <div class="swiper-scrollbar"></div>
                </div>
            </div>
        </section>

    <?php endif; ?>
<?php endif; ?>



<?php if (get_frontend_settings('promotional_section') == 1): ?>
    <section class="join">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-6 <?php if (get_settings('allow_instructor') != 1)
                    echo 'w-100'; ?> ">
                    <img src="<?= base_url('assets/frontend/design-one/assets/images/home/circle-girl.svg') ?>"
                        class="circle-girl">
                    <div class="join__content join__content-left  d-flex ">

                        <div class="join__text ">
                            <h2>
                                <?php echo site_phrase('join_now_to_start_learning'); ?>
                            </h2>
                            <p><?php echo site_phrase('join_now_to_start_learning'); ?></p>

                            <a class="btn btn-white "
                                href="<?php echo site_url('sign_up'); ?>"><?php echo site_phrase('get_started'); ?></a>


                        </div>
                        <div class="join__image ">
                            <img src="<?= base_url('assets/frontend/design-one/assets/images/home/girl.svg') ?>"
                                class="w-100">

                        </div>

                    </div>
                </div>

                <?php if (get_settings('allow_instructor') == 1): ?>
                    <div class="col-lg-6 ">
                        <img src="<?= base_url('assets/frontend/design-one/assets/images/home/circle-boy.svg') ?>"
                            class="circle-boy">
                        <div class="join__content join__content-right  d-flex gap-0">

                            <div class="join__text ">
                                <h2>
                                    <?php echo site_phrase('become_a_new_instructor'); ?>
                                </h2>
                                <p><?php echo site_phrase('Teach_thousands_of_students_and_earn_money!') ?> ?></p>
                                <?php if ($this->session->userdata('user_id')): ?>
                                    <a class="btn btn-white"
                                        href="<?php echo site_url('user/become_an_instructor'); ?>"><?php echo site_phrase('join_now'); ?></a>
                                <?php else: ?>
                                    <a class="btn btn-white m-auto"
                                        href="<?php echo site_url('sign_up?instructor=yes'); ?>"><?php echo site_phrase('join_now'); ?></a>
                                <?php endif; ?>
                            </div>
                            <div class="join__image">
                                <img src="<?= base_url('assets/frontend/design-one/assets/images/home/boy.svg') ?>"
                                    class="w-100">

                            </div>

                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </section><?php endif; ?>


<!------------- Become Students Section End --------->

<div class="py-4 w-100"></div>