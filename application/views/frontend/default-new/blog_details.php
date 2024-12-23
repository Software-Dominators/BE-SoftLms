<?php $user_details = $this->user_model->get_all_user($blog_details['user_id'])->row_array(); ?>

<!--------- Blog section start ---------->
<section class="blog-body courses blog pb-3 mb-5">
    <div class="container">
        <h1 class="latest-class"><span><?php echo get_phrase('Inspirational Journeys'); ?></span></h1>
        <p class="latest-p"><?php echo get_phrase('Follow the Stories of Academics and Their Research Expeditions') ?></p>
</div>
        <div class="courses-card">
            <div class="row">
            <div class="sidebar-blog">
                    <?php include "blog_sidebar.php"; ?>
                </div>
                <div class="class-cards">
                    <div class="top">
                        <h3 class="latest-class"><?php echo $blog_details['title']; ?></h3>
                        <div class="profile-img">
                            <a href="<?php echo site_url('home/instructor_page/' . $user_details['id']); ?>">
                                <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>">
                            </a> 
                            <a href="#"><h6><?php echo $user_details['first_name'] . ' ' . $user_details['last_name']; ?></h6></a>
                            <p class="latest-p"><?php echo date('D, d M Y'); ?></p>
                        </div>

                        <?php $blog_banner = 'uploads/blog/banner/'.$blog_details['banner']; ?>
                        <?php if(file_exists($blog_banner) && is_file($blog_banner)): ?>
                            <img loading="lazy" src="<?php echo base_url($blog_banner); ?>" class="card-img-top radius-10" width="100%" alt="<?php echo $blog_details['title']; ?>">
                        <?php endif; ?>

                        <?php echo htmlspecialchars_decode_($blog_details['description']); ?>
                    </div>

                    <?php if(count(explode(',',$blog_details['keywords'])) > 1): ?>
                        <div class="left-tag flex-wrap">
                            <h3 class="latest-class"><?php echo get_phrase('Tags') ?>:</h3>
                            <?php foreach(explode(',',$blog_details['keywords']) as $value): ?>
                                <?php if(!$value) continue; ?>
                                <a href="#" class="mb-2"><?php echo $value; ?></a>
                            <?php endforeach ?>
                        </div>
                    <?php endif; ?>


                    <?php $blog_comments = $this->crud_model->get_blog_comments_by_blog_id($blog_details['blog_id']); ?>
                    <h1 class="latest-class"> <?php echo $blog_comments->num_rows().' '.get_phrase('Comments'); ?></h1>
                    <?php foreach($blog_comments->result_array() as $blog_comment): ?>
                            <?php $commenter_details = $this->user_model->get_all_user($blog_comment['user_id'])->row_array(); ?>
                        <div class="instructor-student-feed-back">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-2">
                                    <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($commenter_details['id']); ?>">
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-9 col-8">
                                    <div class="student-feed-back-text comment-student-feed-back-text">
                                        <h6 class="latest-class"><?php echo $commenter_details['first_name'] . ' ' . $commenter_details['last_name']; ?></h6>
                                        <p class="latest-p"><?php echo date('D, d M Y'); ?></p>
                                        <p class="latest-p std"><?php echo $blog_comment['comment']; ?></p>
                                        <a href="#" onclick="$('#comment_add<?php echo $blog_comment['blog_comment_id']; ?>').toggle(); $('#comment_edit<?php echo $blog_comment['blog_comment_id']; ?>').hide();"><?php echo get_phrase('Reply') ?></a>


                                        <!-- Comment reply form -->
                                        <form action="<?php echo site_url('blog/add_blog_comment/'.$blog_details['blog_id']); ?>" method="POST" id="comment_add<?php echo $blog_comment['blog_comment_id']; ?>" class="feedback-form d-hidden  ms-2 ps-1">
                                            <div class="single-input">
                                                <textarea name="comment" class="form-control my-3" placeholder="<?php echo get_phrase('Comment Here') ?>" style="height: 100px"></textarea>
                                            </div>
                                            <input type="hidden" name="parent_id" value="<?php echo $blog_comment['blog_comment_id']; ?>">
                                            <button type="submit" class="message-btn"><?php echo get_phrase('Submit') ?></button>
                                        </form>

                                        <!--Comment Edit form-->
                                        <form action="<?php echo site_url('blog/update_blog_comment/'.$blog_comment['blog_comment_id']); ?>" method="POST" id="comment_edit<?php echo $blog_comment['blog_comment_id']; ?>" class="feedback-form ms-2 ps-1 d-hidden">
                                            <div class="single-input">
                                                <textarea name="comment" class="form-control my-3" placeholder="<?php echo get_phrase('Comment Here') ?>" style="height: 100px"><?php echo $blog_comment['comment']; ?></textarea>
                                            </div>
                                            <button type="submit" class="message-btn"><?php echo get_phrase('Save changes') ?></button>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-1 col-sm-2 col-2">
                                    <?php if($this->session->userdata('user_id') == $blog_comment['user_id'] || $this->session->userdata('admin_login') == true): ?>
                                        <div class="settings-icon dropdown">
                                            <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-ellipsis-vertical"></i></a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="#" onclick="$('#comment_edit<?php echo $blog_comment['blog_comment_id']; ?>').toggle(); $('#comment_add<?php echo $blog_comment['blog_comment_id']; ?>').hide();"><?php echo get_phrase('Edit'); ?></a></li>
                                                <li><a class="dropdown-item" href="#" onclick="confirm_modal('<?php echo site_url('blog/delete_comment/'.$blog_comment['blog_comment_id'].'/'.$blog_details['blog_id']); ?>')"><?php echo get_phrase('Delete'); ?></a></li>
                                              </ul>                                     
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        <?php foreach($this->crud_model->get_blog_comments_by_parent_id($blog_comment['blog_comment_id'])->result_array() as $child_comment): ?>
                            <?php $child_commenter_details = $this->user_model->get_all_user($child_comment['user_id'])->row_array(); ?>
                                <div class="reply">
                                    <div class="row">
                                        <div class="col-lg-1 col-md-1 col-sm-1 col-2">
                                            <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($child_commenter_details['id']); ?>">
                                        </div>
                                        <div class="col-lg-10 col-md-10 col-sm-9 col-8">
                                            <div class="student-feed-back-text">
                                                <h6 class="latest-class"><?php echo $child_commenter_details['first_name'] . ' ' . $child_commenter_details['last_name']; ?></h6>
                                                <p class="latest-p"><?php echo date('D, d M Y'); ?></p>
                                                <p class="latest-p std"><?php echo $child_comment['comment']; ?></p>
                                            </div>
                                        </div>
                                        <div class="col-lg-1 col-md-1 col-sm-2 col-2">
                                            <?php if($this->session->userdata('user_id') == $child_comment['user_id'] || $this->session->userdata('admin_login') == true): ?>
                                                <div class="settings-icon dropdown">
                                                    <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-ellipsis-vertical"></i></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a class="dropdown-item" href="#" onclick="confirm_modal('<?php echo site_url('blog/delete_comment/'.$child_comment['blog_comment_id'].'/'.$blog_details['blog_id']); ?>')"><?php echo get_phrase('Delete'); ?></a></li>
                                                      </ul>                                     
                                                </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    <?php endforeach; ?>
                    <div class="comment instructor-student-feed-back">
                        <h1 class="latest-class"><?php echo get_phrase('Leave a Comment') ?></h1>
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="<?php echo site_url('blog/add_blog_comment/'.$blog_details['blog_id']); ?>" method="post" class="feedback-form">
                                    <div class="single-input mb-3">
                                        <textarea name="comment" class="form-control" placeholder="<?php echo get_phrase('Enter your comments here'); ?>"></textarea>
                                        <input type="hidden" name="parent_id" value="">
                                    </div>
                                    <button type="submit" class="message-btn px-5"><?php echo get_phrase('Submit') ?></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
