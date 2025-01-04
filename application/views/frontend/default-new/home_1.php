<!-- <style>
    .eImage span {
        width: auto !important;
    }
    .course-item-one .content .title {
        display: -webkit-box!important;
        -webkit-line-clamp: 1;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: normal
    }
</style> -->
<!---------- Banner Section Start ---------------->
<header class="wrapper home-hero ">

<img  src="<?= base_url('assets/frontend/design-one/assets/images/home/circles.png') ?>" class=" circles">

  <div class="container ">
    <div class="row align-items-center justify-content-between">
      <div class="col-md-5 order-2 order-lg-1 ">
     
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

      <div class="col-md-7 order-1 order-lg-2 ">
        <div class="wrapper_right">
              <img  src="<?= base_url('assets/frontend/design-one/assets/images/home/header.svg') ?>" class="">
       
            </div>
          </div>

    </div>
  </div>

</header>
<!-- <section class="h-1-banner bannar-area pb-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12 order-2 order-lg-1">
                <div class="h-1-banner-text EbannerLeft position-relative">
                    <?php
                        $banner_title = site_phrase(get_frontend_settings('banner_title'));
                        $banner_title_arr = explode(' ', $banner_title);
                    ?>
                    <h1 class="wow animate__animated  animate__fadeIn" data-wow-duration="1000" data-wow-delay="200">
                        <?php
                        foreach($banner_title_arr as $key => $value){
                            if($key == count($banner_title_arr) - 1){
                                echo '<span class="d-inline-block">'.$value.'</span>';
                            }else{
                                echo $value.' ';
                            }
                        }
                        ?>
                    </h1>


                    <div class="EbannerTop wow animate__animated  animate__fadeInUp opacityOnUp" data-wow-duration="1000" data-wow-delay="200">
                       <p><?php echo site_phrase(get_frontend_settings('banner_sub_title')); ?></p>
                       <div class="search-option mb-0">
                            <form action="<?php echo site_url('home/search'); ?>" method="get">
                                <input class="form-control" type="text" placeholder="<?php echo get_phrase('What do you want to learn'); ?>" name="query">
                                <button class="submit-cls" type="submit">
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M9.58439 17.5017C13.9566 17.5017 17.5011 13.9573 17.5011 9.585C17.5011 5.21275 13.9566 1.66833 9.58439 1.66833C5.21214 1.66833 1.66772 5.21275 1.66772 9.585C1.66772 13.9573 5.21214 17.5017 9.58439 17.5017Z" stroke="#1E293B" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M17.892 18.7769C18.1361 19.021 18.5318 19.021 18.7759 18.7769C19.02 18.5328 19.02 18.1371 18.7759 17.893L17.892 18.7769ZM16.2759 15.393L15.834 14.9511L14.9501 15.835L15.392 16.2769L16.2759 15.393ZM18.7759 17.893L16.2759 15.393L15.392 16.2769L17.892 18.7769L18.7759 17.893Z" fill="#1E293B"/>
                                    </svg>
                                    </button>
                            </form>
                        </div>
                    </div>

                   <div class="eCircle_parent">
                       <div class="eCircle wow animate__animated  animate__fadeInRightBig" data-wow-duration="1000" data-wow-delay="300">
                            <span class="circleOne"><img src="<?php echo base_url("assets/frontend/default-new/image/circle1.png"); ?>" alt=""></span>
                            <span class="cirlceTwo"><img src="<?php echo base_url("assets/frontend/default-new/image/circle2.png"); ?>" alt=""></span>
                        </div>
                   </div>

                </div>


            </div>


            <div class="col-lg-12 col-md-12 col-sm-12 col-12 order-md-2 order-1  order-lg-1 pt-0 pt-md-5 ">
                 <div class="EbannerRight">
                    <div class="Ebanner wow animate__animated  animate__fadeIn" data-wow-duration="1000" data-wow-delay="400">
                       <img loading="lazy" width="100%" src="<?php echo base_url("uploads/system/" . get_current_banner('banner_image')); ?>">
                    </div>
                 </div>
            </div>
        </div>
        <div class="bannar-card  Ebaner-card wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="500" data-wow-delay="400">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 arrow-side">
                    <div class="banner-card-1">
                        <div class="row">
                            <div class="col-lg-2">
                                <img src="<?php echo base_url('assets/frontend/default-new/image/h1.svg')?>">
                            </div>
                            <div class="col-lg-10">
                                <h6><?php echo site_phrase('expert_instruction'); ?></h6>
                                <p><?php echo site_phrase('find_the_right_course_for_you'); ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 arrow-side">
                    <div class="banner-card-1">
                        <div class="row">
                            <div class="col-lg-2">
                               <img loading="lazy" src="<?php echo base_url('assets/frontend/default-new/image/h2.svg')?>">
                            </div>

                            <div class="col-lg-10">
                                <h6><?php
                                    $status_wise_courses = $this->crud_model->get_status_wise_courses_front();
                                    $number_of_courses = $status_wise_courses['active']->num_rows();
                                    echo $number_of_courses . ' ' . site_phrase('online_courses'); ?></h6>
                                <p><?php echo site_phrase('explore_a_variety_of_fresh_topics'); ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 arrow-side">
                    <div class="banner-card-1">
                        <div class="row">
                            <div class="col-lg-2">
                            <img loading="lazy" src="<?php echo base_url('assets/frontend/default-new/image/h3.svg')?>">
                            </div>
                            <div class="col-lg-10">
                                <h6><?php echo site_phrase('Lifetime access'); ?></h6>
                                <p><?php echo site_phrase('learn_on_your_schedule'); ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!---------- Banner Section End ---------------->
