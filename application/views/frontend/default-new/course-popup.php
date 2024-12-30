<!-- Large modal -->



<style>
    .accordion-popup .accordion-button {
        display: flex;
        /* Enable flexbox for alignment */
        justify-content: space-between;
        /* Space out content and the icon */
        align-items: center;
        /* Center content vertically */
        position: relative;
        /* Allow absolute positioning for pseudo-elements */

    }

    .accordion-popup .accordion-button::after {
        content: "\f078";
        /* Font Awesome icon */
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
        font-size: 19px;
        color: #282828;
        transition: transform 0.3s ease;
        margin-left: auto;
        /* Push icon to the right */
        display: flex;
        align-items: center;
        /* Ensure vertical centering inside flex container */
    }

    .accordion-popup .accordion-button:not(.collapsed)::after {
        transform: rotate(180deg);
        /* Rotate on expand */
    }

    .accordion-popup .accordion-button.collapsed::after {
        transform: rotate(0deg);
        /* Default rotation */
    }



    .accordion-popup {
        padding: 32px 48px !important;
    }

    .accordion-popup__title {
        color: #282828;
        font-size: 28px;
        font-weight: 500;
        line-height: 42px;
        margin-bottom: 32px;
    }

    .accordion-popup .accordion .accordion-item:not(:last-child) {
        margin-bottom: 29px !important;
    }

    .accordion-popup .accordion-item {
        border: 1px solid #E4E4E4;
        border-radius: 16px;
    }

    .accordion-popup .accordion-header {
        padding: 12px 24px;
        background-color: #F5F6F5;

    }

    .accordion-popup .accordion-header {
        background: #F5F6F5 !important;
        padding: 12px 24px;
        border-radius: 16px 16px 0px 0px;


    }

    .accordion-popup .accordion-header:has(button.collapsed) {
        border-radius: 16px !important;
    }

    .accordion-popup .accordion-button {
        background: inherit !important;
        padding: 0 !important;
    }

    .accordion-popup .accordion-header button {
        background: inherit !important;
    }

    .accordion-popup .accordion-header h3 {
        color: #282828;
        font-size: 20px;
        font-weight: 400;
        line-height: 30px;
        margin-bottom: 4px;

    }

    .accordion-popup .accordion-header span {
        font-size: 16px;
        font-weight: 300;
        line-height: 24px;
        color: #5D5D5D;

    }

    .accordion-popup ul li:not(:last-child) {
        margin-bottom: 24px;

    }

    .accordion-popup ul li h3,
    .accordion-popup ul li span {
        color: #353535;
        font-size: 16px;
        font-weight: 400;
        line-height: 24px;


    }


    .accordion-popup a {
        background: var(--primary-color);
        font-size: 18px;
        font-weight: 500;
        line-height: 27px;
        height: 48px;
        color: var(--button-text-color);
        margin-top: 40px;
        border-radius: 8px;
    }


    /* Style the checkbox */
.styled-checkbox {
    appearance: none; /* Remove default browser styling */
    -webkit-appearance: none; /* For Safari */
    width: 24px; /* Size of the checkbox */
    height: 24px;
    border: 1.3px solid #754FFE;
    border-radius: 50%; /* Make it circular */
    outline: none;
    cursor: pointer;
    transition: all 0.3s ease;
}

/* Change border and background color when checked */
.styled-checkbox:checked {
    background-color:  #754FFE; /* Background color when checked */
    border: 2px solid white;
    outline: 1px solid #754FFE;
}



</style>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Large
    modal</button>

<div class="modal fade bd-example-modal-lg show" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
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
                                            <div class="d-flex align-items-center gap-2">
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




<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>