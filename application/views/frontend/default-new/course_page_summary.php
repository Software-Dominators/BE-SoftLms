<section class="course-summary">
    <div class="container">
        <div class="row">


            <div class="col-12">
                <div class="course-summary__details d-flex flex-column">
                    <div class="row ">
                        <div class="d-flex  course-summary_tag  col-md-3 col-6">
                            <?php if ($course_duration): ?>
                                <p> <i class="fa-regular fa-clock "></i></p>
                                <p><?php echo $course_duration; ?></p>
                            <?php endif; ?>
                        </div>



                        <div class="d-flex   course-summary_tag  col-md-3 col-6">

                            <p> <i class="far fa-calendar-alt "></i></p>

                            <p>
                                <span><?php echo get_phrase('Last Updated'); ?> :</span>
                                <?php if ($course_details['last_modified'] > 0): ?>
                                    <?php echo date('D, d-M-Y', $course_details['last_modified']); ?>
                                <?php else: ?>
                                    <?php echo date('D, d-M-Y', $course_details['date_added']); ?>
                                <?php endif; ?>
                            </p>

                        </div>


                    </div>

                    <div class="row">
                        <div class="d-flex align-items-center  course-summary_tag col-md-3 col-6">
                            <p> <i class="fa-regular fa-user text-15px mt-7px"></i></p>
                            <p><?php echo $number_of_enrolments ?>
                                <?php echo get_phrase('Enrolled'); ?>
                            </p>
                        </div>
                        <div class="d-flex align-items-center  course-summary_tag col-md-3 col-6">
                            <p><i class="fas fa-language text-15px mt-8px"></i></p>
                            <p><?php echo ucfirst($course_details['language']); ?></p>
                        </div>


                    </div>
                    <div class="course-summary__rating d-flex">
                        <ul class=" d-flex ">
                            <?php for ($i = 1; $i < 6; $i++): ?>
                                <?php if ($i <= $average_ceil_rating): ?>
                                    <li><i class="fa-solid fa-star t"></i></li>
                                <?php else: ?>
                                    <li><i class="fa-solid fa-star"></i></li>
                                <?php endif; ?>
                            <?php endfor; ?>

                        </ul>
                        <p>(<?php echo $number_of_ratings . ' ' . get_phrase('Reviews'); ?>)</p>
                    </div>



                </div>
            </div>



            <div class="course-summary__description">
                <h3><?php echo get_phrase('Course Description') ?></h3>
                <p>
                    <?php echo $course_details['description']; ?>
                </p>
            </div>


            <div class="course-summary__description course-summary__requirements">
                <h3><?php echo get_phrase('Requirements') ?></h3>
                <ul>
                    <?php foreach (json_decode($course_details['requirements']) as $requirement): ?>
                        <?php if ($requirement != ""): ?>
                            <li>
                                <i class="fa-regular fa-circle-check"></i>
                                <?php echo $requirement; ?>
                            </li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </ul>
            </div>


            <div class="course-summary__description course-summary__what-learn">
                <h3><?php echo get_phrase('What will i learn?') ?></h3>
                <ul >
                    <?php foreach (json_decode($course_details['outcomes']) as $outcome): ?>
                        <?php if ($outcome != ""): ?>
                            <li> <?php echo $outcome; ?></li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </ul>
            </div>

        </div>
    </div>
</section>