<section class="newsletter">
    <div class="container">
        <div class="row">
            <!-- first -->
            <div class="col-md-3">
                <a href="<?php echo site_url('admin/newsletter_history/pending') ?>">
                    <div class="newsletter__content">

                        <img src="<?= site_url('../assets/backend/images/newsletter/clock.svg') ?>">
                        <h6>2</h6>
                        <p><?php echo get_phrase('Pending newsletter'); ?></p>
                        <small><?php echo get_phrase('(waiting to be sent)') ?></small>

                    </div>
                </a>
            </div>

            <!-- second -->

            <div class="col-md-3">
                <a href="<?php echo site_url('admin/newsletter_history/pending') ?>">
                    <div class="newsletter__content">

                        <img src="<?= site_url('../assets/backend/images/newsletter/clock.svg') ?>">
                        <h6>2</h6>
                        <p><?php echo get_phrase(' Sent newsletter'); ?></p>
                        <small><?php echo get_phrase('( Successfully sent)') ?></small>

                    </div>
                </a>
            </div>

            <!-- third -->

            <div class="col-md-3">
                <a href="<?php echo site_url('admin/newsletter_history/faild') ?>">
                    <div class="newsletter__content">

                        <img src="<?= site_url('../assets/backend/images/newsletter/clock.svg') ?>">

                        <h6>2</h6>
                        <p><?php echo get_phrase(' Failed newsletter'); ?></p>
                        <small><?php echo get_phrase('( waiting for the next cue)') ?></small>

                    </div>
                </a>
            </div>
            <!-- fourth -->

            <div class="col-md-3">
                <a href="<?php echo site_url('admin/newsletter_history/unable') ?>">
                    <div class="newsletter__content">

                        <img src="<?= site_url('../assets/backend/images/newsletter/clock.svg') ?>">
                        <h6>2</h6>
                        <p><?php echo get_phrase(' Unable to send'); ?></p>
                        <small><?php echo get_phrase('( 10 attempts failed)') ?></small>
                        <div>
                            <a href="" class="send-manually"><?= get_phrase("click_to_send_manually") ?></a>

                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>