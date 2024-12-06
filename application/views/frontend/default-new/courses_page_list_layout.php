
<h1>llllllllllllllll</h1>

<div class="course-grid   d-flex align-items-center  w-100">

    <div class="row  justify-content-between w-100">
   <div class="col-12">
   <?php include 'courses_page_sorting_section.php'; ?>

   </div>
        <?php foreach ($courses as $course): ?>
            <?php
            $lessons = $this->crud_model->get_lessons('course', $course['id']);
            $instructor_details = $this->user_model->get_all_user($course['user_id'])->row_array();
            $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
            $total_rating = $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
            $number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
            if ($number_of_ratings > 0) {
                $average_ceil_rating = ceil($total_rating / $number_of_ratings);
            } else {
                $average_ceil_rating = 0;
            }
            ?>

            <div class="col-12  ">
                <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>"
                    class="course-grid__content  d-flex gap-4 h-auto">
                    <figure class="course-grid__content-image">
                        <img loading="lazy" src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>"
                            class="w-100 h-100">
                        <div class="courses-icon " id="coursesWishlistIcon<?php echo $course['id']; ?>">
                            <i class="fa-regular fa-heart checkPropagation<?php if (in_array($course['id'], $my_wishlist_items))
                                echo 'fa-solid'; ?>"
                                onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course['id']); ?>')"></i>
                        </div>
                    </figure>

                    <div>
                    <div class="course-grid__top d-flex justify-content-between">
                        <small class="course-grid__top-category"><?php echo 'category' ?></small>
                        <small class="course-grid__top-level"><?php echo get_phrase($course['level']); ?></small>
                    </div>

                    <div class="course-grid__middle">
                        <h3 class="course-grid__middle-title"><?= $course['title']; ?></h3>
                        <div class="course-grid__middle-review">
                            <p><?php echo $average_ceil_rating; ?></p>
                            <p><i class="fa-solid fa-star <?php if ($number_of_ratings > 0)
                                echo 'filled'; ?>"></i></p>
                            <p>(<?php echo $number_of_ratings; ?>     <?php echo get_phrase('Reviews') ?>)</p>
                        </div>
                        <p class="course-grid__middle-description"><?= $course['short_description']; ?></p>
                    </div>

                    <div class="course-grid__bottom d-flex justify-content-between align-items-center">

                        <div class=" d-flex course-grid__bottom-instructor">
                            <img src="<?php echo $this->user_model->get_user_image_url($instructor_details['id']); ?>"
                                class="course-grid__bottom-instructor-image">
                            <div class="course-grid__bottom-instructor-name d-flex  align-items-between flex-column">
                                <span><?php echo get_phrase('Instructor'); ?>:</span>
                                <h6><?= $instructor_details['first_name'] . ' ' . $instructor_details['last_name']; ?></h6>
                            </div>
                        </div>

                        <p class="course-grid__bottom-price">
                            <?= currency($course['price']); ?>
                        </p>
                    </div>
                    </div>
                </a>
            </div>


        <?php endforeach; ?>

        <!------- pagination Start ------>
        <div class="pagenation-items mb-0 mt-3">
            <?php echo $this->pagination->create_links(); ?>
        </div>

    </div>

</div>






<div class="grid-view-body courses courses-list-view-body">

    <?php include 'courses_page_sorting_section.php'; ?>

    <div class="courses-card courses-list-view-card">
        <?php foreach ($courses as $course): ?>
            <?php
            $lessons = $this->crud_model->get_lessons('course', $course['id']);
            $instructor_details = $this->user_model->get_all_user($course['user_id'])->row_array();
            $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
            $total_rating = $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
            $number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
            if ($number_of_ratings > 0) {
                $average_ceil_rating = ceil($total_rating / $number_of_ratings);
            } else {
                $average_ceil_rating = 0;
            }
            ?>
            <!-- Course List Card -->
            <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>"
                class="courses-list-view-card-body courses-card-body checkPropagation">
                <div class="courses-card-image ">

                    <div class="courses-icon <?php if (in_array($course['id'], $my_wishlist_items))
                        echo 'red-heart'; ?>" id="coursesWishlistIcon<?php echo $course['id']; ?>">
                        <i class="fa-solid fa-heart checkPropagation"
                            onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course['id']); ?>')"></i>
                    </div>
                    <div class="courses-card-image-text">
                        <h3><?php echo get_phrase($course['level']); ?></h3>
                    </div>
                </div>
                <div class="courses-text w-100">
                    <div class="courses-d-flex-text">
                        <h5><?php echo $course['title']; ?></h5>
                        <span class="compare-img checkPropagation"
                            onclick="redirectTo('<?php echo base_url('home/compare?course-1=' . slugify($course['title']) . '&course-id-1=' . $course['id']); ?>');">
                            <img loading="lazy"
                                src="<?php echo base_url('assets/frontend/default-new/image/compare.png') ?>">
                            <?php echo get_phrase('Compare'); ?>
                        </span>
                    </div>
                    <div class="review-icon">
                        <p><?php echo $average_ceil_rating; ?></p>
                        <p><i class="fa-solid fa-star <?php if ($number_of_ratings > 0)
                            echo 'filled'; ?>"></i></p>
                        <p>(<?php echo $number_of_ratings; ?>     <?php echo get_phrase('Reviews') ?>)</p>
                        <p><i class="fas fa-closed-captioning"></i><?php echo site_phrase($course['language']); ?></p>
                    </div>
                    <p class="ellipsis-line-2"><?php echo $course['short_description']; ?></p>
                    <div class="courses-price-border">
                        <div class="courses-price">
                            <div class="courses-price-left">
                                <?php if ($course['is_free_course']): ?>
                                    <h5 class="price-free"><?php echo get_phrase('Free'); ?></h5>
                                <?php elseif ($course['discount_flag']): ?>
                                    <h5><?php echo currency($course['discounted_price']); ?></h5>
                                    <p class="mt-1"><del><?php echo currency($course['price']); ?></del></p>
                                <?php else: ?>
                                    <h5><?php echo currency($course['price']); ?></h5>
                                <?php endif; ?>
                            </div>
                            <div class="courses-price-right ">
                                <p class="me-2"><i class="fa-regular fa-list-alt p-0 text-15px"></i>
                                    <?php echo $lessons->num_rows() . ' ' . get_phrase('lessons'); ?></p>
                                <?php if ($course_duration): ?>
                                    <p><i class="fa-regular fa-clock text-15px p-0"></i> <?php echo $course_duration; ?></p>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
            <!-- End Course List Card -->
        <?php endforeach; ?>

        <!------- pagination Start ------>
        <div class="pagenation-items mb-0 mt-3">
            <?php echo $this->pagination->create_links(); ?>
        </div>
    </div>
</div>