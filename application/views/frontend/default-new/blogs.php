<header class=" breadcrumb-blogs">
    <div class="container">
        <div class="row">
            <div class="col-12 breadcrumb-blogs__top d-flex ">
                <a href="<?php echo site_url(); ?>" class="d-flex justify-content-start align-items-center">
                    <i class="fa-solid fa-house"></i>
                    <span class="breadcrumb-blogs__home-link"><?php echo get_phrase('Home') ?></span>
                </a>
                <a href="#" class="d-flex justify-content-start align-items-center">
                    <i class="fa-solid fa-chevron-right"></i>
                    <span class="breadcrumb-blogs__active-link"><?php echo $page_title; ?></span>
                </a>
            </div>
            <div class="col-12 breadcrumb-blogs__bottom">
                <h1><?php echo get_frontend_settings('blog_page_title'); ?></h1>
                <p><?php echo get_frontend_settings('blog_page_subtitle'); ?></p>
            </div>
        </div>
    </div>
</header>




<?php
$popular_categories = $this->crud_model->get_categories_with_blog_number(6);
$latest_blogs = $this->crud_model->get_latest_blogs(3);
?>


<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<style>
    .blogs-filter__category {
        padding: 11px 39px;
        font-size: 16px;
        font-weight: 500;
        line-height: 25.6px;
        color: #754FFE !important;
        border: 1px solid #754FFE;
        border-radius: 24px;
        margin: 0;
        /* Ensure no additional margins */
        display: inline-block;
        /* Prevent extra spacing from inline elements */
    }

    .blogs-filter__category.active {
        background: #754FFE24;
        border: none;
    }

    .swiper {
        width: 100%;
    }

    .swiper-wrapper {
        display: flex;
        align-items: center;
        gap: 16px;
        /* Set exact spacing between slides */
        padding: 0;
        /* Remove padding if any */
        margin: 0;
        /* Remove margin if any */
        justify-content: start !important;
    }

    .swiper-slide {
        width: auto !important;
        /* Ensure slides adjust to content size */
        flex-shrink: 0;
        /* Prevent slides from shrinking */
        margin: 0 !important;
        /* Remove extra margin */
        display: inline-block;
        /* Prevent block-level behavior */
    }
</style>
<section class="blogs-filter">
    <div class="container">
        <div class="row">

            <div class="col-6">
                <form action="<?php echo site_url('blogs'); ?>" method="get" class="blogs-filter__form">
                    <input value="<?php if (isset($search_string) && !empty($search_string))
                        echo $search_string; ?>" type="text" name="search" class="form-control"
                        placeholder="<?php echo site_phrase('Type your keywords'); ?>" id="search-place">
                    <button type="submit"><?= get_phrase('Search') ?></button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                </form>
            </div>

            <div class="col-6">
                
            </div>

            <div class="col-12">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper justify-content-start  ">
                        <div class="swiper-slide ">
                            <a class=" blogs-filter__category active" href="<?php echo site_url('blog/categories'); ?>">
                                <?php echo site_phrase('All'); ?>
                            </a>
                        </div>
                        <?php foreach ($popular_categories as $popular_category): ?>
                            <?php $blog_category = $this->crud_model->get_blog_categories($popular_category['blog_category_id'])->row_array(); ?>

                            <div class="swiper-slide  ">
                                <a class=" blogs-filter__category"
                                    href="<?php echo site_url('blogs?category=' . $blog_category['slug']); ?>">
                                    <?php echo $blog_category['title']; ?>
                                </a>
                            </div>
                        <?php endforeach; ?>


                    </div>
                </div>
            </div>



        </div>
    </div>
</section>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        new Swiper('.mySwiper', {
            slidesPerView: 'auto', // Automatically adjusts slide size
            spaceBetween: 16,     // 10px space between slides
            freeMode: true,       // Enables free scrolling
        });
    });
</script>


<?php include $included_page; ?>