<section class="blogs">
    <div class="container">
        <div class="row">
        <div class="col-12">
                        <p class="blogs__total  ">
                            <?php if (isset($search_string) || isset($_GET['category'])):
                                echo site_phrase('total') . ' ' . $total_rows . ' ' . site_phrase('results');
                            else:
                                echo site_phrase('total') . ' ' . $total_rows . ' ' . site_phrase('articles');
                            endif; ?>
                        </p>
                    </div>
            <?php foreach ($blogs->result_array() as $blog): ?>
                <?php $user_details = $this->user_model->get_all_user($blog['user_id'])->row_array(); ?>
                <div class="col-lg-4 col-md-2 col-12">
                    <div class="blogs__content">
                        <div class="blogs__img">
                            <?php $blog_thumbnail = 'uploads/blog/thumbnail/' . $blog['thumbnail']; ?>
                            <?php if (file_exists($blog_thumbnail) && is_file($blog_thumbnail)): ?>
                                <img loading="lazy" src="<?php echo base_url($blog_thumbnail); ?>"
                                    alt="<?php echo $blog['title']; ?>">
                            <?php else: ?>
                                <img loading="lazy" src="<?php echo base_url('uploads/blog/thumbnail/placeholder.png'); ?>"
                                    alt="<?php echo $blog['title']; ?>">
                            <?php endif; ?>
                        </div>

                        <div class="blogs__top d-flex align-items-center justify-content-between">
                            <p><?php echo get_past_time($blog['added_date']); ?></p>
                            <h3><?php echo $this->crud_model->get_blog_categories($blog['blog_category_id'])->row('title'); ?>
                            </h3>
                        </div>
                        <div class="blogs__middle">
                            <h5><?php echo $blog['title']; ?></h5>
                            <p>
                                <?php echo ellipsis(strip_tags(htmlspecialchars_decode_($blog['description'])), 150); ?>
                            </p>
                        </div>
                        <div class="blogs__bottom d-flex justify-content-between flex-md-row flex-column bg-info ">
                            <div class="blogs__creator d-flex align-items-center ">
                                <img loading="lazy" class="rounded-circle"
                                    src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>">
                                <h5><?php echo $user_details['first_name'] . ' ' . $user_details['last_name']; ?>
                                </h5>
                            </div>


                            <a class="blogs__reade-more text-end"
                            href="<?php echo site_url('blog/details/' . slugify($blog['title']) . '/' . $blog['blog_id']); ?>">
                              
                                <?= get_phrase('Read More') ?>
                                <i class="fa-solid fa-arrow-right"></i>
                            </a>

                        </div>




                    </div>
                </div>
            <?php endforeach; ?>

            <div class="col-12 text-center">
                        <nav><?php echo $this->pagination->create_links(); ?></nav>
                    </div>
        </div>
    </div>

</section>






<?php include "blog_recent.php"; ?>