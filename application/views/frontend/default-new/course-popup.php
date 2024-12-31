<!-- Large modal -->



<style>




</style>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".lessons-popup">Large
    modal</button>

<div class="modal fade bd-example-modal-lg show  lessons-popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content accordion-popup">
            <h3 class="accordion-popup__title"><?= get_phrase('Please choose the lesson  you want to enroll ?') ?></h3>
            <?php
            $sections = $this->crud_model->get_section('course', $course_id)->result_array();
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
                            aria-labelledby="heading-popup<?php echo $section['id']; ?>" data-bs-parent="#popup-lessons">
                            <div class="accordion-body">
                                <ul class="p-0 m-0">

                                    <?php $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                                    foreach ($lessons as $lesson): ?>

                                        <li class="d-flex align-items-center justify-content-between">
                                            <div class="d-flex align-items-center ">
                                                <input id="lesson_<?= $lesson['id'] ?>" name="lessons" type="checkbox" class="styled-checkbox"
                                                    value="<?= $lesson['id'] ?>" <?= cart_items_get_index('lesson', $lesson['id']) !== null ? 'checked' : ''; ?>>
                                               
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



            <a href="" class="w-100 d-flex align-items-center justify-content-center"> buy</a>
        </div>
    </div>
</div>



<!-- Trigger Button -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target=".sections-popup">
    Large Sections
</button>

<!-- Modal -->
<div class="modal fade sections-popup" tabindex="-1" role="dialog" aria-labelledby="sectionsPopupLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content accordion-popup">
            <!-- Modal Title -->
            <h3 class="accordion-popup__title">
                <?= get_phrase('Please choose the lesson you want to enroll in?') ?>
            </h3>

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
                                <input  name="lessons" type="checkbox" class="styled-checkbox"
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
                            aria-labelledby="heading-sections-<?php echo $section['id']; ?>" data-bs-parent="#popup-sections-<?php echo $section['id']; ?>">
                            <div class="accordion-body">
                                <ul class="p-0 m-0">
                                    <?php
                                    $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                                    foreach ($lessons as $lesson): ?>
                                        <li class="d-flex align-items-center justify-content-between">
                                            <h3 class="mb-0"><?php echo $lesson['title']; ?></h3>
                                            <span><?php echo $lesson['duration']; ?></span>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>

            <!-- Buy Button -->
            <a href="#" class="btn btn-primary w-100 d-flex align-items-center justify-content-center mt-3">
                Buy
            </a>
        </div>
    </div>
</div>



<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>