<section class="banner  ">
    <div class="container">
        <div class="row  justify-content-between ">
            <div class="col-md-6 col-lg-4">
                <div class="banner__content d-flex align-items-center">
                    <img src="<?= base_url('assets/frontend/design-one/assets/images/home/1.svg'); ?>"
                        class="banner_image">
                    <div class="banner__text">
                        <h6><?php echo site_phrase('expert_instruction'); ?></h6>
                        <p><?php echo site_phrase('find_the_right_course_for_you'); ?></p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
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


            <div class="col-md-6 col-lg-4">
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

<!-- top-courses  -->
<?php if(get_frontend_settings('upcoming_course_section') == 1): ?>

<?php $upcoming_courses = $this->db->order_by('id', 'desc')->limit(6)->get_where('course', ['status' => 'upcoming']); ?>
<?php if($upcoming_courses->num_rows() > 0): ?>
    <section class="py-5 eUpcomingCourse ">
      <div class="container">
        <div class="row mb-24 wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="500" data-wow-delay="300">
            <div class="col-lg-6">
                <div class="title-one">
                    <h4 class="title"><?php echo get_phrase('Explore Our Upcoming Courses'); ?></h4>
                </div>

            </div>
            <div class="col-lg-6">
               <div class="Etop_right">
                  <p class="fz_15_m_24"><?php echo get_phrase('Discover a world of learning opportunities through our upcoming courses, where industry experts and thought leaders will guide you in acquiring new expertise, expanding your horizons, and reaching your full potential.') ?></p>
               </div>
            </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <!-- Items -->
            <div class="row g-3">
              <?php
                foreach($upcoming_courses->result_array() as $upcoming_course):
                    $instructor_details = $this->user_model->get_all_user($upcoming_course['creator'])->row_array();
                    $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($upcoming_course['id']);
                    $lessons = $this->crud_model->get_lessons('course', $upcoming_course['id']);
                ?>
                <div class="col-lg-4 col-md-6 col-sm-6    " data-wow-duration="500" data-wow-delay="300">
                  <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($upcoming_course['title'])) . '/' . $upcoming_course['id']); ?>" id="top_course_<?php echo $upcoming_course['id']; ?>" class="course-item-one">
                       <div class="ePosition">
                            <div class="eImage d-flex">
                                <span class="px-3"><?php
                                echo $this->db->where('id', $upcoming_course['sub_category_id'])->get('category')->row('name');
                                ?></span>
                                <div class="img">
                                    <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($instructor_details['id']); ?>" alt="" />
                                </div>
                            </div>
                       </div>
                    <div class="img-rating">
                        <div class="img">
                            <?php if($upcoming_course['upcoming_image_thumbnail']):?>
                                <img loading="lazy" src="<?php echo('uploads/thumbnails/upcoming_thumbnails/'.$upcoming_course['upcoming_image_thumbnail'] ) ?>" alt="" />
                             <?php else:?>
                             <img loading="lazy" src="<?php echo('uploads/thumbnails/course_thumbnails/placeholder.png') ?>" alt="" />
                           <?php endif;?>
                        </div>
                       <div class="content">
                          <h4 class="title pb-0"><?php echo $upcoming_course['title']; ?></h4>
                          <p class="info ellipsis-line-2 fw-400"> <?php
                            if($upcoming_course['publish_date']){
                                echo get_phrase('Release On').' : '. date('j F Y', strtotime($upcoming_course['publish_date']));
                            }
                            ?></p>
                       </div>
                    </div>
                  </a>
                </div>
              <?php endforeach; ?>
            </div>
          </div>
        </div>
      </div>
    </section>
