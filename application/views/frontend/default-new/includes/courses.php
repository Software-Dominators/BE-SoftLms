<section class="course">
    <div class="container">
        <div class="row justify-content-between g-2">

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
                <div class="col-lg-4 col-md-6">
                    <a class="course__content "
                        href="<?php echo site_url('home/course/' . rawurlencode(slugify($top_course['title'])) . '/' . $top_course['id']); ?>">
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
                                <span class="course__category"><?= 'category'; ?></span>
                                <small class="btn btn-secondary course__level"><?= get_phrase($top_course['level']); ?></small>
                            </div>
                            <h3 class="course__title"><?= $top_course['title']; ?></h3>
                            <div class="course__review">
                                <p><?php echo $average_ceil_rating; ?></p>
                                <p><i class="fa-solid fa-star <?php if ($number_of_ratings > 0)
                                    echo 'filled'; ?>"></i></p>
                                <p>(<?php echo $number_of_ratings; ?>     <?php echo get_phrase('Reviews') ?>)</p>
                            </div>
                            <p class="course__description"><?= $top_course['short_description']; ?></p>
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
    </div>

</section>