<div class="lesson__tap">
	<ul class="nav nav-tabs container " role="tablist">

		<?php if (isset($lesson_details) && is_array($lesson_details) && count($lesson_details) > 0): ?>

			<li class="nav-item  " role="presentation">
				<button class="nav-link" id="summary-class-tab" data-bs-toggle="tab" data-bs-target="#summary-class-content"
					type="button" role="tab" aria-controls="summary-class-content" aria-selected="true">


					<span><?php echo get_phrase('Summary'); ?></span>
				</button>
			</li>
		<?php endif; ?>

		<li class="nav-item" role="presentation">
			<button class="nav-link" id="live-class-tab" data-bs-toggle="tab" data-bs-target="#live-class-content"
				type="button" role="tab" aria-controls="live-class-content" aria-selected="true">

				<span><?php echo get_phrase('Live class'); ?>
				</span>
			</button>
		</li>

		<?php if (addon_status('assignment')): ?>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="assignment-tab" data-bs-toggle="tab" data-bs-target="#assignment-content"
					type="button" role="tab" aria-controls="assignment-content" aria-selected="true">
					<span>
						<?php echo get_phrase('Assignment'); ?>
					</span>
				</button>
			</li>
		<?php endif ?>
		<?php if (addon_status('forum')): ?>
			<li class="nav-item" role="presentation">
				<button class="nav-link" onclick="load_questions('<?= $course_id; ?>')" id="forum-tab" data-bs-toggle="tab"
					data-bs-target="#forum-content" type="button" role="tab" aria-controls="forum-content"
					aria-selected="true">

					<span><?php echo get_phrase('Forum'); ?>
					</span>
				</button>
			</li>
		<?php endif ?>
		<?php if (addon_status('noticeboard')): ?>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="noticeboard-tab" onclick="load_course_notices('<?= $course_id; ?>')"
					data-bs-toggle="tab" data-bs-target="#noticeboard-content" type="button" role="tab"
					aria-controls="noticeboard-content" aria-selected="true">
					<span>
						<?php echo get_phrase('Noticeboard'); ?>
					</span>
				</button>
			</li>
		<?php endif ?>
		<?php if (addon_status('certificate')): ?>

			<li class="nav-item" role="presentation">
				<button class="nav-link" id="certificate-tab"
					onclick="actionTo('<?php echo site_url('addons/certificate/certificate_progress/' . $course_details['id']); ?>')"
					data-bs-toggle="tab" data-bs-target="#certificate-content" type="button" role="tab"
					aria-controls="certificate-content" aria-selected="true">

					<span><?php echo get_phrase('Certificate'); ?></span>

				</button>
			</li>
		<?php endif ?>
	</ul>
</div>





<div class="tab-content  lesson__tap-content   ">
	<?php if (isset($lesson_details) && is_array($lesson_details) && count($lesson_details) > 0): ?>
		<div class="tab-pane fade" id="summary-class-content" role="tabpanel" aria-labelledby="summary-class-tab">


			<?php $resource_files = $this->db->order_by('id', 'desc')->where('lesson_id', $lesson_details['id'])->get('resource_files')->result_array(); ?>
			<?php if (is_array($resource_files) && count($resource_files) > 0): ?>
				<div class="row mb-4 ">
					<div class="col-auto">
						<h6 class="text-dark pt-2"><?php echo get_phrase('Attached Files'); ?>:</h6>
					</div>
					<?php foreach ($resource_files as $resource_file): ?>
						<?php if ($resource_file['file_name']): ?>
							<div class="col-auto">
								<a class="btn p-1"
									href="<?php echo base_url('uploads/resource_files/' . $resource_file['file_name']); ?>" download>
									<span class="mr-auto"><?php echo $resource_file['title']; ?></span>
									<i class="fas fa-download"></i>
								</a>
							</div>
						<?php endif; ?>
					<?php endforeach; ?>
				</div>
			<?php endif; ?>
			<?php echo htmlspecialchars_decode_($lesson_details['summary']); ?>
		</div>
	<?php endif; ?>

	<div class="tab-pane fade border-0" id="live-class-content" role="tabpanel" aria-labelledby="live-class-tab">

		<?php include 'course-live-class.php'; ?>
	</div>

	<?php if (addon_status('assignment')): ?>
		<div class="tab-pane fade lesson__tap-assignment" id="assignment-content" role="tabpanel"
			aria-labelledby="assignment-tab">
			<?php include 'assignment_body.php'; ?>
		</div>
	<?php endif; ?>

	<?php if (addon_status('forum')): ?>
		<div class="tab-pane fade" id="forum-content" role="tabpanel" aria-labelledby="forum-tab"></div>
	<?php endif; ?>

	<?php if (addon_status('noticeboard')): ?>
		<div class="tab-pane fade" id="noticeboard-content" role="tabpanel" aria-labelledby="noticeboard-tab"></div>
	<?php endif; ?>

	<?php if (addon_status('certificate')): ?>
		<div class="tab-pane fade" id="certificate-content" role="tabpanel" aria-labelledby="certificate-tab">

		</div>


	<?php endif; ?>
</div>





<?php if (addon_status('forum')): ?>
	<?php include 'course_forum_scripts.php'; ?>
<?php endif; ?>
<?php if (addon_status('noticeboard')): ?>
	<?php include 'noticeboard_scripts.php'; ?>
<?php endif; ?>

<script>
	$(function () {
		setTimeout(function () {
			$('.player-bottom-tabs li:first button').trigger('click');
			$($('.player-bottom-tabs li:first button').attr('data-bs-target')).addClass('show');
		}, 300);
	});
</script>