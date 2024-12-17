<?php
$language_dir = 'ltr';
$language_dirs = get_settings('language_dirs');
if ($language_dirs) {
	$current_language = $this->session->userdata('language');
	$language_dirs_arr = json_decode($language_dirs, true);
	if (array_key_exists($current_language, $language_dirs_arr)) {
		$language_dir = $language_dirs_arr[$current_language];
	}
}
?>

<!DOCTYPE html>
<html lang="en" dir="<?php echo $language_dir; ?>">

<head>
	<title><?php echo $course_details['title'] . ' | ' . get_settings('system_name'); ?></title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="<?php echo get_settings('author') ?>" />
	<meta name="keywords" content="<?php echo $course_details['meta_keywords']; ?>" />
	<meta name="description" content="<?php echo $course_details['meta_description']; ?>" />
	<link name="favicon" type="image/x-icon"
		href="<?php echo base_url('uploads/system/' . get_frontend_settings('favicon')); ?>" rel="shortcut icon" />

	<?php include 'includes_top.php'; ?>
	
	<script>
		$(document).ready(function () {
			function toggleContainerClass() {
				if ($(window).width() <= 992) {
					$('.resize-container').addClass('container');
				} else {
					$('.resize-container').removeClass('container');
				}
			}

			// Run on page load
			toggleContainerClass();

			// Run on window resize
			$(window).resize(function () {
				toggleContainerClass();
			});
		});
	</script>
</head>

<body>

	<?php $full_page = $this->session->userdata('full_page_layout'); ?>
	<nav class="navbar navbar-expand bg-dark " style="height: 65px;">
		<div class="container-fluid">
			<a class="navbar-brand d-none d-md-block" href="<?php echo site_url(); ?>">
				<img width="150px" src="<?php echo site_url('uploads/system/' . get_frontend_settings('light_logo')) ?>"
					alt="" />
			</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link text-white p-0" aria-current="page"
							href="<?php echo site_url('home/course/' . slugify($course_details['title']) . '/' . $course_details['id']); ?>">
							<?php $number_of_lessons = $this->crud_model->get_lessons('course', $course_details['id'])->num_rows(); ?>
							<p class="text-md-center fs-6"><?php echo $course_details['title']; ?></p>
							<?php if (isset($watch_history) && !empty($watch_history['completed_lesson']) && is_array(json_decode($watch_history['completed_lesson'], true))): ?>
								<p class="text-md-center text-12px">
									<?php echo $watch_history['course_progress'] . '% ' . get_phrase('Completed'); ?>(<?php echo count(json_decode($watch_history['completed_lesson'], true)) ?>/<?php echo $number_of_lessons; ?>)
								</p>
							<?php endif; ?>
						</a>
					</li>
				</ul>

				<?php if ($full_page): ?>
					<a href="#" onclick="actionTo('<?php echo site_url('home/course_playing_page_layout'); ?>')"
						class="btn btn-outline-secondary mx-1"><i class="fas fa-arrows-alt"></i></a>
				<?php else: ?>
					<a href="#" onclick="actionTo('<?php echo site_url('home/course_playing_page_layout'); ?>')"
						class="btn btn-outline-secondary mx-1"><i class="fas fa-arrows-alt-h"></i></a>
				<?php endif; ?>

				<?php $user_id = $this->session->userdata('user_id');
				$is_course_instructor = $this->crud_model->is_course_instructor($course_details['id'], $user_id); ?>
				<?php if ($this->session->userdata('admin_login')): ?>
					<a href="<?php echo site_url('admin/course_form/course_edit/' . $course_details['id']); ?>"
						class="btn btn-outline-secondary">
						<span class="d-none d-sm-inline-block"><?php echo get_phrase('Course Manager'); ?></span>
						<i class="fas fa-angle-right ms-1 me-1"></i>
					</a>
				<?php elseif ($is_course_instructor): ?>
					<a href="<?php echo site_url('user/course_form/course_edit/' . $course_details['id']); ?>"
						class="btn btn-outline-secondary">
						<span class="d-none d-sm-inline-block"><?php echo get_phrase('Course Manager'); ?></span>
						<i class="fas fa-angle-right ms-1 me-1"></i>
					</a>
				<?php else: ?>
					<a href="<?php echo site_url('home/my_courses'); ?>" class="btn btn-outline-secondary">
						<span class="d-none d-sm-inline-block"><?php echo get_phrase('My Courses'); ?></span>
						<i class="fas fa-angle-right ms-1 me-1"></i>
					</a>
				<?php endif; ?>
			</div>
		</div>
	</nav>


	<section class="lesson">
		<div class="container-fluid">
			<div class="row ">
				<?php if ($course_details['course_type'] == 'general'): ?><!-- first if stat -->

					<!-- #################  sidebar ############################## -->
					<?php if(!is_array($lesson_details)): ?>
						<div class="col-12">
						<h5 class="w-100 text-center text-black"><?php echo get_phrase('Course content not found') ?></h5>
						<p class="w-100 text-center"><?php echo get_phrase('Please ensure that your course has at least one section and one lesson.'); ?></p>
						</div>
						<?php endif; ?>

					<div class="<?= $full_page ? 'col-lg-12' : 'col-lg-4'; ?> order-2">
						<?php include "sidebar.php"; ?>
					</div>

					<!--  ############## Content ################ -->
					<div class="<?= $full_page ? 'col-lg-12' : 'col-lg-8 col-12'; ?> order-1 px-0">
						<?php if(is_array($lesson_details)): ?>
							<div>
								<div  <?php if($full_page) echo 'style="margin-top: -2px; margin-left: -12px; margin-right: -12px;"'; ?>>
									<?php if(in_array($lesson_details['id'], $locked_lesson_ids) && $course_details['enable_drip_content']): ?>
					                    <div class="py-5">
					                        <?php echo remove_js(htmlspecialchars_decode_($drip_content_settings['locked_lesson_message'])); ?>
					                    </div>
					                <?php else: ?>
					                	<?php if(in_array($lesson_details['section_id'], $restricted_section_ids)): ?>
					                		<div class="py-5">
					                			<div class="locked-card">
								                    <i class="fas fa-lock text-30px"></i>
								                    <h6 class="w-100 text-center text-dark my-2"><?php echo get_phrase('This section is not included in the current study plan'); ?></h6>
								                    <small class="text-12px"><?php echo date('d M Y h:i A', $section['start_date']).' - '.date('d M Y h:i A', $section['end_date']); ?></small>
								                </div>
					                		</div>
										<?php else: ?>
										<div class="lesson__type">
										<?php include $course_details['course_type'].'_course_content_body.php'; ?>
										</div>
										<?php endif ?>
									<?php endif; ?>
								</div>
								<div >
								
										<?php include "bottom_tabs.php"; ?>
									
								</div>
							</div>
						<?php endif; ?>
					</div>
					

	          <!--  ############## Content Body ################ -->
					<?php else: ?><!-- first if else  -->
					<div class="col-lg-12">
						<?php include $course_details['course_type'].'_course_content_body.php'; ?>
						<div class="row">
							<div class="col-md-12 pt-5">
								<?php include "bottom_tabs.php"; ?>
							</div>
						</div>
					</div>
				<?php endif; ?><!-- first if end -->
			</div>
		</div>
	</section>





	
	<?php include "includes_bottom.php"; ?>
	<?php include APPPATH . "views/frontend/default-new/common_scripts.php"; ?>
	<?php include APPPATH . "views/frontend/default-new/init.php"; ?>
</body>

</html>