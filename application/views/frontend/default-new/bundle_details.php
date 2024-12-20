<?php
if (file_exists('uploads/course_bundle/banner/' . $bundle_details['banner'])):
	$bundle_banner = base_url('uploads/course_bundle/banner/' . $bundle_details['banner']);
else:
	$bundle_banner = base_url('uploads/course_bundle/banner/thumbnail.png');
endif;

//Bundle Rating
$ratings = $this->course_bundle_model->get_bundle_wise_ratings($bundle_details['id']);
$bundle_total_rating = $this->course_bundle_model->sum_of_bundle_rating($bundle_details['id']);
if ($ratings->num_rows() > 0) {
	$bundle_average_ceil_rating = ceil($bundle_total_rating / $ratings->num_rows());
} else {
	$bundle_average_ceil_rating = 0;
}
$created_by = $this->user_model->get_all_user($bundle_details['user_id'])->row_array();
?>

<style>
	/*------ Corese -------- */

	.corses {
		background-color: var(--bg-white-2);
		padding-bottom: 80px;
		margin-bottom: 0 !important;

	}

	.corses h1 {
		padding-top: 60px;
		font-size: 32px;
		font-weight: 700;
		color: var(--color-1);
		margin-bottom: 30px;

	}

	.corses h1 span {
		position: relative;
	}

	.corses h1 span::before {
		content: "";
		background-image: url("../image/h-1-bn-shape-2.png");
		width: 116px;
		height: 21px;
		position: absolute;
		background-size: 119px;
		top: 31px;
		left: 89px;
	}

	.corses p {
		margin-bottom: 50px;
	}

	.corses .corses-card .corses-card-body img {
		width: 100%;
		height: 100%;
		border-radius: 10px 10px 0px 0px;
	}

	.corses-card .corses-card-body .corses-text h5 {
		font-size: 16px;
		font-weight: 600;
		padding-right: 7px;
		transition: .5s;
		color: var(--color-1);
		/* color: #1E293B;   */
	}

	.corses-card-body:hover .corses-text h5 {
		color: #754FFE;
	}

	.corses-card .corses-card-body .corses-text {
		padding: 12px;
	}

	.corses-card .corses-card-body .corses-text p {
		margin-bottom: 16px;
		font-size: 12px;
		color: var(--color-1);
	}

	.corses-card .corses-card-body .corses-text p a {
		text-decoration: none;
		color: #676C7D;
	}

	.corses-card .corses-card-body .corses-text .review-icon {
		display: flex;
	}

	.corses-card .corses-card-body .corses-text .review-icon i {
		color: #F9B23A;
		font-size: 12px;
		padding: 2px;

	}

	.corses-list-view-card-body .corses-text .review-icon i {
		margin: 0 5px;
	}

	.corses-card .corses-card-body .corses-text .review-icon p {
		padding-left: 5px;

	}

	.corses-card-body {
		background-color: var(--bg-white);
		border-radius: 10px;
		margin-bottom: 20px;
		transition: .2s;
		box-sizing: border-box;
		box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
		overflow: hidden;
	}

	/* .corses-card-body:hover {
		-ms-transform: scale(1.1); 
		-webkit-transform: scale(1.1); 
		transform: scale(1.1); 
	} */
	.corses-card-image {
		overflow: hidden;
		transition: .5s;
	}

	.corses-card-body:hover .corses-card-image img {
		transform: scale(1.1);
		transition: .5s;
	}

	.corses-card .corses-card-body .corses-text .corses-price-border {
		border-top: 1.5px solid #676c7d3a;
	}

	.corses-card .corses-card-body .corses-text .corses-price {
		margin-top: 10px;
		display: flex;
	}

	.corses-price-left {
		display: flex;
	}

	.corses-price-left span {
		color: #63CC94;
	}

	.corses-card-body .corses-text .corses-price .corses-price-right {
		display: flex;
		justify-content: flex-end;
	}

	.corses-card-body .corses-text .corses-price {
		justify-content: space-between;
	}

	.corses-card-body .corses-text .corses-price .corses-price-right i {
		color: #754FFE;
		padding-right: 5px;
	}

	.corses-card .corses-card-body .corses-card-image .corses-card-image-text h3 {
		font-size: 12px;
		font-weight: 600;
	}

	.corses-card .corses-card-body .corses-card-image {
		position: relative;

	}

	.corses-card .corses-card-body .corses-card-image .corses-card-image-text h3 {
		color: #F25C88;
	}

	.corses-card .corses-card-body .corses-card-image .corses-card-image-text {
		position: absolute;
		background-color: #FDE6EC;
		padding: 8px 13px;
		bottom: 10px;
		right: 0;
	}

	.corses-card .corses-card-body .corses-card-image .corses-card-image-text::after {
		clip-path: polygon(100% 0, 100% 50%, 100% 100%, 0 100%, 95% 50%, 0% 0%);
		background-color: #FDE6EC;
		width: 20px;
		content: "";
		position: absolute;
		height: 100%;
		left: -19px;
		top: 0;
	}

	.corses-price p {
		margin-bottom: 0 !important;
	}

	.corses-card .corses-card-body .corses-card-image .text-2 {
		background-color: #DAE7FF;
	}

	.corses-card .corses-card-body .corses-card-image .text-2 h3 {
		color: #0E63FF;
	}

	.corses-card .corses-card-body .corses-card-image .text-2::after {
		clip-path: polygon(100% 0, 100% 50%, 100% 100%, 0 100%, 95% 50%, 0% 0%);
		background-color: #DAE7FF;
		width: 20px;
		content: "";
		position: absolute;
		height: 100%;
		left: -19px;
		top: 0;
	}

	.corses-card .corses-card-body .corses-card-image .text-3 h3 {
		color: #0ECE96;
	}

	.corses-card .corses-card-body .corses-card-image .text-3 {
		background-color: #DAF7EF;
	}

	.corses-card .corses-card-body .corses-card-image .text-3::after {
		clip-path: polygon(100% 0, 100% 50%, 100% 100%, 0 100%, 95% 50%, 0% 0%);
		background-color: #DAF7EF;
		width: 20px;
		content: "";
		position: absolute;
		height: 100%;
		left: -19px;
		top: 0;
	}

	.corses-card-image .red-heart i {
		color: #FF3434;
	}

	.corses-card-image .corses-icon i {
		color: #6e798a81;
		background-color: #fff;
		border-radius: 50%;
		padding: 8px;
		position: absolute;
		top: 14px;
		right: 7px;
		font-size: 14px;
	}

	.star0 {
		color: #676C7D !important;
	}
