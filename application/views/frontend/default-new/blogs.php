

<section class="blog-section">
 
    <div class="container-lg position-relative py-5">
    <div class="row home-blog">
                <div class="col-auto">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="http://localhost/lmsproject/lms-front-end/">
                                    <img loading="lazy" class="brd-home mb-2" src="http://localhost/lmsproject/lms-front-end/assets/frontend/default-new/image/Shape.svg">
                                    <span class="breadcrumb-home">Home</span>
                                </a>
                            </li>
                            <li class=" breadcrumb-icon"><i class="fa-solid fa-chevron-right"></i></li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <span class=" breadcrumb-page">Blog</span>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="breadcrumb-head"><?php echo get_frontend_settings('blog_page_title'); ?></h1>
                    <div class="p-blog"><?php echo get_frontend_settings('blog_page_subtitle'); ?></div>
            </div>
                </div>
                <div class="col-3 ms-auto d-none d-sm-inline-block">
                    <div class="book-img">
                        
                    </div>
                </div>
            </div>
    
  
</section>

<?php include $included_page; ?>
<style>
.courses h1 span::before {
  
  background-image: url(../image/h-1-bn-shape-2.png);
  width: 116px;
  height: 21px;
  position: absolute;
  background-size: 119px;
  top: 31px;
  left: 89px;}


.p-blog{
  color:#FDFDFD;
font-size: 18px;
font-weight: 400;
line-height: 27px;
text-align: left;
text-underline-position: from-font;
text-decoration-skip-ink: none;

}



.blog-section{
  
    background-image: url('<?php echo site_url('assets/frontend/default-new/image/Frame 1261153128.svg') ?>') !important;
    background-size: cover;
    background-position: center;
    position: relative;
}


 .breadcrumb-head{
  color:#FFFFFF !important; 
font-size: 3.5rem !important;
font-weight: 600 !important;
line-height: 5.25rem !important;
text-align: left !important;
text-underline-position: from-font !important;
text-decoration-skip-ink: none !important;

}



.breadcrumb-item .breadcrumb-page{
font-weight: 500 !important;
color:#FFD400  !important;

}

.breadcrumb-item .breadcrumb-home{
    font-weight: 400 !important;
    color: #EFF2F1 !important;

}

.breadcrumb-item .breadcrumb-home  ,.breadcrumb-item .breadcrumb-page{
font-size: 1.5rem !important;
line-height: 2.25rem !important;
text-align: left !important;
text-underline-position: from-font !important;
text-decoration-skip-ink: none !important;

}
.breadcrumb-icon i {
    font-size:1.5rem; 
margin-top:  0.125rem !important;
margin-left: 0.5rem !important;
color:#EFF2F1 !important;


}
.bread-crumb .brd-home {
    width: 1.125rem !important;
height: 1.219rem !important;
margin-left:0.188rem ;

}


.bread-crumb {
    background-image: url(assets/frontend/default-new/image/Frame 1261153128.svg);
     background-size: cover !important;
}
.col-auto {
    flex: 0 0 auto;
    width: auto;
    margin-bottom:20px;
    

}
.home-blog{
    
  align-items: center;
  justify-content: center;
}
@media (max-width: 992px) {
    .p-blog{
  color:#FDFDFD;
font-size: 12px;

line-height: 18px;

}  
 
     .breadcrumb-head{
        
     font-size: 2.25rem !important;
     line-height: 3.375rem !important; }
     .breadcrumb-item .breadcrumb-page ,.breadcrumb-item .breadcrumb-home{
    font-size: 1rem !important;
   line-height: 1.5rem !important;

     }
     .bread-crumb .brd-home {
    width: 0.875rem !important;
height: 0.938rem !important;
margin-left:0.125rem ;
margin-top:0.125rem ;

}
.breadcrumb-icon i {
   font-size:0.563rem; 
  margin-top:  0.125rem !important;




}
    
    
    }
  


    







</style>