<!---------- Bread Crumb Area Start ---------->
<!---------- Bread Crumb Area Start ---------->
<style>
    .breadcrumb {
  min-height: 307px;
  background-color: var(--primary-color) !important;
  position: relative;
  margin-bottom: 40px;
}

.breadcrumb__top-img {
  position: absolute;
  top: 0;
  left: 0;

  height: 90%;
}

.breadcrumb__bottom-img {
  position: absolute;
  bottom: 0;
  right: 0;
  height: 90%;
}

.breadcrumb .breadcrumb__top {
  /* margin-top: 58px; */
  gap: 8px;
}

.breadcrumb .breadcrumb__top a,
.breadcrumb span {
  line-height: 36px !important;
  font-size: 24px !important;
  font-weight: 500 !important;
}

.breadcrumb .breadcrumb__top i {
  font-size: 24px !important;
  color: var(--light-withe-color);
}

.breadcrumb .breadcrumb__home-link {
  color: var(--light-withe-color);
}

.breadcrumb .breadcrumb__active-link {
  color: var(--dark-orange-color);
}

.breadcrumb .breadcrumb__bottom {
  margin-top: 16px;
}

.breadcrumb .breadcrumb__title {
  font-size: 56px;
  font-weight: 600;
  line-height: 84px;

  color: var(--white-color);
}

@media (max-width: 992px) {
  .breadcrumb {
    min-height: 213px;
    margin-bottom: 16px;
  }
  .breadcrumb .breadcrumb__bottom {
    margin-top: 8px;
    margin-inline-start: 10px;
  }

  .breadcrumb .breadcrumb__title {
    font-size: 36px;
    font-weight: 600;
    line-height: 54px;
 
  }
  .breadcrumb .breadcrumb__top a, .breadcrumb__top i
.breadcrumb span {
  line-height: 24px !important;
  font-size: 16px !important;
}
.course-bundle__content {
    padding: 33px 24px ;
}
}

</style>
<header class="breadcrumb ">
    <img src="<?php echo base_url('assets/frontend/design-one/assets/images/breadcrumb/top.svg'); ?>"
        class="breadcrumb__top-img">
    <img src="<?php echo base_url('assets/frontend/design-one/assets/images/breadcrumb/bottom.svg'); ?>"
        class="breadcrumb__bottom-img">

    <div class="container d-flex flex-column justify-content-center">
        <div class="row align-items-center justify-content-between ">
            <div class=" col-md-5   row">
                <div class="breadcrumb__top d-flex col-12">
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

            <div class="col-md-6  d-flex justify-content-md-end  d-lg-flex d-none"> 
                <form  class="form_search course-bundle__form_search" action="<?php echo site_url('course_bundles/search/query'); ?>" method="get"
                    id="course_bundle_search">
                    <input type="text" class="form-control" name="string"
                        value="<?php if (isset($search_string))
                            echo $search_string; ?>"
                        placeholder="<?php echo site_phrase('search_for_bundle'); ?>" />
                    <button type="submit" class="btn btn-primary" id="course_bundle_search_btn">
                        Search
                    </button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                </form>
            </div>
        </div>
    </div>

</header>
<!---------- Bread Crumb Area End ---------->




