<div class="course__instructor  ">
    <?php $multi_instructor_id_arr = explode(',', $course_details['user_id']); ?>
    <?php foreach ($multi_instructor_id_arr as $instructor_id): ?>
        <?php if ($instructor_id > 0): ?>
            <?php $instructor = $this->user_model->get_all_user($instructor_id)->row_array(); ?>

                <div class="course__instructor-card d-flex  ">
                    <div class="left">
                        <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($instructor['id']); ?>">
                    </div>

                    <div class="right w-100 d-flex flex-column">
                        <h2><?php echo $instructor['first_name'] . ' ' . $instructor['last_name']; ?>
                        </h2>
                        <h6><?php echo $instructor['title']; ?></h6>
                        <p><?php echo ($instructor['biography']) ? strip_tags($instructor['biography']) : ''; ?></p>



                        <div class="social">
                            <?php foreach (json_decode($instructor['social_links'], true) as $key => $social_link): ?>
                                <?php if (!$social_link)
                                    continue; ?>
                                <a href="<?php echo $social_link; ?>">
                                    <?php if ($key == 'facebook'): ?>
                                        <i class="fa-brands fa-facebook-f" data-bs-toggle="tooltip"
                                            title="<?php echo get_phrase('Facebook'); ?>"></i>
                                    <?php elseif ($key == 'twitter'): ?>
                                        <i class="fa-brands fa-twitter" data-bs-toggle="tooltip"
                                            title="<?php echo get_phrase('Twitter'); ?>"></i>
                                    <?php elseif ($key == 'linkedin'): ?>
                                        <i class="fa-brands fa-linkedin" data-bs-toggle="tooltip"
                                            title="<?php echo get_phrase('Linkedin'); ?>"></i>
                                    <?php endif; ?>
                                </a>
                            <?php endforeach; ?>
                        </div>




                        <div class="text-end mt-auto ">
                            <a class="view-profile mt-auto"
                                href="<?php echo site_url('home/instructor_page/' . $instructor_id) ?>"
                                target="_blank"><?php echo get_phrase('View Profile'); ?></a>

                        </div>
                    </div>


                </div>

           

        <?php endif; ?>
    <?php endforeach; ?>
</div>