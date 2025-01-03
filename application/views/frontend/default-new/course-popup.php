<!-- Large modal -->


<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#courseModal">
    Launch demo modal
</button> -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".lessons-popup">Large
    modal</button> -->
<!-- Trigger Button -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target=".sections-popup">
    Large Sections
</button> -->

<div class="modal fade bd-example-modal-lg show  lessons-popup" tabindex="-1" role="dialog"
    aria-labelledby="myLargeModalLabel" aria-hidden="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content accordion-popup">

            <div class="modal-header d-flex align-items-center justify-content-between">
                <h3 class="accordion-popup__title"><?= get_phrase('Please choose the lesson  you want to enroll ?') ?>
                </h3>
                <div type="button" data-bs-dismiss="modal" aria-label="Close">
                   <i aria-hidden="true" class="fa-solid fa-xmark close-icon"></i>
                </div>
            </div>


            <div class="modal-body">

                <?php $sections = $this->crud_model->get_section('course', $course_id)->result_array();
                foreach ($sections as $key => $section): ?>
                    <div class="accordion" id="popup-lessons">

                        <div class="accordion-item">
                            <h2 class="accordion-header mt-0 " id="heading-popup<?php echo $section['id']; ?>">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-popup<?php echo $section['id']; ?>" aria-expanded="false"
                                    aria-controls="collapse-popup<?php echo $section['id']; ?>">

                                    <div class="d-flex flex-column">
                                        <h3><?php echo $section['title']; ?>
                                        </h3>

                                        <div>
                                            <span class="course__curriculum-accordion-section-duration">
                                                <?php echo $this->crud_model->get_lessons('section', $section['id'])->num_rows() . ' ' . site_phrase('lessons'); ?>
                                            </span>
                                            <span class="course__curriculum-accordion-section-duration">
                                                <?php echo $this->crud_model->get_total_duration_of_lesson_by_section_id($section['id']); ?>
                                            </span>
                                        </div>
                                    </div>

                                </button>
                            </h2>
                            <div id="collapse-popup<?php echo $section['id']; ?>" class="accordion-collapse collapse"
                                aria-labelledby="heading-popup<?php echo $section['id']; ?>"
                                data-bs-parent="#popup-lessons">
                                <div class="accordion-body">
                                    <ul class="p-0 m-0">

                                        <?php $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                                        foreach ($lessons as $lesson): ?>

                                            <li class="d-flex align-items-center justify-content-between">
                                                <div class="d-flex align-items-center ">
                                                    <input id="lesson_<?= $lesson['id'] ?>" name="lessons" type="checkbox"
                                                        class="styled-checkbox" value="<?= $lesson['id'] ?>"
                                                        <?= cart_items_get_index('lesson', $lesson['id']) !== null ? 'checked' : ''; ?>>

                                                    <h3 class="mb-0"> <?php echo $lesson['title']; ?></h3>
                                                </div>
                                                <span><?php echo $lesson['duration'] ?></span>
                                            </li>


                                        <?php endforeach; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>

                <?php endforeach; ?>


            </div>


            <div class="modal-footer">
                <a href="" class="w-100 d-flex align-items-center justify-content-center"> buy</a>
            </div>


        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade sections-popup" tabindex="-1" role="dialog" aria-labelledby="sectionsPopupLabel"
    aria-hidden="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content accordion-popup">
            <!-- Modal Title -->

            <div class="modal-header d-flex align-items-center justify-content-between">
                <h3 class="accordion-popup__title">
                    <?= get_phrase('Please choose the lesson you want to enroll in?') ?>
                </h3>
                <div type="button" data-bs-dismiss="modal" aria-label="Close">
                   <i aria-hidden="true" class="fa-solid fa-xmark close-icon"></i>
                </div>

            </div>

            <div class="modal-body">
                <?php
                $sections = $this->crud_model->get_section('course', $course_id)->result_array();
                foreach ($sections as $key => $section): ?>
                    <!-- Accordion Wrapper -->
                    <div class="accordion" id="popup-sections-<?php echo $section['id']; ?>">
                        <div class="accordion-item">
                            <h2 class="accordion-header mt-0" id="heading-sections-<?php echo $section['id']; ?>">


                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-sections-<?php echo $section['id']; ?>" aria-expanded="false"
                                    aria-controls="collapse-sections-<?php echo $section['id']; ?>">
                                    <div class="d-flex align-items-center">
                                        <input name="lessons" type="checkbox" class="styled-checkbox"
                                            value="<?= $lesson['id'] ?>" <?= cart_items_get_index('lesson', $lesson['id']) !== null ? 'checked' : ''; ?>>


                                        <div class="d-flex flex-column">

                                            <h3><?php echo $section['title']; ?></h3>

                                            <div>
                                                <span class="course__curriculum-accordion-section-duration">
                                                    <?php echo $this->crud_model->get_lessons('section', $section['id'])->num_rows() . ' ' . site_phrase('lessons'); ?>
                                                </span>
                                                <span class="course__curriculum-accordion-section-duration">
                                                    <?php echo $this->crud_model->get_total_duration_of_lesson_by_section_id($section['id']); ?>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </button>
                            </h2>
                            <div id="collapse-sections-<?php echo $section['id']; ?>" class="accordion-collapse collapse"
                                aria-labelledby="heading-sections-<?php echo $section['id']; ?>"
                                data-bs-parent="#popup-sections-<?php echo $section['id']; ?>">
                                <div class="accordion-body">
                                    <ul class="p-0 m-0">
                                        <?php
                                        $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                                        foreach ($lessons as $lesson): ?>
                                            <li class="d-flex align-items-center justify-content-between">
                                                <div class="d-flex align-items-center">
                                                    <i class="fa-regular fa-circle-play"></i>
                                                    <h3 class="mb-0"><?php echo $lesson['title']; ?></h3>
                                                </div>

                                                <span><?php echo $lesson['duration']; ?></span>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <!-- Buy Button -->
            <div class="modal-footer">
                <a href="#" class="btn btn-primary w-100 d-flex align-items-center justify-content-center mt-3">
                    Buy
                </a>
            </div>
        </div>
    </div>