<?php endif; ?>

<?php endif; ?>


<?php if(get_frontend_settings('top_course_section') == 1): ?>
<section class="course top-courses">
<div class="container">
<header class="top-header-section">
                <h2>
                    <span>
                    <?php echo site_phrase('Top'); ?>
                     </span>

                  
                     <?php echo site_phrase('10 Latest Courses') ?>
               
          
                  
                    </span>
                  
                </h2>
                <p>
                <?php echo site_phrase('These_are_the_most_popular_courses_among_Listen_Courses_learners_worldwide')?>
                </p>
            </header>
    <div class="row justify-content-between ">

        <?php
        $top_courses = $this->crud_model->get_top_courses()->result_array();
        foreach ($top_courses as $top_course):
            $lessons = $this->crud_model->get_lessons('course', $top_course['id']);
            $instructor_details = $this->user_model->get_all_user($top_course['creator'])->row_array();

            $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($top_course['id']);
            $total_rating = $this->crud_model->get_ratings('course', $top_course['id'], true)->row()->rating;
            $number_of_ratings = $this->crud_model->get_ratings('course', $top_course['id'])->num_rows();
            if ($number_of_ratings > 0) {
                $average_ceil_rating = ceil($total_rating / $number_of_ratings);
            } else {
                $average_ceil_rating = 0;
            }
            ?>
            <div class="col-lg-4 col-md-6 mb-4">
                <a class="course__content "
                    href="<?php echo site_url('home/course/' . rawurlencode(slugify($top_course['title'])) . '/' . $top_course['id']); ?>">
                    <div class="wrapper">
                    <div class="course__top">
                        <img src="<?php echo $this->crud_model->get_course_thumbnail_url($top_course['id']); ?>"
                            class="w-100 h-100">

                        <i class="fa-regular fa-heart  favorite"></i>
                        <div class="duration d-flex align-items-center">
                            <i class="fa-regular fa-clock"></i>
                            <span><?= $course_duration; ?></span>
                        </div>
                    </div>
        
                    <div class="course__middle">
                        <div class=" d-flex justify-content-between align-items-center">
                        <h3 class="course__title"><?= $top_course['title']; ?></h3>
                            <small class=" course__level"><?= get_phrase($top_course['level']); ?></small>
                        </div>
                      
                        <div class="course__review d-flex justify-content-between align-items-center">
                            <div class="rating d-flex align-items-center g-2">
                            <p class="star-nums">(<?php echo $average_ceil_rating; ?>)</p>
                            <p><i class="fa-solid fa-star <?php if ($number_of_ratings > 0)
                                echo 'filled'; ?>"></i></p>
                            </div>
                     <div class="reviews-num">
                     <p>(<?php echo $number_of_ratings; ?>     <?php echo get_phrase('Reviews') ?>)</p>
                     </div>
                          
                        </div>
                        <p class="course__description"><?= $top_course['short_description']; ?></p>
                        
                        </div>
        </div>
                        <div class="course__bottom d-flex justify-content-between align-items-center">

                        <div class="course__instructor d-flex ">
                            <img src="<?php echo $this->user_model->get_user_image_url($instructor_details['id']); ?>" alt="">
                            <div class="instructor-name">
                                <span><?php echo get_phrase('Instructor'); ?>:</span>
                                <h6><?= $instructor_details['first_name'] . ' ' . $instructor_details['last_name']; ?></h6>

                            </div>
                        </div>

                        <p class="course__price">
                        <?= currency($top_course['price']);?>
                        </p>
                        </div>
                </a>
            </div>
        <?php endforeach; ?>

    </div>