</style>
<!-- Swiper CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>




<style>
	/* Ensure the Swiper container has relative positioning */
	.swiper {
		position: relative;
		height: auto;
	}

	/* Override default positioning to cancel "top" */
	.swiper-button-prev,
	.swiper-button-next {
		position: absolute;
		/* Override default static position */
		bottom: 0px;
		/* Place the buttons below the slider */
		top: auto;
		/* Cancel the default "top" positioning */
		transform: translateY(0);
		/* Reset any vertical transform */
		z-index: 10;
		/* Ensure buttons are above other elements */
	}

	/* Center the buttons horizontally below the slider */
	.swiper-button-prev {
		left: 45%;
		/* Adjust to move slightly to the left */
	}

	.swiper-button-next {
		right: 45%;
		/* Adjust to move slightly to the right */
	}

	/* Optional styling for the buttons */
	.swiper-button-prev,
	.swiper-button-next {
		box-shadow: -4px 4px 20px 0px #20B4861F;
		background: #754FFE;
		border-radius: 8px;
		width: 44px;
		height: 44px;
	}

	.swiper-button-prev.disabled,
	/* .swiper-button-next.disabled{
		box-shadow: -4px 4px 20px 0px #20B4861F;
		background: #FFFFFF;

		border: 1px solid #A1A1A1
	} */



	.swiper-button-next.swiper-button-disabled,
	.swiper-button-prev.swiper-button-disabled {
		box-shadow: -4px 4px 20px 0px #20B4861F;
		background: #FFFFFF;

		border: 1px solid #A1A1A1
	}

	.swiper-button-next:after,
	.swiper-button-prev:after {
		font-family: swiper-icons;
		font-size: 15px;
		color: var(--white-color);
	}



	.swiper-button-next.swiper-button-disabled:after,
	.swiper-button-prev.swiper-button-disabled:after {
		font-family: swiper-icons;
		font-size: 15px;
		color: #A1A1A1;
	}

	.swiper-pagination {
		bottom: -39px;
	}

	.swiper-pagination-bullet {
		width: 12px;
		height: 12px;
		background: #CFD3D6;
		display: inline-block;
		border-radius: 50%;



	}

	.swiper-pagination-bullet-active {
		background: #754FFE;

	}

	.swiper {
		position: relative;
		/* background-color: red; */
		height: 500px;
	}

	.review__navigation {
		z-index: 9999;
		position: absolute;
		bottom: 32px;
		width: 50%;
		justify-content: space-between !important;
	
	}
