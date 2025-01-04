

<?php
$latest_blogs = $this->crud_model->get_latest_blogs(3);
?>

<section class="recent-blog">
    <div class="container">
        <div class="row">

        <h2><?php echo get_phrase('Recent Posts') ?></h2>
            <?php foreach ($latest_blogs->result_array() as $latest_blog): ?>

                <div class="col-lg-4 col-md-6">
                    <div class="recent-blog__content d-flex ">
                        <a class="recent-blog__left"
                            href="<?php echo site_url('blog/details/' . slugify($latest_blog['title']) . '/' . $latest_blog['blog_id']); ?>">
                            <?php $blog_thumbnail = 'uploads/blog/thumbnail/' . $latest_blog['thumbnail']; ?>
                            <?php if (file_exists($blog_thumbnail) && is_file($blog_thumbnail)): ?>
                                <img loading="lazy" src="<?php echo base_url($blog_thumbnail); ?>"
                                    alt="<?php echo $latest_blog['title']; ?>">
                            <?php else: ?>
                                <img loading="lazy" src="<?php echo base_url('uploads/blog/thumbnail/placeholder.png'); ?>"
                                    alt="<?php echo $latest_blog['title']; ?>">
                            <?php endif; ?>
                        </a>

                        <div class="recent-blog__right ">
                            <a
                                href="<?php echo site_url('blog/details/' . slugify($latest_blog['title']) . '/' . $latest_blog['blog_id']); ?>">
                                <?php 
echo strlen($latest_blog['title']) > 15 ? substr($latest_blog['title'], 0, 20) . '...' : $latest_blog['title']; 
?>
                            </a>
                            <p> <?php echo date('D, d M Y', $latest_blog['added_date']) ?></p>

                        </div>
                    </div>

                </div>

        

        <?php endforeach; ?>



    </div>
    </div>

</section>