</section>
<!-- class="row wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="500" data-wow-delay="400" -->

<!-- <section class="courses Ecourse grid-view-body py-5 wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="500" data-wow-delay="300">
    <div class="container">
        <h1 class="pt-0 f-36"><span><?php echo site_phrase('top_courses'); ?></span></h1>
        <p class="ms-0"><?php echo site_phrase('These_are_the_most_popular_courses_among_Listen_Courses_learners_worldwide')?></p>
        <div class="courses-card">
            <div class="course-group-slider" data-wow-duration="1000" data-wow-delay="500">
                <?php
                $top_courses = $this->crud_model->get_top_courses()->result_array();
                foreach ($top_courses as $top_course) :
                    $lessons = $this->crud_model->get_lessons('course', $top_course['id']);
                    $instructor_details = $this->user_model->get_all_user($top_course['creator'])->row_array();
                    $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($top_course['id']);
                    $total_rating =  $this->crud_model->get_ratings('course', $top_course['id'], true)->row()->rating;
                    $number_of_ratings = $this->crud_model->get_ratings('course', $top_course['id'])->num_rows();
                    if ($number_of_ratings > 0) {
                        $average_ceil_rating = ceil($total_rating / $number_of_ratings);
                    } else {
                        $average_ceil_rating = 0;
                    }
                    ?>
                    <div class="single-popup-course ">
                        <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($top_course['title'])) . '/' . $top_course['id']); ?>" id="top_course_<?php echo $top_course['id']; ?>" class="checkPropagation courses-card-body">
                            <div class="courses-card-image">
                                <img loading="lazy" src="<?php echo $this->crud_model->get_course_thumbnail_url($top_course['id']); ?>">
                                <div class="courses-icon <?php if(in_array($top_course['id'], $my_wishlist_items)) echo 'red-heart'; ?>" id="coursesWishlistIconTopCourse<?php echo $top_course['id']; ?>">
                                    <i class="fa-solid fa-heart checkPropagation" onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/'.$top_course['id'].'/TopCourse'); ?>')"></i>
                                </div>
                                <div class="courses-card-image-text">
                                    <h3><?php echo get_phrase($top_course['level']); ?></h3>
                                </div>
                            </div>
                            <div class="courses-text">
                                <h5 class="mb-2"><?php echo $top_course['title']; ?></h5>
                                <div class="review-icon">
                                    <div class="review-icon-star align-items-center">
                                        <p><?php echo $average_ceil_rating; ?></p>
                                        <p><i class="fa-solid fa-star <?php if($number_of_ratings > 0) echo 'filled'; ?>"></i></p>
                                        <p>(<?php echo $number_of_ratings; ?> <?php echo get_phrase('Reviews') ?>)</p>
                                    </div>
                                    <div class="review-btn d-flex align-items-center">
                                       <span class="compare-img checkPropagation" onclick="redirectTo('<?php echo base_url('home/compare?course-1='.slugify($top_course['title']).'&course-id-1='.$top_course['id']); ?>');">
                                            <img loading="lazy" src="<?php echo base_url('assets/frontend/default-new/image/compare.png') ?>">
                                            <?php echo get_phrase('Compare'); ?>
                                        </span>
                                    </div>
                                </div>
                                <p class="ellipsis-line-2"><?php echo $top_course['short_description'] ?></p>
                                <div class="courses-price-border">
                                    <div class="courses-price">
                                        <div class="courses-price-left">
                                            <?php if($top_course['is_free_course']): ?>
                                                <h5><?php echo get_phrase('Free'); ?></h5>
                                            <?php elseif($top_course['discount_flag']): ?>
                                                <h5><?php echo currency($top_course['discounted_price']); ?></h5>
                                                <p class="mt-1"><del><?php echo currency($top_course['price']); ?></del></p>
                                            <?php else: ?>
                                                <h5><?php echo currency($top_course['price']); ?></h5>
                                            <?php endif; ?>
                                        </div>
                                        <div class="courses-price-right ">
                                            <?php if($course_duration): ?>
                                                <p class="m-0"> <i class="fa-regular fa-clock p-0 text-15px"></i> <?php echo $course_duration; ?></p>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                             </div>
                        </a>




                        <div id="top_course_feature_<?php echo $top_course['id']; ?>" class="course-popover-content">
                            <?php if ($top_course['last_modified'] == "") : ?>
                                <p class="last-update"><?php echo site_phrase('last_updated') . ' ' . date('D, d-M-Y', $top_course['date_added']); ?></p>
                            <?php else : ?>
                                <p class="last-update"><?php echo site_phrase('last_updated') . ' ' . date('D, d-M-Y', $top_course['last_modified']); ?></p>
                            <?php endif; ?>
                            <div class="course-title">
                                 <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($top_course['title'])) . '/' . $top_course['id']); ?>"><?php echo $top_course['title']; ?></a>
                            </div>
                            <div class="course-meta">
                                <?php if ($top_course['course_type'] == 'general') : ?>
                                    <span class=""><i class="fas fa-play-circle"></i>
                                        <?php echo $this->crud_model->get_lessons('course', $top_course['id'])->num_rows() . ' ' . site_phrase('lessons'); ?>
                                    </span>
                                    <?php if($course_duration): ?>
                                        <span class=""><i class="far fa-clock"></i>
                                            <?php echo $course_duration; ?>
                                        </span>
                                    <?php endif; ?>
                                <?php elseif ($top_course['course_type'] == 'h5p') : ?>
                                    <span class="badge bg-light"><?= site_phrase('h5p_course'); ?></span>
                                <?php elseif ($top_course['course_type'] == 'scorm') : ?>
                                    <span class="badge bg-light"><?= site_phrase('scorm_course'); ?></span>
                                <?php endif; ?>
                                <span class=""><i class="fas fa-closed-captioning"></i><?php echo ucfirst($top_course['language']); ?></span>
                             </div>
                            <div class="course-subtitle">
                                 <?php echo $top_course['short_description']; ?>
                            </div>
                            <h6 class="text-black text-14px mb-1"><?php echo get_phrase('Outcomes') ?>:</h6>
                            <ul class="will-learn">
                                <?php $outcomes = json_decode($top_course['outcomes']);
                                foreach ($outcomes as $outcome) : ?>
                                    <li><?php echo $outcome; ?></li>
                                <?php endforeach; ?>
                            </ul>
                            <div class="popover-btns">
                                <?php if(is_purchased(['course_id' => $top_course['id']])): ?>
                                    <a href="<?php echo site_url('home/lesson/'.slugify($top_course['title']).'/'.$top_course['id']) ?>" class="purchase-btn d-flex align-items-center  me-auto"><i class="far fa-play-circle me-2"></i> <?php echo get_phrase('Start Now'); ?></a>
                                    <?php if ($top_course['is_free_course'] != 1) : ?>
                                        <button type="button" class="gift-btn ms-auto" title="<?php echo get_phrase('Gift someone else'); ?>" data-bs-toggle="tooltip" onclick="actionTo('<?php echo site_url('home/handle_buy_now/' . $top_course['id'].'?gift=1'); ?>')"><i class="fas fa-gift"></i></button>
                                    <?php endif; ?>
                                <?php else: ?>
                                    <?php if ($top_course['is_free_course'] == 1) : ?>
                                        <a class="purchase-btn green_purchase ms-auto" href="<?php echo site_url('home/get_enrolled_to_free_course/' . $top_course['id']); ?>"><?php echo get_phrase('Enroll Now'); ?></a>
                                    <?php else : ?>

                               
                                        <a id="added_course_to_cart_btn_top_course<?php echo $top_course['id']; ?>" class="purchase-btn align-items-center me-auto <?php if(cart_items_get_index('course', $top_course['id']) === null) echo 'd-hidden'; ?>" href="javascript:void(0)" onclick="actionTo('<?php echo site_url('home/handle_cart_items/' . $top_course['id'].'/top_course'); ?>');">
                                            <i class="fas fa-minus me-2"></i> <?php echo get_phrase('Remove from cart'); ?>
                                        </a>
                                        <a id="add_course_to_cart_btn_top_course<?php echo $top_course['id']; ?>" class="purchase-btn align-items-center me-auto <?php if(cart_items_get_index('course', $top_course['id']) !== null) echo 'd-hidden'; ?>" href="javascript:void(0)" onclick="actionTo('<?php echo site_url('home/handle_cart_items/' . $top_course['id'].'/top_course'); ?>'); ">
                                            <i class="fas fa-plus me-2"></i> <?php echo get_phrase('Add to cart'); ?>
                                        </a>
                                    
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                            <script>
                                $(document).ready(function(){
                                    $('#top_course_<?php echo $top_course['id']; ?>').webuiPopover({
                                        url:'#top_course_feature_<?php echo $top_course['id']; ?>',
                                        trigger:'hover',
                                        animation:'pop',
                                        cache:false,
                                        multi:true,
                                        direction:'rtl',
                                        placement:'horizontal',
                                    });
                                });
                            </script>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section> -->
