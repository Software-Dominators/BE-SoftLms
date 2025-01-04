<?php
$instructor_details = $this->user_model->get_all_user($instructor_id)->row_array();
$social_links  = json_decode($instructor_details['social_links'], true);
$course_ids = $this->crud_model->get_instructor_wise_courses($instructor_id, 'simple_array');

$this->db->select('user_id');
$this->db->distinct();
$this->db->where_in('course_id', $course_ids);
$total_students = $this->db->get('enrol')->num_rows();
?>


<header class="inst-header">

<section>
    <div class="bread-crumb">
        <div class="container ">
            <div class="row justify-content-between align-items-center ">
                <div class="col-lg-5 ">
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
                    <h1 class="inst-name
                    "> <?php echo $instructor_details['first_name'].' '.$instructor_details['last_name']; ?></h1>
					<div class="inst-subtitle">
                         <p class="ellipsis-line-3"><?php echo $instructor_details['title']; ?></p>
                        </div>

						<div class="rating">
                              
                                    <?php
                                    $total_rating = $this->crud_model->get_instructor_wise_course_ratings($instructor_details['id'], 'course', true)->row('rating');
									$number_of_ratings = $this->crud_model->get_instructor_wise_course_ratings($instructor_details['id'], 'course')->num_rows();
									if ($number_of_ratings > 0) {
										$average_ceil_rating = ceil($total_rating / $number_of_ratings);
									} else {
										$average_ceil_rating = 0;
									}
									
									?>
                                    <div class="rating-info d-flex ">
										<div class="stars ">
										<p>(<?php echo $average_ceil_rating; ?>)   <i class="fa-solid fa-star"></i></p>
                                      
										</div>
                                     <div class="reviews-num">
									 <p>(<?php echo $number_of_ratings.' '.get_phrase('Reviews'); ?>)</p>
									 </div>
                                      
                                    </div>
                                </div>
					
                </div>
            <div class="col-lg-6 col-xl-5  ">
				<div class="inst-info-card">
					<div class="img">
                    <img loading="lazy" src="<?php echo $this->user_model->get_user_image_url($instructor_details['id']);?>" />
				</div>
                   
  
                    <div class="statistics   container">
        
                        <div class="d-flex   justify-content-between text-center">
							
                            <div class="info  ">
								<div class="wrapper">
								<div class="icon">
								<img src= "<?php echo base_url('assets/frontend/design-one/assets/images/inst-profile-imgs/total-students.svg') ?> " alt="">
                                </div>
                                <h5><?php echo $total_students; ?></h5>
								</div>
								
                                <h4><?php echo get_phrase('Total Students') ?></h4>
                            </div>
                            <div class="info  ">
								<div class="wrapper">
								<div class="icon">
								<img  src="<?php echo base_url('assets/frontend/design-one/assets/images/inst-profile-imgs/courses.svg') ?> " alt="">
								</div>
							
                                <h5><?php echo sizeof($course_ids); ?></h5>
								</div>
								
                                <h4><?php echo get_phrase('Courses'); ?></h4>
                            </div>
                            <div class="info ">
								<div class="wrapper">
								<?php 
									$number_of_ratings = $this->crud_model->get_instructor_wise_course_ratings($instructor_details['id'], 'course')->num_rows();
								?>
								<div class="icon">
								<img src= "<?php echo base_url('assets/frontend/design-one/assets/images/inst-profile-imgs/reviews.svg') ?> " alt="">
								</div>
                                <h5><?php echo $number_of_ratings; ?></h5>
								</div>
							
                                <h4><?php echo get_phrase('Reviews'); ?></h4>
                            </div>
                        </div>
                    </div>



					<div class="contact-info ">
					<div class="">

<!-- <?php if(!empty($instructor_details['phone'])): ?>
	<div class="instructon-icon">
		<i class="fa-solid fa-phone"></i>
		<div class="instructon-number">
			<h4><?php echo get_phrase('Phone Number'); ?>:</h4>
			<p><?php echo $instructor_details['phone']; ?></p>
		</div>
	</div>
<?php endif; ?> -->

<?php if(!empty($instructor_details['email'])): ?>
	<div class=" d-flex align-items-center justify-content-between">
		<div class="email-info d-flex align-items-center">
			<div class="icon">
			<i class="fa-solid fa-envelope"></i>
			</div>
	
		<div class="email-data">
			<h4><?php echo get_phrase('Email'); ?>:</h4>
			<p><?php echo $instructor_details['email']; ?></p>
		</div>
		</div>
	

		<div class="instructor-msg">
<button class="msg-btn" type="button" onclick="redirectTo('<?php echo site_url('home/my_messages?instructor_id='.$instructor_details['id']); ?>')">  <?php echo get_phrase('Message') ?></button>
</div>
	</div>
<?php endif; ?>

<!-- <?php if(!empty($instructor_details['address'])): ?>
	<div class="instructon-icon">
		<i class="fa-solid fa-location-dot"></i>
		<div class="instructon-number">
			<h4><?php echo get_phrase('Address'); ?>:</h4>
			<p><?php echo $instructor_details['address']; ?></p>
		</div>
	</div>
<?php endif; ?> -->