</section>

<style>
    .instructor-student-feed-back img {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    margin-top:14px;
}
.modal-content {
  
    background-color:#fff !important;
   
}
.modal-header .modal-title {
    color: #434343 !important;
  
}
.btn-danger {
   
    text-decoration: none;
    background-color: var(--color-4) !important;
    padding: 7px 18px !important;
    border-radius: 5px !important;
    color: #fff !important;
    margin-left: 13px !important;
    --bs-btn-border-color: var(--color-4);
         --bs-btn-hover-border-color: var(--color-4);
         min-width: 100px;

}
.btn-secondary {
    padding: 7px 18px !important;
    border-radius: 5px !important;
    color: #fff !important;
    min-width: 100px;
}




    .courses h1 span::before {
  
  background-image: url(../image/h-1-bn-shape-2.png);
  width: 116px;
  height: 21px;
  position: absolute;
  background-size: 119px;
  top: 31px;
  left: 89px;}
    .courses-card{
        min-height:100vh !important;
    }
    .sidebar-blog{
background-color: #F8F7F7 !important;
max-width:380px !important;


min-height:100vh !important;




    }
    .class-cards{
        max-width: 845px !important;
        padding:0px 50px !important;
    }
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

@media (max-width: 992px) {
.latest-class{
font-size: 20px;
line-height: 30px;


}
.class-cards{
       padding:20px 50px !important;
    }
.latest-p{
 font-size: 12px;
line-height: 18px;


}
/* .sidebar-blog{
display:none;
 } */

.card-child {
    width: 100%;
} 
.sidebar-blog{

background-color: #F8F7F7 !important;
max-width:100% !important;


min-height:100vh !important;
}


} 

</style>