<!---------- Top courses Section End --------------->
<?php endif; ?>
<!-- wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="1000" data-wow-delay="500" -->
<?php if(get_frontend_settings('top_category_section') == 1): ?>
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
                <p>
                <?php echo site_phrase('These_are_the_most_popular_courses_among_Listen_Courses_learners_worldwide') ?>
                </p>
             
            </header>
            <?php $top_10_categories = $this->crud_model->get_top_categories(12, 'sub_category_id'); ?>
            <?php foreach ($top_10_categories as $top_10_category): ?>
            <?php $category_details = $this->crud_model->get_category_details_by_id($top_10_category['sub_category_id'])->row_array(); ?>
            <div class="col-lg-3 col-md-4 col-sm-6 text-center  ">

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




<!-- <?php if(get_frontend_settings('top_instructor_section') == 1): ?>

<?php $top_instructor_ids = $this->crud_model->get_top_instructor(10); ?>
<?php if(count($top_instructor_ids) > 0): ?>
<section class="expert-instructor eExpert-instruction top-categories py-5 wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="1000" data-wow-delay="400">
    <div class="container">
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <h1 class="text-center f-36 mt-0 pt-0"><?php echo get_phrase('Our Expert Instructor ') ?></h1>
                <p class="text-center mt-4 mb-24"><?php echo get_phrase('They efficiently serve large number of students on our platform') ?></p>
            </div>
            <div class="col-lg-3 "></div>
        </div>
        <div class="instructor-card eInstuctor">
            <div class="row justify-content-center">
                <?php foreach($top_instructor_ids as $top_instructor_id):

                    $top_instructor = $this->user_model->get_all_user($top_instructor_id['creator'])->row_array();
                    // $social_links  = json_decode($instructor_details['social_links'], true);
                    $social_links  = json_decode($top_instructor['social_links'], true);

                    ?>
                    <div class="col-lg-3 col-md-4 col-sm-6" data-wow-duration="1000" data-wow-delay="600">
                        <div class="instructor-card-body">
                            <div class="instructor-card-img">
                                <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($top_instructor['id']); ?>">
                            </div>
                            <div class="instructor-card-text">

                                <a class="text-muted w-100" href="<?php echo site_url('home/instructor_page/'.$top_instructor['id']); ?>">
                                    <h3 class="text-center"><?php echo $top_instructor['first_name'].' '.$top_instructor['last_name']; ?></h3>
                                    <p class="ellipsis-line-2"><?php echo $top_instructor['title']; ?></p>
                                </a>
                                <div class="icon">
                                    <div class="icon-div-2">
                                        <?php if($social_links['facebook']): ?>
                                            <a class="" href="<?php echo $social_links['facebook']; ?>" target="_blank">
                                                <i class="fa-brands fa-facebook-f"></i>
                                            </a>
                                        <?php  endif; ?>
                                        <?php  if($social_links['twitter']): ?>
                                            <a class="" href="<?php echo $social_links['twitter']; ?>" target="_blank">
                                                <i class="fa-brands fa-twitter"></i>
                                            </a>
                                        <?php  endif; ?>
                                        <?php  if($social_links['linkedin']): ?>
                                            <a class="" href="<?php echo $social_links['linkedin']; ?>" target="_blank">
                                                <i class="fa-brands fa-linkedin"></i>
                                            </a>
                                        <?php  endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>
