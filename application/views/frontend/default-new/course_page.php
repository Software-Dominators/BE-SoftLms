<?php
$course_details = $this->crud_model->get_course_by_id($course_id)->row_array();
$all_sections = $this->crud_model->get_section('course', $course_details['id'])->result_array();
$all_lessons = $this->crud_model->get_lessons('course', $course_details['id'])->result_array();
$instructor_details = $this->user_model->get_all_user($course_details['creator'])->row_array();
$course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course_details['id']);
$number_of_enrolments = $this->crud_model->enrol_history($course_details['id'])->num_rows();
$total_rating = $this->crud_model->get_ratings('course', $course_details['id'], true)->row()->rating;
$number_of_ratings = $this->crud_model->get_ratings('course', $course_details['id'])->num_rows();
if ($number_of_ratings > 0) {
    $average_ceil_rating = ceil($total_rating / $number_of_ratings);
} else {
    $average_ceil_rating = 0;
}
?>


<header class="course-breadcrumb">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="  course-breadcrumb__top d-flex  align-items-center">
                    <i class="fa-solid fa-house"></i>
                    <a href="<?php echo site_url(); ?>">

                        <?php echo get_phrase('Home') ?>
                    </a>
                    <i class="fa-solid fa-chevron-right"></i>
                    <a href="<?php echo site_url('home/courses'); ?>">
                        <?php echo get_phrase('Courses') ?>
                    </a>
                    <i class="fa-solid fa-chevron-right"></i>
                    <a href="#">
                        <?php echo $course_details['title']; ?>
                    </a>
                </div>

                <div class="  course-breadcrumb__middle">


                    <div class="course-breadcrumb__middle_phone-img ">
                        <img loading="lazy" class="w-100 h-100 "
                            src="<?php echo $this->crud_model->get_course_thumbnail_url($course_details['id']); ?>">
                        <div class=" course-breadcrumb__middle_phone-img-video-icon"
                            onclick="lesson_preview('<?php echo site_url('home/course_preview/' . $course_details['id']); ?>', '<?php echo get_phrase($course_details['title']) ?>')">
                            <i class="fa-solid fa-play"></i>
                        </div>

                        <div class="course-breadcrumb__middle_phone-img-icon  cursor-pointer <?php if (in_array($course_details['id'], $my_wishlist_items))
                            echo 'red-heart'; ?>" id="coursesWishlistIcon<?php echo $course_details['id']; ?>">
                            <i class="fa-regular fa-heart  checkPropagation
                        <?php if (in_array($course_details['id'], $my_wishlist_items))
                            echo 'fa-solid'; ?>
                        " onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course_details['id']); ?>')"></i>
                        </div>
                    </div>
                    <h1><?php echo $course_details['title']; ?></h1>
                    <p><?php echo $course_details['short_description']; ?></p>
                </div>

                <div class=" course-breadcrumb__bottom ">
                    <div
                        class="course-breadcrumb__bottom-top d-flex align-items-lg-center justify-content-between flex-lg-row flex-column">

                        <div class="course-breadcrumb__bottom-instructor d-flex align-items-center ">
                            <img loading="lazy"
                                src="<?php echo $this->user_model->get_user_image_url($instructor_details['id']); ?>">
                            <span><?php echo get_phrase('Created By'); ?></span>
                            <a
                                href="<?php echo site_url('home/instructor_page/' . $course_details['creator']); ?>"><?php echo $instructor_details['first_name'] . ' ' . $instructor_details['last_name']; ?></a>

                        </div>
                        <div class=" course-breadcrumb__bottom-start d-flex align-items-center">
                            <ul class="d-flex align-items-center">
                                <?php for ($i = 1; $i < 6; $i++): ?>
                                    <?php if ($i <= $average_ceil_rating): ?>
                                        <li><i class="fa-solid fa-star "></i></li>
                                    <?php else: ?>
                                        <li><i class="fa-regular fa-star"></i></li>
                                    <?php endif; ?>
                                <?php endfor; ?>

                            </ul>
                            <p>(<?php echo $number_of_ratings . ' ' . get_phrase('Reviews'); ?>)</p>
                        </div>
                    </div>
                    <div class="course-breadcrumb__bottom-bottom row align-items-center">
                        <div class="col-lg-6 d-flex align-items-center">
                            <i class="fa-regular fa-clock "></i>
                            <p><?php echo $course_duration; ?></p>
                        </div>
                        <div class="col-lg-6 d-flex align-items-center">
                            <i class="far fa-calendar-alt "></i>
                            <p><?php echo get_phrase('Last Updated'); ?></p>
                            <p>
                                <?php if ($course_details['last_modified'] > 0): ?>
                                    <?php echo date('D, d-M-Y', $course_details['last_modified']); ?>
                                <?php else: ?>
                                    <?php echo date('D, d-M-Y', $course_details['date_added']); ?>
                                <?php endif; ?>
                            </p>
                        </div>
                        <div class="col-lg-6 d-flex align-items-center">
                            <i class="fa-regular fa-user"></i>
                            <p><?php echo $number_of_enrolments ?> <?php echo get_phrase('Enrolled'); ?></p>
                        </div>

                        <div class="col-lg-6 d-flex align-items-center">
                            <i class="fa-solid fa-language"></i>
                            <p><?php echo ucfirst($course_details['language']); ?></p>

                        </div>



                    </div>


                </div>
            </div>


        </div>
    </div>
