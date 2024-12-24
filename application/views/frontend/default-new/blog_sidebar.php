<?php
$popular_categories = $this->crud_model->get_categories_with_blog_number(6);
$latest_blogs = $this->crud_model->get_latest_blogs(3);
?>






<div class="right-section">
    <div class="search">
        <div class="search-bar">
            <form action="<?php echo site_url('blogs'); ?>" method="get">
                <button type="submit" class="search-btn"><i
                        style=" max-width: 14px !important;min-height: 14px !important; margin-top:3px; color:#A1A1A1;"
                        class="fa-solid fa-magnifying-glass"></i></button>
                <input value="<?php if (isset($search_string) && !empty($search_string))
                    echo $search_string; ?>" type="text" name="search" class="form-control blog-search"
                    placeholder="<?php echo site_phrase('Type your keywords'); ?>" id="search-place">
                <button class="search2-btn"> Search</button>
            </form>
        </div>
    </div>





    <div class="title">
        <h4 class="blog-title"><?php echo get_phrase('Categories') ?></h4>
    </div>
    <div class="categories mb-4">
        <ul>
            <?php foreach ($popular_categories as $popular_category): ?>
                <?php $blog_category = $this->crud_model->get_blog_categories($popular_category['blog_category_id'])->row_array(); ?>
                <li class="d-flex align-items-center">
                    <a class="cateogry-number" href="<?php echo site_url('blogs?category=' . $blog_category['slug']); ?>"
                        class="me-1"><?php echo $blog_category['title']; ?></a>
                    <?php if ($popular_category['blog_number'] > 0): ?>
                        <span
                            class="badge bg-primary rounded-pill ms-auto"><?php echo $popular_category['blog_number']; ?></span>
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
        <a class=" cateogry-number text-14px mx-0 mt-4 text-muted"
            href="<?php echo site_url('blog/categories'); ?>"><?php echo site_phrase('all_categories'); ?></a>
    </div>
    <div class="title">
        <h4 class="blog-title"><?php echo get_phrase('Recent Posts') ?></h4>
    </div>

    <?php foreach ($latest_blogs->result_array() as $latest_blog): ?>
        <div class="post">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-12">
                    <a
                        href="<?php echo site_url('blog/details/' . slugify($latest_blog['title']) . '/' . $latest_blog['blog_id']); ?>">
                        <h5 class="blog-title"><?php echo $latest_blog['title']; ?></h5>
                    </a>
                    <p class="cateogry-number"><i class="fa-solid fa-calendar-days"></i>
                        <?php echo date('D, d M Y', $latest_blog['added_date']) ?></p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                    <?php $blog_thumbnail = 'uploads/blog/thumbnail/' . $latest_blog['thumbnail']; ?>
                    <?php if (file_exists($blog_thumbnail) && is_file($blog_thumbnail)): ?>
                        <img loading="lazy" src="<?php echo base_url($blog_thumbnail); ?>"
                            alt="<?php echo $latest_blog['title']; ?>">
                    <?php else: ?>
                        <img loading="lazy" src="<?php echo base_url('uploads/blog/thumbnail/placeholder.png'); ?>"
                            alt="<?php echo $latest_blog['title']; ?>">
                    <?php endif; ?>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>
<style>
    .courses h1 span::before {

        background-image: url(../image/h-1-bn-shape-2.png);
        width: 116px;
        height: 21px;
        position: absolute;
        background-size: 119px;
        top: 31px;
        left: 89px;
    }

    .right-section {
        padding: 20px;
    }

    .blog-title {

        font-size: 24px;
        font-weight: 400;
        line-height: 36px;
        text-align: left;
        text-underline-position: from-font;
        text-decoration-skip-ink: none;
        color: #1A1A1A;

    }

    .blog-search {
        max-width: 557px !important;
        min-height: 56px !important;
        color: #FDFDFD !important;
        border-radius: 10px !important;
        border: 1px solid #D6D6D6 !important;

    }

    input::placeholder {
        color: #A1A1A1 !important;
        font-size: 16px !important;
        font-weight: 400 !important;
        line-height: 24px !important;
        text-align: left !important;
        text-underline-position: from-font !important;
        text-decoration-skip-ink: none !important;

    }

    .search-btn {
        max-width: 14px !important;
        min-height: 14px !important;
        color: #A1A1A1;


    }

    .cateogry-number {
        color: #282828 !important;
        font-size: 18px !important;
        font-weight: 300 !important;
        line-height: 27px !important;
        text-align: left !important;
        text-underline-position: from-font;
        text-decoration-skip-ink: none;

    }

    .search2-btn {
        max-width: 131px;
        min-height: 42px;
        top: -49px;
        left: 236px;
        padding: 8px;
        background-color: #754FFE;
        border-radius: 8px;
        color: #FAF8F7;
        border: none;
        position: relative;

        font-size: 18px;
        font-weight: 500;
        line-height: 27px;




    }

    .blog-body .right-section .post p i {
        margin-right: 10px;
        color: #754FFE !important;
    }

    /* .blog-body .right-section .title {
    border-bottom: none !important;
    padding-bottom: 11px;
    
} */

    @media (max-width: 992px) {
        .blog-search {
            max-width: 277px !important;
            min-height: 46px !important;


        }

        input::placeholder {

            font-size: 12px !important;

            line-height: 18px !important;


        }

        .search2-btn {
            left: 500px;
            max-width: 82px;
            min-height: 33px;
            top: -42px;

            font-size: 12px;

            line-height: 18px;
        }

        .blog-search {
            max-width: 100% !important;


        }

        .right-section {
            padding: 20px 100px;
        }



    }
</style>