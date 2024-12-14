<!-- BigBlueButton -->

<?php $live_class_scheduled = 0; ?>
		<?php $bbb_meeting = $this->db->where('course_id', $course_id)->get('bbb_meetings');
		if ($bbb_meeting->num_rows() > 0):
			$live_class_scheduled = 1;
			$bbb_meeting = $bbb_meeting->row_array(); ?>
			<div class="live_class">
				<i class="fa fa-calendar-check"></i> <?php echo get_phrase('BigBlueButton live class schedule'); ?>
				<div class="py-4">
					<?php echo $bbb_meeting['instructions']; ?>
				</div>
				<a href="<?php echo site_url('user/join_bbb_meeting/' . $course_id); ?>" target="_blank"
					class="btn btn_zoom">
					<i class="fa fa-video"></i>&nbsp;
					<?php echo get_phrase('join_live_class'); ?>
				</a>
			</div>
			<hr>
		<?php endif; ?>


		<?php if (addon_status('live-class')): ?>
			<?php $live_class = $this->db->get_where('live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0):
				$live_class_scheduled = 1;
				$live_class = $this->db->get_where('live_class', array('course_id' => $course_id))->row_array(); ?>
				<div class="live_class">
					<i class="fa fa-calendar-check"></i> <?php echo get_phrase('zoom_live_class_schedule'); ?>
					<h5 style="margin-top: 20px;"><?php echo date('h:i A', $live_class['time']); ?> :
						<?php echo date('D, d M Y', $live_class['date']); ?>
					</h5>
					<div class="live_class_note">
						<?php echo $live_class['note_to_students']; ?>
					</div>
					<a href="<?php echo site_url('addons/liveclass/join/' . $lesson_details['course_id']); ?>"
						class="btn btn_zoom">
						<i class="fa fa-video"></i>&nbsp;
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>

		<?php if (addon_status('live-class') && addon_status('jitsi-live-class'))
			echo '<hr>'; ?>

		<?php if (addon_status('jitsi-live-class')): ?>
			<?php $live_class = $this->db->get_where('jitsi_live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0):
				$live_class_scheduled = 1;
				$live_class = $live_class->row_array(); ?>
				<div class="live_class">
					<i class="fa fa-calendar-check"></i> <?php echo get_phrase('jitsi_live_class_schedule'); ?>
					<h5 style="margin-top: 20px;"><?php echo date('h:i A', $live_class['time']); ?> :
						<?php echo date('D, d M Y', $live_class['date']); ?>
					</h5>
					<div class="live_class_note">
						<?php echo $live_class['note_to_students']; ?>
					</div>
					<a target="_blank" href="<?php echo site_url('addons/jitsi_liveclass/join/' . $course_id); ?>"
						class="btn btn_zoom">
						<i class="fa fa-video"></i>&nbsp;
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>

		<?php if (!$live_class_scheduled): ?>
			<div class="alert alert-warning" role="alert" style="padding: 30px 0px;">
				<?php echo get_phrase('live_class_is_not_scheduled_yet'); ?>
			</div>
		<?php endif; ?>