</header>


<?php include "course-popup.php"; ?>

<section class="course mt-0">
    <div class="container ">
        <div class="row  ">
            <div class="col-lg-7  order-lg-1 order-2 ">
                <div class="course__nav d-flex  justify-content-center flex-column">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="overview-tab" data-bs-toggle="tab"
                                data-bs-target="#overview" type="button" role="tab" aria-controls="overview"
                                aria-selected="true">
                                <span> <?php echo get_phrase('Overview'); ?></span>
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="curriculum-tab" data-bs-toggle="tab"
                                data-bs-target="#curriculum" type="button" role="tab" aria-controls="curriculum"
                                aria-selected="false">
                                <span><?php echo get_phrase('Curriculum') ?></span>
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="instructor-tab" data-bs-toggle="tab"
                                data-bs-target="#instructor" type="button" role="tab" aria-controls="instructor"
                                aria-selected="false">
                                <span><?php echo get_phrase('Instructor') ?></span>
                            </button>
                        </li>

                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="review-tab" data-bs-toggle="tab" data-bs-target="#review"
                                type="button" role="tab" aria-controls="review" aria-selected="false">
                                <span><?php echo get_phrase('Reviews') ?></span>
                            </button>
                        </li>
                    </ul>
                </div>

                <div class="course__tap">
                    <!-- Tab Content -->
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="overview" role="tabpanel"
                            aria-labelledby="overview-tab">
                            <?php include "course_page_info_description.php"; ?>
                        </div>
                        <div class="tab-pane fade" id="curriculum" role="tabpanel" aria-labelledby="curriculum-tab">
                            <?php include "course_page_curriculum.php"; ?>
                        </div>
                        <div class="tab-pane fade" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">
                            <?php include "course_page_instructor.php"; ?>
                        </div>
                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                            <?php include "course_page_reviews.php"; ?>
                        </div>
                    </div>
                </div>


            </div>
            <div class="col-lg-5  order-lg-2 order-1">
                <div class="course__right">
                    <div class="course__right-img">
                        <img loading="lazy" class="w-100 h-100"
                            src="<?php echo $this->crud_model->get_course_thumbnail_url($course_details['id']); ?>">

                        <div class=" course__right-img-video-icon"
                            onclick="lesson_preview('<?php echo site_url('home/course_preview/' . $course_details['id']); ?>', '<?php echo get_phrase($course_details['title']) ?>')">
                            <i class="fa-solid fa-play"></i>
                        </div>

                        <div class="course__right-img-icon  cursor-pointer <?php if (in_array($course_details['id'], $my_wishlist_items))
                            echo 'red-heart'; ?>" id="coursesWishlistIcon<?php echo $course_details['id']; ?>">
                            <i class="fa-regular fa-heart  checkPropagation
                        <?php if (in_array($course_details['id'], $my_wishlist_items))
                            echo 'fa-solid'; ?>
                        " onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course_details['id']); ?>')"></i>
                        </div>

                    </div>

                    <div class="course__right-prices d-flex flex-column">
                        <div class="d-flex align-items-center justify-content-between">
                            <p><?= get_phrase('Whole course') ?></p>

                            <?php if ($course_details['is_free_course']): ?>
                                <h6><?php echo get_phrase('Free'); ?></h6>
                            <?php elseif ($course_details['discount_flag']): ?>
                                <h6><?php echo currency($course_details['discounted_price']); ?></h6>
                                <h6><?php echo currency($course_details['price']); ?></h6>
                            <?php else: ?>
                                <h6><?php echo currency($course_details['price']); ?></h6>
                            <?php endif; ?>

                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <p><?= get_phrase('Each section') ?></p>
                            <h6>55</h6>
                        </div>


                    </div>

                    <div class="course__right-details d-flex flex-column">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <img src="<?= base_url('assets/frontend/design-one/assets/images/course/lectures.svg') ?>"
                                    alt="" srcset="">
                                <h6><?= get_phrase('Lectures') ?></h6>

                            </div>
                            <h5><?php echo $this->db->get_where('lesson', ['course_id' => $course_details['id'], 'lesson_type !=' => 'quiz'])->num_rows(); ?>
                            </h5>
                        </div>

                        <?php $number_of_quiz = $this->db->get_where('lesson', ['course_id' => $course_details['id'], 'lesson_type' => 'quiz'])->num_rows(); ?>
                        <?php if ($number_of_quiz > 0): ?>
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img loading="lazy"
                                        src="<?php echo base_url('assets/frontend/default-new/image/c-enrold-4.png') ?>">
                                    <h6><?php echo get_phrase('Quizzes') ?></h6>
                                </div>

                                <h5><?php echo $number_of_quiz; ?></h5>
                            </div>
                        <?php endif; ?>
                        <?php if ($course_details['status'] == 'upcoming'): ?>
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img loading="lazy"
                                        src="<?php echo base_url('assets/frontend/default-new/image/c-enrold-2.png') ?>">
                                    <h6><?php echo get_phrase('Category') ?></h6>
                                </div>
                                <h5><?php echo $this->db->where('id', $course_details['sub_category_id'])->get('category')->row('name'); ?>
                                </h5>
                            </div>
                            <?php if ($course_details['publish_date']): ?>
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <img loading="lazy"
                                            src="<?php echo base_url('assets/frontend/default-new/image/publish.svg') ?>">
                                        <h6><?php echo get_phrase('Publish Date') ?></h6>
                                    </div>
                                    <h5><?php echo date('j F Y', strtotime($course_details['publish_date'])); ?></h5>
                                </div>
                            <?php endif; else: ?>
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img loading="lazy"
                                        src="<?php echo base_url('assets/frontend/design-one/assets/images/course/skill.svg') ?>">
                                    <h6><?php echo get_phrase('Skill level') ?></h6>
                                </div>
                                <h5><?php echo get_phrase($course_details['level']); ?></h5>
                            </div>
                        <?php endif; ?>

                        <div class="d-flex align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <img loading="lazy"
                                    src="<?php echo base_url('assets/frontend/design-one/assets/images/course/period.svg') ?>">
                                <h6><?php echo get_phrase('Expiry period') ?></h6>
                            </div>
                            <h5>
                                <?php if ($course_details['expiry_period'] <= 0): ?>
                                    <?php echo get_phrase('Lifetime') ?>
                                <?php else: ?>
                                    <?php echo $course_details['expiry_period'] . ' ' . get_phrase('Months'); ?>
                                <?php endif; ?>
                            </h5>
                        </div>

                        <?php if (addon_status('certificate')): ?>
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="d-flex align-items-center">
                                    <img loading="lazy"
                                        src="<?php echo base_url('assets/frontend/design-one/assets/images/course/certificate.svg') ?>"
                                        alt="" srcset="">
                                    <h6><?php echo get_phrase('Certificate') ?></h6>
                                </div>

                                <h5><?php echo get_phrase('Yes') ?></h5>
                            </div>
                        <?php endif; ?>

                    </div>

                    <div class="course__right-buttons d-flex flex-column ">
                        <p><?= get_phrase('Pay by') . ':' ?></p>
                        <div class="d-flex align-items-center justify-content-between">
                            <!-- dropdown  -->
                           

                            <div class="form-group">
                                <select class="form-control" id="exampleFormControlSelect1">
                                    <option>Whole course</option>
                                    <option>sections</option>
                                    <option >lessons</option>

                                </select>
                            </div>
                            <!-- enrol now -->
                            <a
                                href="<?php echo site_url('home/get_enrolled_to_free_course/' . $course_details['id']); ?>"><?php echo get_phrase('Enroll Now'); ?></a>



                        </div>



                    </div>


                    <?php
                    if (isset($user_data['unique_identifier'])):
                        $ref = $user_data['unique_identifier'];
                    else:
                        $ref = '';
                    endif;
                    ?>
                    <!-- soci -->
                    <div class="course__right-social text-center">
                        <?php $share_url = site_url('home/course/' . slugify($course_details['title']) . '/' . $course_details['id']); ?>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo $share_url; ?>&ref=<?php echo $ref; ?>"
                            target="_blank" class="p-2" style="color: #316FF6;" data-bs-toggle="tooltip"
                            title="<?php echo get_phrase('Share on Facebook'); ?>" data-bs-placement="top">
                            <i class="fab fa-facebook "></i>
                        </a>
                        <a href="https://twitter.com/intent/tweet?url=<?php echo $share_url; ?>&text=<?php echo $course_details['title']; ?>&ref=<?php echo $ref; ?>"
                            target="_blank" class="p-2" style="color: #1DA1F2;" data-bs-toggle="tooltip"
                            title="<?php echo get_phrase('Share on Twitter'); ?>" data-bs-placement="top">
                            <i class="fab fa-twitter "></i>
                        </a>
                        <a href="https://api.whatsapp.com/send?text=<?php echo $share_url; ?>&ref=<?php echo $ref; ?>"
                            target="_blank" class="p-2" style="color: #128c7e;" data-bs-toggle="tooltip"
                            title="<?php echo get_phrase('Share on Whatsapp'); ?>" data-bs-placement="top">
                            <i class="fab fa-whatsapp "></i>
                        </a>
                        <a href="https://www.linkedin.com/shareArticle?url=<?php echo $share_url; ?>&title=<?php echo $course_details['title']; ?>&summary=<?php echo $course_details['short_description']; ?>&ref=<?php echo $ref; ?>"
                            target="_blank" class="p-2" style="color: #0077b5;" data-bs-toggle="tooltip"
                            title="<?php echo get_phrase('Share on Linkedin'); ?>" data-bs-placement="top">
                            <i class="fab fa-linkedin "></i>
                        </a>
                    </div>


                </div>
            </div>
        </div>
