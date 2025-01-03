<div class="course-grid   d-flex align-items-center  w-100 ">

    <div class="row  w-100  m-0  ">
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

            <div class="col-xl-4 col-md-6 course-grid__card  ">
                <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>"
                    class="course-grid__content">
                    <figure class="course-grid__content-image">
                        <img loading="lazy" src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>"
                            class="w-100 h-100">
                        <div class="courses-icon " id="coursesWishlistIcon<?php echo $course['id']; ?>">
                            <i class="fa-regular fa-heart checkPropagation<?php if (in_array($course['id'], $my_wishlist_items))
                                echo 'fa-solid'; ?>"
                                onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course['id']); ?>')"></i>
                        </div>
                    </figure>

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
                </a>
            </div>


        <?php endforeach; ?>

        <!------- pagination Start ------>
        <div class="pagenation-items mb-0 mt-3">
            <?php echo $this->pagination->create_links(); ?>
        </div>

    </div>

</div>