.review__navigation-btn{
	gap: 16px;
}
	.review__navigation .swiper-button-next,
	.review__navigation .swiper-button-prev ,.swiper-pagination{
		position: static;

	}
	.bundle-details-reviews .swiper{
		overflow-x: visible;

	}
</style>




<header class="bundle-details-header">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="top d-flex align-items-center">

					<a href="<?php echo site_url(); ?>" class="d-flex justify-content-start align-items-center">
						<i class="fa-solid fa-house"></i>
						<span><?php echo get_phrase('Home') ?></span>
					</a>
					<a class="d-flex justify-content-start align-items-center"
						href="<?= site_url('/course_bundles') ?>">
						<i class="fa-solid fa-chevron-right"></i>
						<span><?php echo get_phrase('Course Bundles') ?></span>
					</a>
					<a href="#" class="d-flex justify-content-start align-items-center">
						<i class="fa-solid fa-chevron-right"></i>
						<span class="active-link"><?php echo get_phrase('Bundle details'); ?></span>
					</a>

				</div>

				<div class="middle">
					<h1><?php echo $bundle_details['title']; ?></h1>
					<p> <?php echo strip_tags($bundle_details['bundle_details']); ?></p>

				</div>

				<div class="bottom d-flex ">
					<div class="creator d-flex align-items-center">
						<img loading="lazy"
							src="<?php echo $this->user_model->get_user_image_url($bundle_details['user_id']); ?>">
						<a class="created-by-instructor"
							href="<?php echo site_url('home/instructor_page/' . $bundle_details['user_id']); ?>">
							<span><?= get_phrase('Created By') . ':' ?></span>
							<?php echo $created_by['first_name'] . ' ' . $created_by['last_name']; ?></a>

					</div>

					<div class="d-flex align-items-center include-tag ">
						<i class="fa-regular fa-circle-play"></i>
						<p>
							<?php echo count(json_decode($bundle_details['course_ids'])) . '
							' . get_phrase('Courses included'); ?>

						</p>
					</div>


					<div class="include-tag  d-flex align-items-center">
						<ul class="d-flex align-items-center start">
							<?php for ($i = 1; $i < 6; $i++): ?>
								<?php if ($i <= $bundle_average_ceil_rating): ?>
									<li><i class="fa-solid fa-star "></i>
									</li>
								<?php else: ?>
									<li><i class="fa-solid fa-star"></i></li>
								<?php endif; ?>
							<?php endfor; ?>

						</ul>

						<p>
							(<?php echo $ratings->num_rows() . ' ' . get_phrase('Reviews'); ?>)</p>
					</div>




				</div>

			</div>




			<div class="col-md-4 ">
				<div class="bundle-details-header__card">
					<div class="bundle-details-header__card-price d-flex align-items-center justify-content-between">
						<p><?= get_phrase('Whole bundle Price') ?></p>
						<h4><?php echo currency($bundle_details['price']); ?></h4>
					</div>

					<div class="d-flex align-items-center justify-content-between bundle-details-header__card-middle">
						<p><?php echo get_phrase('Expiry period') ?></p>
						<h5><?php echo $bundle_details['subscription_limit'] . ' ' . get_phrase('Days'); ?></h5>
					</div>
					<div class="d-flex align-items-center justify-content-between bundle-details-header__card-middle">
						<p><?php echo get_phrase('Included Course') ?></p>
						<h5>
							<?php echo count(json_decode($bundle_details['course_ids'])) . ' ' . get_phrase('Courses'); ?>
						</h5>
					</div>



					<div class="bundle-details-header__card-bottom">
						<?php $is_purchase = $this->db->where('user_id', $this->session->userdata('user_id'))->where('bundle_id', $bundle_details['id'])->get('bundle_payment')->num_rows(); ?>
						<?php if ($is_purchase > 0): ?>
							<a href="<?php echo site_url('home/my_bundles'); ?>"><?php echo get_phrase('My Bundles'); ?></a>
						<?php else: ?>
							<a href="<?php echo site_url('course_bundles/buy/' . $bundle_details['id']); ?>">

								<?php echo get_phrase('Buy subscription'); ?></a>
						<?php endif ?>
					</div>

				</div>
			</div>

		</div>
	</div>