</section>




<section class="related-courses">
    <div class="container">
        <div class="row">
            <h2> <?php echo get_phrase('Related Courses'); ?></h2>
            <?php $related_courses = $this->crud_model->get_related_courses($course_details['category_id'], $course_details['sub_category_id'], $course_details['id'], 12)->result_array();
            // Fetch category name using the category_id
            $category_name = $this->crud_model->get_category_name_by_id($course_details['category_id']);
            ?>
            <?php foreach ($related_courses as $key => $course):
                $lessons = $this->crud_model->get_lessons('course', $course['id']);
                $instructor_details = $this->user_model->get_all_user($course['user_id'])->row_array();
                $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
                $total_rating = $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
                $number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
                // Calculate average rating (rounded to nearest integer)
                if ($number_of_ratings > 0) {
                    $average_ceil_rating = ceil($total_rating / $number_of_ratings);
                } else {
                    $average_ceil_rating = 0;  // Default to 0 if no ratings
                }
                ?>
                <div class="col-lg-4 col-md-6">
                    <a class="related-courses__content  d-flex flex-column"
                        href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>">
                        <div class="related-courses__img">
                            <img loading="lazy" class="w-100 h-100"
                                src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>">

                            <div class="related-courses__icon cursor-pointer "
                                id="coursesWishlistIcon<?php echo $course['id']; ?>">
                                <i class="fa-regular fa-heart  checkPropagation
                                <?php if (in_array($course['id'], $my_wishlist_items))
                                    echo 'fa-solid'; ?>"
                                    onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course['id']); ?>')"></i>
                            </div>

                            <div class="related-courses__duration d-flex align-items-center ">
                                <?php if ($course_duration): ?>
                                    <i class="fa-regular fa-clock"></i>
                                    <p class="m-0">
                                        <?php echo $course_duration; ?>
                                    </p>
                                <?php endif ?>
                            </div>

                        </div>
                        <div class="related-courses__top d-flex align-items-center justify-content-between">
                            <h4><?= $category_name ?></h4>

                            <h3>
                                <?php echo get_phrase($course['level']); ?>
                            </h3>
                        </div>
                        <div class="related-courses__middle">
                            <h3><?php echo $course['title']; ?></h3>
                            <div class="d-flex align-items-center rating">
                                <?php for ($i = 1; $i <= 5; $i++): ?>
                                    <?php if ($i <= $average_ceil_rating): ?>
                                        <i class="fa-solid fa-star "></i>
                                    <?php else: ?>
                                        <i class="fa-regular fa-star"></i>
                                    <?php endif; ?>
                                <?php endfor; ?>

                            </div>
                            <p><?php echo (strlen($course['short_description']) > 200 ? substr($course['short_description'], 0, 200) . '...' : $course['short_description']); ?>
                            </p>

                        </div>

                        <div class="related-courses__bottom mt-auto d-flex align-items-center justify-content-between">
                            <div class="related-courses__instructor d-flex  ">
                                <img loading="lazy"
                                    src="<?php echo $this->user_model->get_user_image_url($instructor_details['id']); ?>">
                                <div class="d-flex flex-column align-items-between ">
                                    <span><?php echo get_phrase('Created By'); ?></span>
                                    <h6><?php echo $instructor_details['first_name'] . ' ' . $instructor_details['last_name']; ?>
                                    </h6>
                                </div>
                            </div>

                            <div class="elated-courses__price">
                                <?php if ($course['is_free_course']): ?>
                                    <h5>
                                        <?php echo get_phrase('Free'); ?>
                                    </h5>
                                <?php elseif ($course['discount_flag']): ?>
                                    <h5>
                                        <?php echo currency($course['discounted_price']); ?>
                                    </h5>
                                    <p class="mt-1">
                                        <?php echo currency($course['price']); ?>
                                    </p>
                                <?php else: ?>
                                    <h5>
                                        <?php echo currency($course['price']); ?>
                                    </h5>
                                <?php endif; ?>
                            </div>

                        </div>


                    </a>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</section>