<?php endif; ?> -->




<?php if(get_frontend_settings('motivational_speech_section') == 1): ?>
<?php $motivational_speechs = json_decode(get_frontend_settings('motivational_speech'), true); ?>
<?php if(count($motivational_speechs) > 0): ?>
<!---------  Motivetional Speech Start ---------------->
<section class="expert-instructor top-categories py-5 ">
  <div class="container">
    <div class="row">
      <div class="col-lg-3"></div>
      <div class="col-lg-6 wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="1000" data-wow-delay="500">
        <h1 class="text-center f-36 mt-0 pt-0"><?php echo get_phrase('Think more clearly'); ?></h1>
        <p class="text-center mt-4 mb-24"><?php echo get_phrase('Gather your thoughts, and make your decisions clearly') ?></p>
      </div>
      <div class="col-lg-3"></div>
    </div>
    <ul class="speech-items">
        <?php $counter = 0; ?>
        <?php foreach($motivational_speechs as $key => $motivational_speech): ?>
        <?php $counter = $counter+1; ?>
        <li class="e_border">
            <div class="Espeech-item">
                <div class="row  wow  animate__animated animate__fadeInUp opacityOnUp" data-wow-duration="1000" data-wow-delay="700">

                <div class="col-md-1 col-2">
                 <div class="speech-item-content Nspeech">
                            <p class="no"><?php echo $counter; ?></p>
                        </div>
                </div>
                    <div class="col-lg-8 col-md-6 col-12  order-2 order-md-1">
                        <div class="speech-item-content Nspeech2">
                            <div class="inner">
                                <h4 class="title">
                                    <?php echo $motivational_speech['title']; ?>
                                </h4>
                                <p class="info">
                                    <?php echo nl2br($motivational_speech['description']); ?>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-5 col-10 order-1 order-md-1">
                        <div class="speech-item-img">
                            <img loading="lazy" src="<?php echo site_url('uploads/system/motivations/'.$motivational_speech['image']) ?>" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <?php endforeach; ?>
    </ul>
  </div>