</header>


<section class="bundle-details">
	<div class="container">
		<header>
			<h2 class="bundle-details__title"><?php echo get_phrase('Included Courses') ?></h2>

		</header>
		<div class="row">
			<!-- start card -->
			<?php foreach (json_decode($bundle_details['course_ids']) as $key => $course_id):
				$this->db->where('id', $course_id);
				$this->db->where('status', 'active');
				$course = $this->db->get('course')->row_array();

				$lessons = $this->crud_model->get_lessons('course', $course['id']);
				$instructor_details = $this->user_model->get_all_user($course['user_id'])->row_array();
				$course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
				$total_rating = $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
				$number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
				if ($number_of_ratings > 0) {
					$average_ceil_rating = ceil($total_rating / $number_of_ratings);
				} else {
					$average_ceil_rating = 0;
				}
				?>
				<div class="col-md-8">
					<a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>"
						class="checkPropagation  bundle-details__content  d-flex flex-lg-row flex-column ">
						<div class="bundle-details__content-left">
							<img loading="lazy" class="w-100 h-100"
								src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>">
							<div class="bundle-details__heart <?php echo in_array($course['id'], $my_wishlist_items) ? 'red-heart' : ''; ?>"
								id="coursesWishlistIcon<?php echo $course['id']; ?>">
								<i class="fa-heart checkPropagation <?php echo in_array($course['id'], $my_wishlist_items) ? 'fa-solid' : 'fa-regular'; ?>"
									onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course['id']); ?>')">
								</i>
							</div>


							<div class="bundle-details__level">
								<h3><?php echo get_phrase($course['level']); ?></h3>
							</div>
						</div>



						<div class="bundle-details__content-right d-flex flex-column  w-100">
							<div
								class="bundle-details__content-right-top d-flex justify-content-between align-items-center order-1">
								<h3><?php echo $course['title']; ?></h3>
							</div>

							<ul
								class="bundle-details__content-right-list d-flex flex-lg-row flex-column order-3 order-lg-2">

								<li>
									<i class="fa-regular fa-circle-play"></i>
									<p><?php echo get_phrase('lessons') . ':'; ?>
										<span><?= $lessons->num_rows() ?></span>
									</p>
								</li>
								<li>
									<i class="fa-regular fa-clock"></i>
									<p>
										<?php echo get_phrase('Hour') . ':'; ?>
										<span><?php echo $course_duration; ?></span>
									</p>
								</li>
								<li>
									<i class="fa-solid fa-language"></i>
									<p>
										<?php echo get_phrase('Language') . ':'; ?>
										<span><?php echo site_phrase($course['language']); ?></span>
									</p>
								</li>
								<li>

									<p><?php echo $average_ceil_rating; ?></p>
									<p><i class="fa-solid fa-star <?php if ($number_of_ratings > 0)
										echo 'filled'; ?>"></i>
									</p>
									<p>(<?php echo $number_of_ratings; ?> 	<?php echo get_phrase('Reviews') ?>)</p>

								</li>

							</ul>
							<p class="order-lg-3 order-2"><?php echo $course['short_description']; ?></p>


							<div
								class="bundle-details__content-right-bottom order-4 mt-auto  d-flex align-items-center justify-content-between">
								<div class="bundle-details__price d-flex">
									<span><?= get_phrase('Price') . ':'; ?></span>
									<?php if ($course['is_free_course']): ?>
										<h6><?php echo get_phrase('Free'); ?></h6>
									<?php elseif ($course['discount_flag']): ?>
										<h5><?php echo currency($course['discounted_price']); ?></h5>
										<p><?php echo currency($course['price']); ?></p>
									<?php else: ?>
										<p><?php echo currency($course['price']); ?></p>
									<?php endif; ?>
								</div>


								<span class="bundle-details__compare checkPropagation"
									onclick="redirectTo('<?php echo base_url('home/compare?course-1=' . slugify($course['title']) . '&course-id-1=' . $course['id']); ?>');">
									<?php echo get_phrase('Compare'); ?>
								</span>
							</div>

						</div>

					</a>
				</div>
			<?php endforeach; ?>

			<!-- end card -->


		</div>


		<div class="bundle-details__description">
			<h4><?php echo get_phrase('Description') ?></h4>
			<p><?php echo $bundle_details['bundle_details']; ?></p>

		</div>
	</div>