</div>







<!-- Modal -->
<div class="modal fade course__modal" id="courseModal" tabindex="-1" role="dialog" aria-labelledby="courseModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-title d-flex align-items-center" id="courseModalLabel">
                    <i class="fa-solid fa-circle-check"></i>
                    <h5 class="mb-0 ">
                        Modal title
                    </h5>
                </div>
                <button type="button text-end" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="fa-solid fa-xmark"></i></span>
                </button>
            </div>
            <div class="modal-body">
                <div class="course__modal-content d-flex">
                    <div class="left">
                        <img src="<?php echo $this->crud_model->get_course_thumbnail_url($course_details['id']); ?>"
                            alt="" srcset="">
                    </div>
                    <div class="right">
                        <h2><?php echo $course_details['title']; ?></h2>
                        <ul class="rating mx-0 px-0  d-flex align-items-center">
                            <?php for ($i = 1; $i < 6; $i++): ?>
                                <?php if ($i <= $average_ceil_rating): ?>
                                    <li><i class="fa-solid fa-star "></i></li>
                                <?php else: ?>
                                    <li><i class="fa-regular fa-star"></i></li>
                                <?php endif; ?>
                            <?php endfor; ?>
                        </ul>
                        <p><?php echo $course_details['short_description']; ?></p>


                        <?php if ($course_details['is_free_course']): ?>
                            <h6><?php echo get_phrase('Free'); ?></h6>
                        <?php elseif ($course_details['discount_flag']): ?>
                            <h6><?php echo currency($course_details['discounted_price']); ?></h6>
                            <h6><?php echo currency($course_details['price']); ?></h6>
                        <?php else: ?>
                            <h6><?php echo currency($course_details['price']); ?></h6>
                        <?php endif; ?>

                    </div>
                </div>


            </div>
            <div class="modal-footer">
                <button type="button" class="back" data-dismiss="modal">back</button>
                <button type="button" class="go">go</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const selectElement = document.getElementById('exampleFormControlSelect1');
        const sections = new bootstrap.Modal(document.querySelector('.sections-popup'));
        const lessons = new bootstrap.Modal(document.querySelector('.lessons-popup'));

        selectElement.addEventListener('change', (event) => {
            if (event.target.value === 'sections') {
                sections.show(); // Show the modal when "sections" is selected
                lessons.hide(); // Hide the modal when "sections" is selected
            } else if (event.target.value === 'lessons') {
                sections.hide(); // Hide the modal when "lessons" is selected
                lessons.show(); // Show the modal when "lessons" is selected

            }

        });
    });
</script>