</section>
<!---------  Motivetional Speech end ---------------->
<?php endif; ?>
<?php endif; ?>




<!-- latest blogs  -->
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
              
                    <!-- Swiper Wrapper -->
                    <div class="row justify-content-between"> 
                    <?php foreach ($latest_blogs->result_array() as $latest_blog):
                            $user_details = $this->user_model->get_all_user($latest_blog['user_id'])->row_array();
                            $blog_category = $this->crud_model->get_blog_categories($latest_blog['blog_category_id'])->row_array();
                            $blog_thumbnail = 'uploads/blog/thumbnail/' . $latest_blog['thumbnail'];
                            if (!file_exists($blog_thumbnail) || !is_file($blog_thumbnail)) {
                                $blog_thumbnail = base_url('uploads/blog/thumbnail/placeholder.png');
                            }
                            ?>
                            <div class="col-lg-4 col-md-6">
                                <div class="latest-blog__content">

                            
                            <!-- <a class="" href="<?php echo site_url('blog/details/' . slugify($latest_blog['title']) . '/' . $latest_blog['blog_id']); ?>"
                           > -->
                            
<div class="blog-img">
<img src="<?php echo $blog_thumbnail; ?>" class=" ">
</div>
<div class="latest-blog__top d-flex justify-content-between align-items-center">
    <span class = "time"><?php echo get_past_time($latest_blog['added_date']); ?></span>
    <small class="category-name"><?php echo $blog_category['title']; ?></small>
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

                        <!-- </a> -->
                        </div>
                        </div>
                        <?php endforeach; ?>
                    </div>
                    </div>
          

        </section>

    <?php endif; ?>
