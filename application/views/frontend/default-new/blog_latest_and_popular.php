<!--------- Blog section start ---------->
<!--  -->
<section class="courses blog pb-3 mb-5">
    <div class="container ">
    <div class=" parent-latest">  
        <div class="latest-content">
        <h1 class="latest-class"><span><?php echo get_phrase('Latest from our blog'); ?></span></h1>
        <p class="latest-p"><?php echo get_phrase('Lorem ipsum dolor sit amet consectetur. Tortor iaculis eget semper cras. In tempor aliquam . ') ?></p>
</div>
<div class ="latest-link">
        <a href="<?php echo site_url('blogs'); ?>" class="link-view"><?php echo get_phrase('View all'); ?></a>
</div>
    </div>
        <div class="courses-card">
            <div class="row justify-content-center">
                <?php foreach($latest_blogs->result_array() as $latest_blog): ?>
                    <?php $user_details = $this->user_model->get_all_user($latest_blog['user_id'])->row_array(); ?>
                    <div class="col-lg-4 col-md-6 ">
                        <a href="<?php echo site_url('blog/details/'.slugify($latest_blog['title']).'/'.$latest_blog['blog_id']); ?>" class="courses-card-body">
                            <div class="courses-card-image">
                                <div class="courses-card-image">
                                    <?php $blog_thumbnail = 'uploads/blog/thumbnail/'.$latest_blog['thumbnail']; ?>
                                    <?php if(file_exists($blog_thumbnail) && is_file($blog_thumbnail)): ?>
                                        <img loading="lazy" src="<?php echo base_url($blog_thumbnail); ?>" alt="<?php echo $latest_blog['title']; ?>">
                                    <?php else: ?>
                                        <img loading="lazy" src="<?php echo base_url('uploads/blog/thumbnail/placeholder.png'); ?>" alt="<?php echo $latest_blog['title']; ?>">
                                    <?php endif; ?>
                                </div>
                                <div class="courses-card-image-text">
                                    <h3><?php echo $this->crud_model->get_blog_categories($latest_blog['blog_category_id'])->row('title'); ?></h3>
                                </div> 
                            </div>
                            <div class="courses-text">
                                <h5><?php echo $latest_blog['title']; ?></h5>
                                <p class="ellipsis-line-2"><?php echo ellipsis(strip_tags(htmlspecialchars_decode_($latest_blog['description'])), 150); ?></p>
                                    <div class="courses-price-border">
                                        <div class="courses-price">
                                            <div class="courses-price-left">
                                                <img loading="lazy" class="rounded-circle" src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>">
                                                <h5><?php echo $user_details['first_name'].' '.$user_details['last_name']; ?></h5>
                                            </div>
                                            <div class="courses-price-right ">
                                                <p><?php echo get_past_time($latest_blog['added_date']); ?></p>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                         </a>
                    </div>
                <?php endforeach; ?>
               
            </div>
        </div>
    </div>

    <?php if($popular_blogs->num_rows() > 0): ?>
        <div class="container">
        <div class=" parent-latest">  
        <div class="latest-content">
            <h1 class="latest-class"><span><?php echo get_phrase('Popular blogs'); ?></span></h1>
            <p class="latest-p"><?php echo get_phrase('Lorem ipsum dolor sit amet consectetur. Tortor iaculis eget semper cras. In tempor aliquam . ') ?></p>
            </div>
<div class ="latest-link">
<a href="<?php echo site_url('blogs'); ?>" class="link-view"><?php echo get_phrase('View all'); ?></a>

</div>
    </div>
            <div class="courses-card">
                <div class="row justify-content-center">
                    <?php foreach($popular_blogs->result_array() as $popular_blog): ?>
                        <?php $user_details = $this->user_model->get_all_user($popular_blog['user_id'])->row_array(); ?>
                        <div class="col-lg-4 col-md-6 ">
                            <a href="<?php echo site_url('blog/details/'.slugify($popular_blog['title']).'/'.$popular_blog['blog_id']); ?>" class="courses-card-body">
                                <div class="courses-card-image">
                                    <div class="courses-card-image">
                                        <?php $blog_thumbnail = 'uploads/blog/thumbnail/'.$popular_blog['thumbnail']; ?>
                                        <?php if(file_exists($blog_thumbnail) && is_file($blog_thumbnail)): ?>
                                            <img loading="lazy" src="<?php echo base_url($blog_thumbnail); ?>" alt="<?php echo $popular_blog['title']; ?>">
                                        <?php else: ?>
                                            <img loading="lazy" src="<?php echo base_url('uploads/blog/thumbnail/placeholder.png'); ?>" alt="<?php echo $popular_blog['title']; ?>">
                                        <?php endif; ?>
                                    </div>
                                    <div class="courses-card-image-text">
                                        <h3><?php echo $this->crud_model->get_blog_categories($popular_blog['blog_category_id'])->row('title'); ?></h3>
                                    </div> 
                                </div>
                                <div class="courses-text">
                                    <h5><?php echo $popular_blog['title']; ?></h5>
                                    <p class="ellipsis-line-2"><?php echo ellipsis(strip_tags(htmlspecialchars_decode_($popular_blog['description'])), 150); ?></p>
                                        <div class="courses-price-border">
                                            <div class="courses-price">
                                                <div class="courses-price-left">
                                                    <img loading="lazy" class="rounded-circle" src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>">
                                                    <h5><?php echo $user_details['first_name'].' '.$user_details['last_name']; ?></h5>
                                                </div>
                                                <div class="courses-price-right ">
                                                    <p><?php echo get_past_time($popular_blog['added_date']); ?></p>
                                                </div>
                                            </div>
                                        </div>
                                   </div>
                             </a>
                        </div>
                    <?php endforeach; ?>
                  
                </div>
            </div>
        </div>
    <?php endif; ?>
</section>
<!--------- Blog section end ---------->

<style>

.courses h1 span::before {
  
    background-image: url(../image/h-1-bn-shape-2.png);
    width: 116px;
    height: 21px;
    position: absolute;
    background-size: 119px;
    top: 31px;
    left: 89px;}




.latest-class{
 color:#353535;
font-size: 32px;
font-weight: 600;
line-height: 48px;
text-align: left;
text-underline-position: from-font;
text-decoration-skip-ink: none;

}
.latest-p{
   color:#5D5D5D;
font-size: 20px;
font-weight: 400;
line-height: 30px;
text-align: left;
text-underline-position: from-font;
text-decoration-skip-ink: none;

}
.parent-latest
{
    display:flex;
    justify-content: space-between;
}

.latest-content{
    width: 80%;

}
.latest-link{
   width: 20%;
 
   text-align: right;
   padding: 30px;
   padding-top: 130px;
   padding-right: 0px;
}
.link-view{
    color:#754FFE;
font-size: 24px;
font-weight: 500;
line-height: 36px;
text-align: left;
text-decoration-line: underline;
text-decoration-style: solid;
text-underline-position: from-font;
text-decoration-skip-ink: none;

}


@media (max-width: 992px) {
.latest-class{
font-size: 20px;
line-height: 30px;


}
.latest-p{
 font-size: 12px;
line-height: 18px;


}
.latest-link{
    display:none;
}

} 

</style>