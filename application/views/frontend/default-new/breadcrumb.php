<!---------- Bread Crumb Area Start ---------->


<section>
    <div class="bread-crumb">
        <div class="container ">
            <div class="row align-items-center ">
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