</section>







<section class="bundle-details-reviews">
	<div class="container">
		<header>
			<h2><?php echo get_phrase('Reviews') ?></h2>
		</header>
		<div class="swiper">
			<div class="swiper-wrapper">
				<!-- Review Slide -->
				<div class="swiper-slide">
					<div class="review__content">
						<div class="top d-flex align-items-center justify-content-between">
							<div class="left d-flex align-items-center">
								<img src="https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?ga=GA1.1.1496705496.1696341355&semt=ais_hybrid"
									alt="">
								<div class="d-flex flex-column justify-content-between">
									<p><i class="fa-solid fa-star"></i></p>
									<h6>Wade Warren</h6>
								</div>
							</div>
							<div class="right">
								<span>2 weeks ago</span>
							</div>
						</div>
						<div class="bottom">
							<p>Really enjoyed the course. I've had an interest in where AI could go for a little while
								now and this course has given me so many other ideas and use cases - a real must for
								anyone with an interest in harnessing the power of AI.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review__content">
						<div class="top d-flex align-items-center justify-content-between">
							<div class="left d-flex align-items-center">
								<img src="https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?ga=GA1.1.1496705496.1696341355&semt=ais_hybrid"
									alt="">
								<div class="d-flex flex-column justify-content-between">
									<p><i class="fa-solid fa-star"></i></p>
									<h6>Wade Warren</h6>
								</div>
							</div>
							<div class="right">
								<span>2 weeks ago</span>
							</div>
						</div>
						<div class="bottom">
							<p>Really enjoyed the course. I've had an interest in where AI could go for a little while
								now and this course has given me so many other ideas and use cases - a real must for
								anyone with an interest in harnessing the power of AI.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review__content">
						<div class="top d-flex align-items-center justify-content-between">
							<div class="left d-flex align-items-center">
								<img src="https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?ga=GA1.1.1496705496.1696341355&semt=ais_hybrid"
									alt="">
								<div class="d-flex flex-column justify-content-between">
									<p><i class="fa-solid fa-star"></i></p>
									<h6>Wade Warren</h6>
								</div>
							</div>
							<div class="right">
								<span>2 weeks ago</span>
							</div>
						</div>
						<div class="bottom">
							<p>Really enjoyed the course. I've had an interest in where AI could go for a little while
								now and this course has given me so many other ideas and use cases - a real must for
								anyone with an interest in harnessing the power of AI.</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review__content">
						<div class="top d-flex align-items-center justify-content-between">
							<div class="left d-flex align-items-center">
								<img src="https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?ga=GA1.1.1496705496.1696341355&semt=ais_hybrid"
									alt="">
								<div class="d-flex flex-column justify-content-between">
									<p><i class="fa-solid fa-star"></i></p>
									<h6>Wade Warren</h6>
								</div>
							</div>
							<div class="right">
								<span>2 weeks ago</span>
							</div>
						</div>
						<div class="bottom">
							<p>Really enjoyed the course. I've had an interest in where AI could go for a little while
								now and this course has given me so many other ideas and use cases - a real must for
								anyone with an interest in harnessing the power of AI.</p>
						</div>
					</div>
				</div>

				<!-- Repeat the above swiper-slide for additional reviews -->
			</div>
			<!-- Swiper Pagination -->
			
			<!-- Swiper Navigation -->


			<div class="d-flex justify-content-end">
			<div class="review__navigation  d-flex justify-content-between align-items-center">
			       <div class="swiper-pagination text-start"></div>
				   <div class="d-flex justify-content-end review__navigation-btn">
				   <div class="swiper-button-prev"></div>
				   <div class="swiper-button-next"></div>
				   </div>
			</div>
			</div>

		</div>



	</div>
