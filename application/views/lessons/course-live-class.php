


		<!-- BigBlueButton -->

		<?php $live_class_scheduled = 0; ?>
		<?php $bbb_meeting = $this->db->where('course_id', $course_id)->get('bbb_meetings');
		if ($bbb_meeting->num_rows() > 0) :
			$live_class_scheduled = 1;
			$bbb_meeting = $bbb_meeting->row_array(); ?>
			<div class="lesson__live-class text-start ">
				<h6 class="meeting-id"></h6> <?php echo get_phrase('BigBlueButton live class schedule'); ?>
				<p>
					<?php echo $bbb_meeting['instructions']; ?>
				</p>
				<div class="d-flex justify-content-end">
				<a href="<?php echo site_url('user/join_bbb_meeting/'.$course_id); ?>" target="_blank" class="lesson__live-class-zoom">
					
					<?php echo get_phrase('join_live_class'); ?>
				</a>
				</div>	
			</div>
			
		<?php endif; ?>

		<!-- Zoom -->
		 <?php if (addon_status('zoom-live-class')) : ?>
			<?php $live_class = $this->db->get_where('zoom_live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0) :
				$live_class_scheduled = 1;
				$live_class = $live_class->row_array(); ?>
				<div class="lesson__live-class text-start">
					<h6 class="meeting-id"></h6> <?php echo get_phrase('zoom_live_class_schedule'); ?>
					<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h6>
					<p>
						<?php echo $live_class['note_to_students']; ?>
					</p>
					<a href="<?php echo site_url('addons/zoom_liveclass/join/' . $course_id); ?>" class="lesson__live-class-zoom">
						
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>


		<?php if (addon_status('live-class')) : ?>
			<?php $live_class = $this->db->get_where('live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0) :
				$live_class_scheduled = 1;
				$live_class = $this->db->get_where('live_class', array('course_id' => $course_id))->row_array(); ?>
				<div class="lesson__live-class text-start">
					<h6 class="meeting-id"></h6> <?php echo get_phrase('zoom_live_class_schedule'); ?>
					<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h6>
					<p>
						<?php echo $live_class['note_to_students']; ?>
					</p>
					<a href="<?php echo site_url('addons/liveclass/join/' . $lesson_details['course_id']); ?>" class="lesson__live-class-zoom">
						
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>

		<?php if (addon_status('live-class') && addon_status('jitsi-live-class')) echo ''; ?>

		<?php if (addon_status('jitsi-live-class')) : ?>
			<?php $live_class = $this->db->get_where('jitsi_live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0) :
				$live_class_scheduled = 1;
				$live_class = $live_class->row_array(); ?>
				<div class="lesson__live-class text-start">
					<h6 class="meeting-id"></h6> <?php echo get_phrase('jitsi_live_class_schedule'); ?>
					<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h6>
					<p>
						<?php echo $live_class['note_to_students']; ?>
					</p>
					<div class="d-flex justify-content-end">
					<a target="_blank" href="<?php echo site_url('addons/jitsi_liveclass/join/' . $course_id); ?>" class="lesson__live-class-zoom">
						
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
					</div>	
				</div>
			<?php endif; ?>
		<?php endif; ?>

	

<?php if(!$live_class_scheduled): ?>
	<div class=" lesson__notfound d-flex justify-content-center align-items-center">
		<?php echo get_phrase('live_class_is_not_scheduled_yet'); ?>
	</div>
<?php endif; ?>










