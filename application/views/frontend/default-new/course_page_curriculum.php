<div class="accordion" id="accordionExample">
    <?php
    $sections = $this->crud_model->get_section('course', $course_id)->result_array();
    foreach ($sections as $key => $section): ?>
        <div class="accordion-item">
            <h2 class="accordion-header" id="<?= 'heading' . $key ?>">
                <button class="accordion-button collapsed" type="button" data-bs-target="#<?= 'collapse' . $key ?>"
                    aria-expanded="false" aria-controls="<?= 'collapse' . $key ?>">
                    <div class="d-flex flex-column align-items-start gap-2 ">

                        <!-- Study plan start-->
                        <?php if (date('d-M-Y-H-i-s', $section['start_date']) != date('d-M-Y-H-i-s', $section['end_date'])): ?>
                            <h3 style="margin-top: -10px;"><?php echo $section['title']; ?></h3>
                            <small class="text-12px text-muted mt-1 course__study-plan" data-bs-toggle="tooltip"
                                title="<?php echo get_phrase('Study plan') ?>">
                                <i class="far fa-calendar-alt "></i>
                                <?php if (date('d-M-Y', $section['start_date']) == date('d-M-Y', $section['end_date'])): ?>
                                    <?php echo date('d M Y', $section['start_date']); ?>:
                                    <?php echo date('h:i A', $section['start_date']) . ' - ' . date('h:i A', $section['end_date']); ?>
                                <?php else: ?>
                                    <?php echo date('d M Y h:i A', $section['start_date']) . ' - ' . date('d M Y h:i A', $section['end_date']); ?>
                                <?php endif ?>
                            </small>
                        <?php else: ?>
                            <h3><?= get_phrase('section') . ' ' . $key . ' ' . $section['title']; ?></h3>

                        <?php endif; ?>
                        <!-- Study plan END-->

                        <h6>
                            <?= $this->crud_model->get_lessons('section', $section['id'])->num_rows() . ' ' . site_phrase('lessons') . ' ' . $this->crud_model->get_total_duration_of_lesson_by_section_id($section['id']); ?>
                        </h6>
                    </div>
                </button>
            </h2>
            <div id="<?= 'collapse' . $key ?>" class="accordion-collapse collapse" aria-labelledby="<?= 'heading' . $key ?>"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ul class="course__lesson">
                        <?php $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                        foreach ($lessons as $lesson): ?>


                            <li>
                                <a href="#" onclick="actionTo('<?php echo site_url('home/play_lesson/' . $lesson['id']); ?>')"
                                    class="checkPropagation w-100">

                                    <div class=" d-flex justify-content-between  course__lesson-content">
                                        <div class="course__lesson-left d-flex align-items-center ">
                                            <i class="fa-regular fa-circle-play"></i>
                                            <h3> <?php echo $lesson['title']; ?></h3>
                                        </div>


                                        <?php if ($lesson['lesson_type'] == 'quiz'): ?>
                                            <div>
                                                <div>
                                                    <span>start date: <span style="color:#6610f2;"
                                                            class="fw-bold"><?php echo date('Y-m-d', $lesson['start_time']) ?></span>
                                                        ||
                                                    </span>
                                                    <span>end date: <span style="color:#6610f2;"
                                                            class="fw-bold"><?php echo date('Y-m-d', $lesson['end_time']) ?></span>
                                                    </span>
                                                </div>
                                                <div style="text-align:center;">
                                                    <span>duration: <span
                                                            style="color:#6610f2;"><?php echo $lesson['duration'] ?></span></span>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                        <div class="course__lesson-right d-flex  align-items-center">
                                            <?php if ($lesson['is_free']): ?>
                                                <span
                                                    onclick="lesson_preview('<?php echo site_url('home/play_lesson/' . $lesson['id'] . '/preview') ?>', '<?php echo $lesson['title']; ?>', 'lg')"
                                                    class=" preview checkPropagation cursor-pointer badge bg-light  "><i
                                                        class="fas fa-eye me-1 text-13px"></i>
                                                    <?php echo get_phrase('Preview') ?></span>
                                            <?php endif; ?>

                                            <span class="duration"><?php echo $lesson['duration']; ?></span>
                                        </div>

                                    </div>



                                </a>
                            </li>

                        <?php endforeach; ?>

                    </ul>

                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<script>
    // Ensure jQuery is used for consistent toggle behavior
    $(document).on('click', '.accordion-button', function () {
        var $this = $(this); // The clicked button
        var target = $this.attr('data-bs-target'); // Target accordion body

        // Toggle the current accordion
        if ($(target).hasClass('show')) {
            $(target).collapse('hide');
        } else {
            $('.accordion-collapse.show').collapse('hide'); // Close others
            $(target).collapse('show'); // Open current
        }
    });



</script>