<div class="social-info  d-flex justify-content-center ">
	<div class="social-media">
		<?php if($social_links['facebook']): ?>
			<a class="text-center " href="<?php echo $social_links['facebook']; ?>" target="_blank"><i class="fab fa-facebook-f"></i> </a>
		<?php endif; ?>
	</div>
	<div class="social-media">
		<?php if($social_links['twitter']): ?>
			<a class="text-center" href="<?php echo $social_links['twitter']; ?>" target="_blank"><i class="fa-brands fa-x-twitter"></i> </a>
		<?php endif; ?>
	</div>
	<div class="social-media">
		<?php if($social_links['linkedin']): ?>
			<a class="text-center " href="<?php echo $social_links['linkedin']; ?>" target="_blank"><i class="fab fa-linkedin-in"></i> </a>
		<?php endif; ?>
	</div>
</div>

</div>

						
					</div>
			</div>
            </div>
        </div>
    </div>
</section>
</header>

<section class="empty-box">

</section>

<!--------- Instructor section start ---------->
<section class="other-inst-info">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <!-- About  section start -->
                <div class="instructor-about">
        
                    <div class="about-inst">
                        <h3><?php echo get_phrase('About') ?></h3>
						<p>    <?php echo $instructor_details['biography']; ?> </p>
                     
                    </div>

                    <?php $skills = explode(',', $instructor_details['skills']); ?>
                    <?php if($instructor_details['skills'] && is_array($skills) && count($skills) > 0): ?>
	                    <div class="inst-skills">
	                        <h3><?php echo get_phrase('Professional Skills'); ?></h3>
	                        <ul>
			                    <?php foreach($skills as $skill): ?>
			                      <li class="d-flex align-items-center">
									<div class="icon"> <i class="fa-solid fa-check"></i></div>
									<?php echo $skill; ?>
								</li>
			                    <?php endforeach; ?>
	                        </ul>  
	                    </div>
	                <?php endif; ?>


               
                </div>
                
                <!-- About section End -->
            </div>
 
        </div>
    </div>
</section>

<section class="inst-courses">
	<div class="container">
	<div class=" mb-0">
            			<h3 class="mb-4 pb-3"><?php echo get_phrase('Courses') ?> (<?php echo sizeof($course_ids); ?>)</h3>
            		</div>
                    <div class="grid-view-body courses pb-0" >
                    	<div class="row justify-content-center">
	                		<?php foreach($course_ids as $key => $course_id):
	                			if($key == 119) break;

	                			$course = $this->crud_model->get_course_by_id($course_id)->row_array();
	                			$lessons = $this->crud_model->get_lessons('course', $course['id']);
			                    $instructor_details = $this->user_model->get_all_user($course['creator'])->row_array();
			                    $course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
			                    $total_rating =  $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
			                    $number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
			                    if ($number_of_ratings > 0) {
			                        $average_ceil_rating = ceil($total_rating / $number_of_ratings);
			                    } else {
			                        $average_ceil_rating = 0;
			                    }
	                			?>
	                			<div class="col-md-6 col-lg-4">
	                				<div class="courses-card">
				                        <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>" class="checkPropagation courses-card-body">
				                            <div class="courses-card-image">
				                                <img loading="lazy" src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>">
				                                <div class="courses-icon <?php if(in_array($course['id'], $my_wishlist_items)) echo 'red-heart'; ?>" id="coursesWishlistIcon<?php echo $course['id']; ?>">
				                                    <i class="fa-solid fa-heart checkPropagation" onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/'.$course['id']); ?>')"></i>
				                                </div>
				                                <div class="courses-card-image-text">
				                                    <h3><?php echo get_phrase($course['level']); ?></h3>
				                                </div> 
				                            </div>
				                            <div class="courses-text">
				                                <h5 class="mb-3"><?php echo $course['title']; ?></h5>
				                                <div class="review-icon">
				                                    <div class="review-icon-star">
				                                        <p><?php echo $average_ceil_rating; ?></p>
				                                        <i class="fa-solid fa-star <?php if($number_of_ratings > 0) echo 'filled'; ?>"></i>
				                                        <p>(<?php echo $number_of_ratings; ?> <?php echo get_phrase('Reviews') ?>)</p>
				                                    </div>
				                                    <div class="review-btn">
				                                       <span class="compare-img checkPropagation" onclick="redirectTo('<?php echo base_url('home/compare?course-1='.slugify($course['title']).'&course-id-1='.$course['id']); ?>');">
				                                            <img loading="lazy" src="<?php echo base_url('assets/frontend/default-new/image/compare.png') ?>">
				                                            <?php echo get_phrase('Compare'); ?>
				                                        </span>
				                                    </div>
				                                </div>
				                                <div class="courses-price-border">
				                                    <div class="courses-price">
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
				                                        <div class="courses-price-right ">
				                                            <i class="fa-regular fa-clock"></i>
				                                            <p class="m-0"><?php echo $course_duration; ?></p>
				                                        </div>
				                                    </div>
				                                </div>
				                             </div>
				                        </a>
					                </div>
				                </div>
	                		<?php endforeach; ?>
                		</div>
                	</div>
	</div>
</section>
<!--------- Instructor section end ---------->