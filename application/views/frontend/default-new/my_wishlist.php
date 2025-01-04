<?php $user_details = $this->user_model->get_all_user($this->session->userdata('user_id'))->row_array(); ?>
<?php include "breadcrumb.php"; ?>

<!-------- Wish List body section start ------>
<!-- wish-list-body grid-view-body -->
<section class="">
    <div class="profile-container">
        <div class="profile-menu ">
          
                <?php include "profile_menus.php"; ?>
            </div>
            <div class="profile-content container ">
			<!-- courses wishlist-course -->
                <div class="container profile ">
                    <div class="courses-card">
                        <div class="row align-items-center cards">
                        	<?php foreach(json_decode($wishlist, true) as $course_id):
                        		$row = $this->crud_model->get_course_by_id($course_id);
                        		if($row->num_rows() == 0) continue;
                        		$course = $row->row_array();
	                            $lessons = $this->crud_model->get_lessons('course', $course['id']);
			                    $instructor_details = $this->user_model->get_all_user($course['user_id'])->row_array();
			                    $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
			                    $total_rating =  $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
			                    $number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
			                    if ($number_of_ratings > 0) {
			                        $average_ceil_rating = ceil($total_rating / $number_of_ratings);
			                    } else {
			                        $average_ceil_rating = 0;
			                    }
			                    ?>
			                    <div class="col-lg-4 col-md-6 col-sm-6 col-12 box">
			                        <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>" class="checkPropagation courses-card-body">
										<div class="card-content">
											<div class="">

										
										<div class="courses-card-image">
			                                <img loading="lazy" class="w-100" src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>">
			                                <div class="courses-icon <?php if(in_array($course['id'], $my_wishlist_items)) echo 'red-heart'; ?>" id="coursesWishlistIcon<?php echo $course['id']; ?>">
			                                    <i class="fa-solid fa-heart checkPropagation" onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/'.$course['id']); ?>')"></i>
			                                </div>
			                             
			                            </div>
										    
										<div class="courses-card-image-text">
											<div class="course-name">
											<h5 class="mb-2"><?php echo $course['title']; ?></h5>
											</div>
											<div class="course-level">
											<h3><?php echo get_phrase($course['level']); ?></h3>
											</div>
										
			                                  
			                                </div> 
											<div class="courses-text">
			                               
			                                <div class="review-icon d-flex justify-content-between align-items-center ">
			                                    <div class="review-icon-star d-flex align-items-center justify-content-center ">
													<div class="rate d-flex ">
													<p>(<?php echo $average_ceil_rating; ?>)</p>
			                                        <p><i class="fa-solid fa-star <?php if($number_of_ratings > 0) echo 'filled'; ?>"></i></p>
													</div>
			                                  <div class="review">
											  <p>(<?php echo $number_of_ratings; ?> <?php echo get_phrase('Reviews') ?>)</p>
											  </div>
			                                     
			                                    </div>
			                                    <div class=" ">
			                                       <span class="compare-icon checkPropagation" onclick="redirectTo('<?php echo base_url('home/compare?course-1='.slugify($course['title']).'&course-id-1='.$course['id']); ?>');">
												 
												   <h4>   <i class="fa-solid fa-code-compare"></i> <?php echo get_phrase('Compare'); ?>  </h4>
			                                            
			                                        </span>
			                                    </div>
			                                </div>
											<div class="course-desc">
											<p class="ellipsis-line-2 mx-0"><?php echo $course['short_description']; ?></p>
											</div>
							</div>
							</div>
											<div class="bottom-card ">
										
			                                <div class="courses-price-border">
			                                    <div class="courses-price  d-flex align-items-center justify-content-between">
												<div class="courses-price-right ">
			                                            <p class="m-0"><i class="fa-regular fa-clock text-15px p-0"></i> <?php echo $course_duration; ?></p>
			                                        </div>
			                                        <div class="courses-price-left">
			                                            <?php if($course['is_free_course']): ?>
			                                                <h5><?php echo get_phrase('Free'); ?></h5>
			                                            <?php elseif($course['discount_flag']): ?>
			                                                <h5><?php echo currency($course['discounted_price']); ?></h5>
			                                                <p class="mt-1"><del><?php echo currency($course['price']); ?></del></p>
			                                            <?php else: ?>
			                                                <h5><?php echo currency($course['price']); ?></h5>
			                                            <?php endif; ?>
			                                        </div>
			                                     
			                                    </div>
			                                </div>
											</div>
			                             
			                           
										</div>
			                      
			                          
			                        </a>
			                    </div>
	                        <?php endforeach; ?>
                        </div>
                    </div>
            </div>
            </div>
        </div>
    </div>
</section>
<!-------- wish list bosy section end ------->