<?php endif; ?>

<!-- top-instructors  -->
<?php if (get_frontend_settings('top_instructor_section') ==1): ?>
<!---------  Expert Instructor Start ---------------->
    <!-- <?php $top_instructor_ids = $this->crud_model->get_top_instructor(10); ?>
    <?php if (count($top_instructor_ids) >0): ?> -->
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
                <div class=" swiper inst-swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->

                         <?php foreach ($top_instructor_ids as $top_instructor_id):

                            $top_instructor = $this->user_model->get_all_user($top_instructor_id['creator'])->row_array();

                            ?> 
                             <div class=" col-lg-4">
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

                

                        <!-- <?php endforeach; ?> -->
                        <!-- ... -->
                    </div>
                    <!-- If we need pagination -->
                    <?php if (count($top_instructor_ids) >3): ?> 
                    <div class="swiper-pagination"></div>
                    <!-- If we need navigation buttons -->
                     <div class="swiper-controls d-flex w-100 justify-content-end">
                     <div class="swiper-button-prev">  <i class="fa-solid fa-angle-left"></i></div>
                     <div class="swiper-button-next active">  <i class="fa-solid fa-angle-right"></i></div>
                     </div>

                     <?php else: ?>
                        <div class="d-none">
                        <div class="swiper-pagination"></div>
                    <!-- If we need navigation buttons -->
                     <div class="swiper-controls d-flex w-100 justify-content-end">
                     <div class="swiper-button-prev">  <i class="fa-solid fa-angle-left"></i></div>
                     <div class="swiper-button-next active">  <i class="fa-solid fa-angle-right"></i></div>
                     </div>
                        </div>
                        <?php endif; ?>
                </div>


            </div>

        </section>
    <?php endif; ?>
<?php endif; ?>
<!-- join us  -->
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
                            <div class="content">
                            <h2>
                                <?php echo site_phrase('join_now_to_start_learning'); ?>
                            </h2>
                            <p><?php echo site_phrase('join_now_to_start_learning'); ?></p>

                
                            </div>
                       
                            <a class=" join-btn "
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

                            <div class="join__text  ">
                                <div class="content">
                                <h2>
                                    <?php echo site_phrase('become_a_new_instructor'); ?>
                                </h2>
                                <p><?php echo site_phrase('Teach_thousands_of_students_and_earn_money!') ?> </p>
                                </div>
                     
                                <?php if ($this->session->userdata('user_id')): ?>
                                    <a class="join-btn"
                                        href="<?php echo site_url('user/become_an_instructor'); ?>"><?php echo site_phrase('join_now'); ?></a>
                                <?php else: ?>
                                    <a class="join-btn"
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


