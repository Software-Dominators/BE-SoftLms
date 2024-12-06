<?php
$selected_category = isset($_GET['category']) ? $_GET['category'] : 'all';
$selected_price = isset($_GET['price']) ? $_GET['price'] : 'all';
$selected_level = isset($_GET['level']) ? $_GET['level'] : 'all';
$selected_language = isset($_GET['language']) ? $_GET['language'] : 'all';
$selected_rating = isset($_GET['rating']) ? $_GET['rating'] : 'all';
$selected_sorting = isset($_GET['sort_by']) ? $_GET['sort_by'] : 'all';
?>

<header class="course-header d-flex  align-items-center">
    <div class="container ">
        <div class="row justify-content-md-between">
            <div class="col-md-6 row  ">
                <div class="col-md-12">

                    <div class="course-header__top">
                        <a href="<?php echo site_url(); ?>" class="">
                            <i class="fa-solid fa-house"></i>
                            <span class="course-header__top-home"><?php echo get_phrase('Home') ?></span>
                        </a>

                        <a href="#">
                            <i class="fa-solid fa-chevron-right"></i>
                            <span class="course-header__top-active"><?php echo $page_title; ?></span>
                        </a>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="course-header__bottom">
                        <h1><?php echo $page_title; ?></h1>
                    </div>
                </div>
            </div>

            <div class="col-md-5 px-md-0 ">

                <form action="<?php echo site_url('home/search'); ?>" method="get" class="course-search-form">
                    <input class="form-control " type="text"
                        placeholder="<?php echo get_phrase('What do you want to learn'); ?>" name="query">
                    <button type="submit">
                        Search
                    </button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                </form>

            </div>

        </div>
    </div>

</header>


<section class="course-wrapper">
    <div class="container-fluid">
        <div class="row">


        <div class="col-lg-3 col-md-3 col-sm-4 col-12 ps-0 h-100  filter-side">
                <?php include "courses_page_sidebar.php"; ?>
            </div>
            <div class="col-lg-9 col-md-12 ">
                <?php include 'courses_page_' . $layout . '_layout.php'; ?>

                <?php if (count($courses) == 0): ?>
                    <div class="not-found w-100 text-center d-flex align-items-center flex-column">
                        <img loading="lazy" width="80px" src="<?php echo base_url('assets/global/image/not-found.svg'); ?>">
                        <h5><?php echo get_phrase('Course Not Found'); ?></h5>
                        <p><?php echo get_phrase('Sorry, try using more similar words in your search.') ?></p>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>




<script type="text/javascript">
    function filterCourse() {
        //sorting value added to the filter form
        var sort_by = $('#sorting_select_input').val();
        $('#sorting_hidden_input').val(sort_by);

        $('#course_filter_form').submit();
    }
</script>


<script>
 $(document).ready(function () {
    function updateContainerClass() {
        if ($(window).width() <= 992) {
            $(".course-wrapper .container-fluid")
                .removeClass("container-fluid")
                .addClass("container");
        } else {
            $(".course-wrapper .container")
                .removeClass("container")
                .addClass("container-fluid");
        }
    }

    // Run on page load
    updateContainerClass();

    // Run on window resize
    $(window).resize(function () {
        updateContainerClass();
    });
});

</script>