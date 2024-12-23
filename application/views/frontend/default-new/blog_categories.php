<?php
    $categories = $this->crud_model->get_blog_categories()->result_array();
?>

<section class="blog-body courses blog pb-3 mb-5">
    <div class="container">
        <h1 class="text-center"><span><?php echo get_phrase('Inspirational Journeys'); ?></span></h1>
        <p class="text-center"><?php echo get_phrase('Follow the Stories of Academics and Their Research Expeditions') ?></p>
        <div class="courses-card">
            <div class="row">
                <div class="col-lg-8">

                    <div class="row justify-content-around pt-4">
                    <?php
    $categories = $this->crud_model->get_blog_categories()->result_array();
?>

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
                <div class="class-cards container">

                    <div class="row justify-content-around pt-4 min-height">
                        <?php foreach($categories as $category): ?>
                            <div class="col-md-6 c-width">
                                <?php $number_of_blog = $this->crud_model->get_blogs_by_category_id($category['blog_category_id'])->num_rows(); ?>
                                <div class="list-group border radius-10 my-2">
                                    <a href="<?php echo site_url('blogs?category='.$category['slug']); ?>" class="p-3 list-group-item list-group-item-action border-0" aria-current="true" style="height: 118px;">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h6 class="mb-1 latest-class c-head"><?php echo $category['title']; ?></h6>
                                            <?php if($number_of_blog > 0): ?>
                                                <span class="badge bg-primary rounded-pill c-number"><?php echo $number_of_blog; ?></span>
                                            <?php endif; ?>
                                        </div>
                                        <small class="ellipsis-line-3"><?php echo $category['subtitle']; ?></small>
                                    </a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
</section>



<style>
.min-height{
    min-height:100px !important;
}



    .c-head{
       color: var(--color-4) !important;
     

    }
    .c-number{
       max-height: 20px !important;
       margin-top:14px !important;
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
.c-width{
   width: 100% !important;  
}
.c-number{
       max-height: 20px !important;
       margin-top:0px !important;
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

</style>         <?php foreach($categories as $category): ?>
                            <div class="col-md-6">
                                <?php $number_of_blog = $this->crud_model->get_blogs_by_category_id($category['blog_category_id'])->num_rows(); ?>
                                <div class="list-group border radius-10 my-2">
                                    <a href="<?php echo site_url('blogs?category='.$category['slug']); ?>" class="p-3 list-group-item list-group-item-action border-0" aria-current="true" style="height: 118px;">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h6 class="mb-1"><?php echo $category['title']; ?></h6>
                                            <?php if($number_of_blog > 0): ?>
                                                <span class="badge bg-primary rounded-pill"><?php echo $number_of_blog; ?></span>
                                            <?php endif; ?>
                                        </div>
                                        <small class="ellipsis-line-3"><?php echo $category['subtitle']; ?></small>
                                    </a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="col-lg-4">
                    <?php include "blog_sidebar.php"; ?>
                </div>
            </div>
        </div>
    </div>
</section>