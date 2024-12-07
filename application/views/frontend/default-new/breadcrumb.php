<!---------- Bread Crumb Area Start ---------->
<header class="breadcrumb">
    <img src="<?php echo base_url('assets/frontend/design-one/assets/images/breadcrumb/top.svg'); ?>" class="breadcrumb__top-img">
    <img src="<?php echo base_url('assets/frontend/design-one/assets/images/breadcrumb/bottom.svg'); ?>" class="breadcrumb__bottom-img">
    
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

</header>

