<div class="accordion" id="accordionExample">
    <?php
    $sections = $this->crud_model->get_section('course', $course_id)->result_array();
    foreach ($sections as $key => $section): ?>
        <div class="accordion-item">
            <h2 class="accordion-header" id="<?= 'heading' . $key ?>">
                <button class="accordion-button collapsed" type="button" data-bs-target="#<?= 'collapse' . $key ?>"
                    aria-expanded="false" aria-controls="<?= 'collapse' . $key ?>">
                    <div class="d-flex flex-column align-items-start">
                        <h3><?= get_phrase('section') . ' ' . $key . ' ' . $section['title']; ?></h3>

                        <h6>
                            <?= $this->crud_model->get_lessons('section', $section['id'])->num_rows() . ' ' . site_phrase('lessons') . ' ' . $this->crud_model->get_total_duration_of_lesson_by_section_id($section['id']); ?>
                        </h6>
                    </div>
                </button>
            </h2>
            <div id="<?= 'collapse' . $key ?>" class="accordion-collapse collapse" aria-labelledby="<?= 'heading' . $key ?>"
                data-bs-parent="#accordionExample">
                <div class="accordion-body">


                    <ul class="ac-lecture">
                        <?php $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                        foreach ($lessons as $lesson): ?>
                            <li>
                                <a href="#" onclick="actionTo('<?php echo site_url('home/play_lesson/' . $lesson['id']); ?>')"
                                    class="checkPropagation">
                                    <span class="d-flex align-items-center ellipsis-line-2">
                                        <i class="fa-regular fa-circle-play"></i>
                                        <?php echo $lesson['title']; ?>
                                    </span>

                                    <?php if ($lesson['lesson_type'] == 'quiz'): ?>
                                        <div>
                                            <div>
                                                <span>start date: <span style="color:#6610f2;"
                                                        class="fw-bold"><?php echo date('Y-m-d', $lesson['start_time']) ?></span> ||
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

                                    <?php if ($lesson['is_free']): ?>
                                        <div class="lecture-info ms-auto pe-2 me-2">
                                            <span
                                                onclick="lesson_preview('<?php echo site_url('home/play_lesson/' . $lesson['id'] . '/preview') ?>', '<?php echo $lesson['title']; ?>', 'lg')"
                                                class="checkPropagation cursor-pointer badge bg-light text-dark fw-400 text-13px"><i
                                                    class="fas fa-eye me-1 text-13px"></i>
                                                <?php echo get_phrase('Preview') ?></span>
                                        </div>
                                    <?php endif; ?>

                                    <div class="lecture-info" style="width: 60px"><?php echo $lesson['duration']; ?></div>
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


<div class="accordion curriculum-accordion mx-2">
    <?php
    $sections = $this->crud_model->get_section('course', $course_id)->result_array();
    foreach ($sections as $key => $section): ?>




        <!-- Accordion Area -->
        <div class="accordion-item">
            <h2 class="accordion-header mx-2">
                <button class="accordion-button <?php if ($key > 0)
                    echo 'collapsed'; ?>" type="button" data-bs-toggle="collapse"
                    data-bs-target="#curriculumSectionCol<?php echo $section['id']; ?>" aria-expanded="false"
                    aria-controls="curriculumSectionCol<?php echo $section['id']; ?>">
                    <div class="row w-100">
                        <div class="col-auto accordion-item-title d-flex flex-column">


                            <!-- Study plan start-->
                            <?php if (date('d-M-Y-H-i-s', $section['start_date']) != date('d-M-Y-H-i-s', $section['end_date'])): ?>
                                <span style="margin-top: -10px;"><?php echo $section['title']; ?></span>
                                <small class="text-12px text-muted mt-1" data-bs-toggle="tooltip"
                                    title="<?php echo get_phrase('Study plan') ?>">
                                    <i class="far fa-calendar-alt"></i>
                                    <?php if (date('d-M-Y', $section['start_date']) == date('d-M-Y', $section['end_date'])): ?>
                                        <?php echo date('d M Y', $section['start_date']); ?>:
                                        <?php echo date('h:i A', $section['start_date']) . ' - ' . date('h:i A', $section['end_date']); ?>
                                    <?php else: ?>
                                        <?php echo date('d M Y h:i A', $section['start_date']) . ' - ' . date('d M Y h:i A', $section['end_date']); ?>
                                    <?php endif ?>
                                </small>
                            <?php else: ?>
                                <span><?php echo $section['title']; ?></span>
                            <?php endif; ?>
                            <!-- Study plan END-->

                        </div>
                        <div class="col-auto ms-auto pe-0">
                            <span class="ms-auto me-2 pe-2 border-end text-14px text-muted fw-400">
                                <?php echo $this->crud_model->get_lessons('section', $section['id'])->num_rows() . ' ' . site_phrase('lessons'); ?>
                            </span>
                            <span class="me-0 text-14px text-muted fw-400">
                                <?php echo $this->crud_model->get_total_duration_of_lesson_by_section_id($section['id']); ?>
                            </span>
                        </div>
                    </div>
                </button>
            </h2>
            <div id="curriculumSectionCol<?php echo $section['id']; ?>" class="accordion-collapse collapse <?php if ($key == 0)
                   echo 'show'; ?>" data-bs-parent="#curriculumSection<?php echo $section['id']; ?>">
                <div class="accordion-body p-0">
                    <ul class="ac-lecture">
                        <?php $lessons = $this->crud_model->get_lessons('section', $section['id'])->result_array();
                        foreach ($lessons as $lesson): ?>
                            <li>
                                <a href="#" onclick="actionTo('<?php echo site_url('home/play_lesson/' . $lesson['id']); ?>')"
                                    class="checkPropagation">
                                    <span class="d-flex align-items-center ellipsis-line-2">
                                        <i class="fa-regular fa-circle-play"></i>
                                        <?php echo $lesson['title']; ?>
                                    </span>

                                    <?php if ($lesson['lesson_type'] == 'quiz'): ?>
                                        <div>
                                            <div>
                                                <span>start date: <span style="color:#6610f2;"
                                                        class="fw-bold"><?php echo date('Y-m-d', $lesson['start_time']) ?></span> ||
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

                                    <?php if ($lesson['is_free']): ?>
                                        <div class="lecture-info ms-auto pe-2 me-2">
                                            <span
                                                onclick="lesson_preview('<?php echo site_url('home/play_lesson/' . $lesson['id'] . '/preview') ?>', '<?php echo $lesson['title']; ?>', 'lg')"
                                                class="checkPropagation cursor-pointer badge bg-light text-dark fw-400 text-13px"><i
                                                    class="fas fa-eye me-1 text-13px"></i>
                                                <?php echo get_phrase('Preview') ?></span>
                                        </div>
                                    <?php endif; ?>

                                    <div class="lecture-info" style="width: 60px"><?php echo $lesson['duration']; ?></div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>