<section class="course-bundle">

    <div class="container">
        <div class="row">

        <div class="col-12 row justify-content-between course-bundle__upper" >


        <div class="col-12 d-flex justify-content-md-end d-md-none mb-3">
            <form  class="form_search" action="<?php echo site_url('course_bundles/search/query'); ?>" method="get"
                    id="course_bundle_search">
                    <input type="text" class="form-control" name="string"
                        value="<?php if (isset($search_string))
                            echo $search_string; ?>"
                        placeholder="<?php echo site_phrase('search_for_bundle'); ?>" />
                    <button type="submit" class="btn btn-primary" id="course_bundle_search_btn">
                        Search
                    </button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                </form>
            </div>
            <div class="col-12">
            <p class="searchResult">
            <?php if(isset($search_string)): ?>
                <span><?php echo site_phrase('found_number_of_bundles'); ?> : <?php echo count($course_bundles->result_array()); ?></span>
            <?php else: ?>
                <span><?php echo site_phrase('showing_on_this_page'); ?> : <?php echo count($course_bundles->result_array()); ?></span>
            <?php endif; ?>
        </p>
            </div>

            

        </div>
            <?php foreach ($course_bundles->result_array() as $bundle):
                $instructor_details = $this->user_model->get_all_user($bundle['user_id'])->row_array();
                $course_ids = json_decode($bundle['course_ids']);
                sort($course_ids);
                ?>
                <div class="col-lg-4 col-md-6 ">
                    <div class="course-bundle__content">
                        <div class="course-bundle__top">
                            <a class="d-flex justify-content-between"
                                href="<?php echo site_url('bundle_details/' . $bundle['id'] . '/' . slugify($bundle['title'])); ?>">
                                <h3><?php echo $bundle['title']; ?></h3>

                                <h6><?php echo currency($bundle['price']); ?></h6>
                            </a>
                            <p><?php echo count($course_ids) . ' ' . site_phrase('courses'); ?></p>
                            <div class="line"></div>
                        </div>

                        <div class="course-bundle__middle">

                            <ul>
                                <?php $total_courses_price = 0; ?>
                                <?php foreach ($course_ids as $key => $course_id):
                                    ++$key;
                                    $this->db->where('id', $course_id);
                                    $this->db->where('status', 'active');
                                    $course_details = $this->db->get('course')->row_array();

                                    if ($course_details['is_free_course'] != 1):
                                        if ($course_details['discount_flag'] != 1)
                                            $total_courses_price += $course_details['price'];
                                        else {
                                            $total_courses_price += $course_details['discounted_price'];
                                        }
                                    endif;
                                    if ($key <= count($course_ids)): ?>
                                        <li>
                                            <a class=" course-bundle__courses d-flex"
                                                href="<?php echo site_url('home/course/' . rawurlencode(slugify($course_details['title'])) . '/' . $course_details['id']); ?>"
                                                target="_blank">

                                                <img loading="lazy"
                                                    src="<?php echo $this->crud_model->get_course_thumbnail_url($course_details['id']); ?>" />

                                                <div class="d-flex flex-column">
                                                    <h3><?php echo $course_details['title']; ?></h3>
                                                    <p> <?php echo currency($course_details['price']); ?></p>
                                                </div>

                                            </a>


                                        </li>
                                    <?php endif; ?>
                                <?php endforeach; ?>

                            </ul>

                        </div>

                        <div class="course-bundle__bottom d-flex justify-content-between">

                            <a class="detail"
                                href="<?php echo site_url('bundle_details/' . $bundle['id'] . '/' . slugify($bundle['title'])); ?>"><?php echo get_phrase('Bundle Details') ?></a>


                            <?php $is_purchase = $this->db->where('user_id', $this->session->userdata('user_id'))->where('bundle_id', $bundle['id'])->get('bundle_payment')->num_rows(); ?>
                            <?php if ($is_purchase > 0): ?>
                                <a class="buy"
                                    href="<?php echo base_url('home/my_bundles') ?>"><?php echo get_phrase('My Bundles') ?></a>
                            <?php else: ?>
                                <a class="buy"
                                    href="<?php echo base_url('course_bundles/buy/' . $bundle['id']) ?>"><?php echo currency($bundle['price']); ?>
                                    <?php echo get_phrase('Buy Now') ?></a>
                            <?php endif ?>

                        </div>
                    </div>
                </div>
            <?php endforeach; ?>


            <div class="col-md-12 text-center">
                <?php if ($course_bundles->num_rows() <= 0):
                    echo site_phrase('no_result_found') . ' !';
                endif; ?>
            </div>
            <nav>
                <?php echo $this->pagination->create_links(); ?>
            </nav>
        </div>
</section>






<?php include "course_bundle_scripts.php"; ?>
