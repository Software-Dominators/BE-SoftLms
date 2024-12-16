


<?php if (course_progress($course_id) == 100): ?>
    <div class="lesson__certificate-completed">

        <div class="d-flex justify-content-center align-items-center flex-column">
            <img src="<?= site_url('assets/frontend/design-one/assets/images/lesson/congratulation.svg') ?>"
                alt="certificate">

            <h4><?php echo get_phrase('congratulations'); ?></h4>
            <p><?php echo get_phrase('You have completed your course successfully'); ?>.</p>

            <a
                href="<?php echo $this->certificate_model->get_certificate_url($this->session->userdata('user_id'), $course_id); ?>"><?= get_phrase('Get Certificate') ?></a>

        </div>
    </div>
<?php else: ?>
    <div class="lesson__certificate-not-completed d-flex justify-content-center flex-column">

        <div class="progress-bar" data-percent="<?php echo course_progress($course_id); ?>" data-duration="1000"
            data-color="#ccc, #198754"><span><?php echo course_progress($course_id); ?>%</span></div>

        <h6><?php echo get_phrase('You can download the course completion certificate after completing the course 100 %'); ?>
        </h6>

    </div>

<?php endif; ?>


<script>
    $(".progress-bar").loading();
</script>





