<!---------- Bread Crumb Area Start ---------->



<!-- <header class="contact-header header">
    <div class="container">
        <div class="row">
            <div class="col-12 breadcrumb__top d-flex ">
                <a href="<?php echo site_url(); ?>" class="">
                    <i class="fa-solid fa-house"></i>
                    <span class="breadcrumb__home-link"><?php echo get_phrase('Home') ?></span>
                </a>
                <a href="#">
                    <i class="fa-solid fa-chevron-right"></i>
                    <span class="breadcrumb__active-link"><?php echo $page_title; ?></span>
                </a>
            </div>
            <div class="col-12 breadcrumb__bottom">
                <h1 class="breadcrumb__title"><?php echo $page_title; ?></h1>
            </div>
        </div>
    </div>
</header> -->



<section>
    <div class="bread-crumb">
        <div class="container">
            <div class="row">
                <div class="col-auto">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="<?php echo site_url(); ?>">
                                <i class="fa-solid fa-house"></i>
                                    <span><?php echo get_phrase('Home') ?></span>
                                </a>
                            </li>
                            <li><i class="fa-solid fa-chevron-right"></i></li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <span><?php echo $page_title; ?></span>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="
                    
                    
                    "><?php echo $page_title; ?></h1>
                </div>
                <!-- <div class="col-3 ms-auto d-none d-sm-inline-block">
                    <div class="book-img">
                        <img loading="lazy"
                            src="<?php echo base_url('assets/frontend/default-new/image/brd-book.png') ?>" alt="">
                    </div>
                </div> -->
            </div>
        </div>
    </div>
</section>
<!---------- Bread Crumb Area End ---------->