</section>
<!-- 
<script>
	const swiper = new Swiper('.swiper', {
		slidesPerView: 1, // Number of slides visible at a time
		spaceBetween: 1, // Space between slides
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '.swiper-pagination',
			clickable: true,
		},
		breakpoints: {
			768: { slidesPerView: 1 }, // Show 2 slides on medium screens
			1024: { slidesPerView: 2 }, // Show 3 slides on large screens
		},
	});
</script>
 -->



 <script>
	const swiper = new Swiper('.swiper', {
		slidesPerView: 1, // Default number of visible slides
		spaceBetween: 24, // Space between slides (adjust as needed)
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '.swiper-pagination',
			clickable: true,
		},
		breakpoints: {
			// Medium screens (e.g., tablets)
			768: {
				slidesPerView: 1, // Show 1 slide for medium screens
				spaceBetween: 20, // Adjust spacing as needed
			},
			// Large screens (e.g., desktops)
			1024: {
				slidesPerView: 2.28, // Show 2 full slides and 1/3 of a slide
				spaceBetween: 30, // Adjust spacing as needed
			},
		},
	});
</script>


















<hr>
<hr>
<hr>


<!-- Start Instructor -->
<section class="pb-120 pt-50">
	<div class="container">
		<h4 class="s_title_one pb-30"><?php echo get_phrase('Included Courses') ?></h4>
		<div class="grid-view-body courses pb-0 bg-transparent courses-list-view-body">
			<div class="courses-card courses-list-view-card">
				<div class="row">
					<div class="col-md-8">
						<?php foreach (json_decode($bundle_details['course_ids']) as $key => $course_id):
							$this->db->where('id', $course_id);
							$this->db->where('status', 'active');
							$course = $this->db->get('course')->row_array();

							$lessons = $this->crud_model->get_lessons('course', $course['id']);
							$instructor_details = $this->user_model->get_all_user($course['user_id'])->row_array();
							$course_duration = $this->crud_model->get_total_duration_of_lesson_by_course_id($course['id']);
							$total_rating = $this->crud_model->get_ratings('course', $course['id'], true)->row()->rating;
							$number_of_ratings = $this->crud_model->get_ratings('course', $course['id'])->num_rows();
							if ($number_of_ratings > 0) {
								$average_ceil_rating = ceil($total_rating / $number_of_ratings);
							} else {
								$average_ceil_rating = 0;
							}
							?>
							<!-- Course List Card -->
							<a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course['title'])) . '/' . $course['id']); ?>"
								class="courses-list-view-card-body courses-card-body checkPropagation">
								<div class="courses-card-image ">
									<img loading="lazy"
										src="<?php echo $this->crud_model->get_course_thumbnail_url($course['id']); ?>">
									<div class="courses-icon <?php if (in_array($course['id'], $my_wishlist_items))
										echo 'red-heart'; ?>" id="coursesWishlistIcon<?php echo $course['id']; ?>">
										<i class="fa-solid fa-heart checkPropagation"
											onclick="actionTo('<?php echo site_url('home/toggleWishlistItems/' . $course['id']); ?>')"></i>
									</div>
									<div class="courses-card-image-text">
										<h3><?php echo get_phrase($course['level']); ?></h3>
									</div>
								</div>
								<div class="courses-text w-100">
									<div class="courses-d-flex-text">
										<h5><?php echo $course['title']; ?></h5>
										<span class="compare-img checkPropagation"
											onclick="redirectTo('<?php echo base_url('home/compare?course-1=' . slugify($course['title']) . '&course-id-1=' . $course['id']); ?>');">
											<img loading="lazy"
												src="<?php echo base_url('assets/frontend/default-new/image/compare.png') ?>">
											<?php echo get_phrase('Compare'); ?>
										</span>
									</div>
									<div class="review-icon">
										<p><?php echo $average_ceil_rating; ?></p>
										<p><i class="fa-solid fa-star <?php if ($number_of_ratings > 0)
											echo 'filled'; ?>"></i>
										</p>
										<p>(<?php echo $number_of_ratings; ?> 	<?php echo get_phrase('Reviews') ?>)</p>
										<p><i
												class="fas fa-closed-captioning"></i><?php echo site_phrase($course['language']); ?>
										</p>
									</div>
									<p class="ellipsis-line-2"><?php echo $course['short_description']; ?></p>
									<div class="courses-price-border">
										<div class="courses-price">
											<div class="courses-price-left">
												<?php if ($course['is_free_course']): ?>
													<h5 class="price-free"><?php echo get_phrase('Free'); ?></h5>
												<?php elseif ($course['discount_flag']): ?>
													<h5><?php echo currency($course['discounted_price']); ?></h5>
													<p class="mt-1"><del><?php echo currency($course['price']); ?></del></p>
												<?php else: ?>
													<h5><?php echo currency($course['price']); ?></h5>
												<?php endif; ?>
											</div>
											<div class="courses-price-right ">
												<p class="me-2"><i class="fa-regular fa-list-alt p-0 text-15px"></i>
													<?php echo $lessons->num_rows() . ' ' . get_phrase('lessons'); ?></p>
												<p><i class="fa-regular fa-clock text-15px p-0"></i>
													<?php echo $course_duration; ?></p>
											</div>
										</div>
									</div>
								</div>
							</a>
							<!-- End Course List Card -->
						<?php endforeach; ?>

						<h4 class="s_title_one pb-20 mt-5"><?php echo get_phrase('Description') ?></h4>
						<div class="s_info_one pb-30"><?php echo $bundle_details['bundle_details']; ?></div>


						<h4 class="s_title_one pb-20"><?php echo get_phrase('Reviews') ?></h4>
						<div class="row">
							<div class="col-md-12">
								<?php $ratings = $this->course_bundle_model->get_bundle_wise_ratings($bundle_details['id']);
								foreach ($ratings->result_array() as $key => $rating):
									$user_details = $this->user_model->get_user($rating['user_id'])->row_array();
									?>
									<div class="reviews-border" id="userReview<?php echo $rating['id']; ?>">
										<div class="row <?php if ($key >= 1)
											echo 'border-top'; ?>">
											<div class="col-lg-3 col-md-3 col-sm-5 col-5 my-3 text-center">
												<h5 class="text-center text-black fw-500">
													<?php echo $user_details['first_name'] . ' ' . $user_details['last_name']; ?>
												</h5>
												<p class="text-center my-0">
													<?php echo date('d-M-Y', $rating['date_added']); ?>
												</p>
												<h1 class="my-0 p-0"><?php echo $rating['rating']; ?></h1>
												<div class="icon">
													<?php for ($i = 1; $i <= 5; $i++): ?>
														<?php if ($rating['rating'] >= $i): ?>
															<i class="fa-solid fa-star text-warning"></i>
														<?php else: ?>
															<i class="fa-solid fa-star"></i>
														<?php endif; ?>
													<?php endfor; ?>
												</div>
											</div>
											<div class="col-lg-9 col-md-9 col-sm-7 col-7 my-3">
												<!-- <h3 class="mb-3">Great product, smooth purchase</h3> -->
												<p class="text-14px"><?php echo $rating['comment']; ?></p>
											</div>
										</div>

									</div>
								<?php endforeach; ?>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>

	</div>
</section>
<!-- End Instructor -->