<hr>
<hr>
<hr>




<?php if (addon_status('affiliate_course') && $is_affiliattor == 1): ?>
<?php include 'affiliate_course_modal.php';  // course_addon  single line /adding
?>
<?php endif; ?>

<?php if (addon_status('team_training')): ?>
<?php include 'course_related_packages.php'; ?>
<?php endif; ?>

<script>
    cartSections = [];
    cartLessons = [];

    $(document).ready(function () {
        $('input[name="sections"]:checked').each(function () {
            cartSections.push($(this).val());
        });

        $('input[name="lessons"]:checked').each(function () {
            cartLessons.push($(this).val());
        });
    });

    function updateCartSections() {
        let sections = [];
        let updatedCartSections = [];
        $('input[name="sections"]').each(function () {
            if (this.checked && cartSections.indexOf($(this).val()) == -1) {
                sections.push($(this).val());
            } else if (!this.checked && cartSections.indexOf($(this).val()) != -1) {
                sections.push($(this).val());
            }
            if (this.checked) {
                updatedCartSections.push($(this).val());
            }
        });
        if (sections.length == 0) {
            toastr.error('<?= get_phrase('No Changes, Please make at least one change.') ?>');
            return;
        }
        cartSections = updatedCartSections;
        actionTo(
            ('<?= site_url('home/handle_cart_items/SECTIONS_IDS/_/section'); ?>')
                .replaceAll('SECTIONS_IDS', sections.join('_'))
        );
    }

    function updateCartLessons() {
        let lessons = [];
        let updatedCartLessons = [];
        $('input[name="lessons"]').each(function () {
            if (this.checked && cartLessons.indexOf($(this).val()) == -1) {
                lessons.push($(this).val());
            } else if (!this.checked && cartLessons.indexOf($(this).val()) != -1) {
                lessons.push($(this).val());
            }
            if (this.checked) {
                updatedCartLessons.push($(this).val());
            }
        });
        if (lessons.length == 0) {
            toastr.error('<?= get_phrase('No Changes, Please make at least one change.') ?>');
            return;
        }
        cartLessons = updatedCartLessons;
        actionTo(
            ('<?= site_url('home/handle_cart_items/LESSONS_IDS/_/lesson'); ?>')
                .replaceAll('LESSONS_IDS', lessons.join('_'))
        );
    }
</script>