









<div class="tab-pane fade" id="live-class-content" role="tabpanel" aria-labelledby="live-class-tab">

<!-- BigBlueButton -->

<?php $live_class_scheduled = 0; ?>
<?php $bbb_meeting = $this->db->where('course_id', $course_id)->get('bbb_meetings');
if ($bbb_meeting->num_rows() > 0) :
	$live_class_scheduled = 1;
	$bbb_meeting = $bbb_meeting->row_array(); ?>
<div class="lesson__live-class text-start">
	<h6 class="meeting_id"><?php echo get_phrase('BigBlueButton live class schedule'); ?></h6>
		
		<a href="<?php echo site_url('user/join_bbb_meeting/'.$course_id); ?>" target="_blank" class="btn btn_zoom">
			<i class="fa fa-video"></i>&nbsp;
			<?php echo get_phrase('join_live_class'); ?>
		</a>
	</div>
	<hr>
<?php endif; ?>

<?php $zoom_meeting = $this->db->where('course_id', $course_id)->get('zoom_meetings');
if ($zoom_meeting->num_rows() > 0) :
	$zoom_meeting = $zoom_meeting->row_array();
	if ($zoom_meeting['join_url']) :
		$live_class_scheduled = 1; ?>
		<div class="lesson__live-class text-start">
			<i class="fa fa-calendar-check"></i> <?php echo get_phrase('Zoom live class schedule'); ?>
			<div class="py-4">
				<?php echo $zoom_meeting['instructions']; ?>
			</div>
			<a href="<?php echo site_url('user/join_zoom_meeting/'.$course_id); ?>" target="_blank" class="btn btn_zoom">
				<i class="fa fa-video"></i>&nbsp;
				<?php echo get_phrase('join_live_class'); ?>
			</a>
		</div>
		<hr>
	<?php endif; ?>
<?php endif; ?>

<?php if (addon_status('live-class')) : ?>
	<?php $live_class = $this->db->get_where('live_class', array('course_id' => $course_id));
	if ($live_class->num_rows() > 0) :
		$live_class_scheduled = 1;
		$live_class = $this->db->get_where('live_class', array('course_id' => $course_id))->row_array(); ?>
		<div class="lesson__live-class text-start">
			<i class="fa fa-calendar-check"></i> <?php echo get_phrase('zoom_live_class_schedule'); ?>
			<h5 style="margin-top: 20px;"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h5>
			<div class="live_class_note">
				<?php echo $live_class['note_to_students']; ?>
			</div>
			<a href="<?php echo site_url('addons/liveclass/join/' . $lesson_details['course_id']); ?>" class="btn btn_zoom">
				<i class="fa fa-video"></i>&nbsp;
				<?php echo get_phrase('join_live_video_class'); ?>
			</a>
		</div>
	<?php endif; ?>
<?php endif; ?>

<?php if (addon_status('live-class') && addon_status('jitsi-live-class')) echo '<hr>'; ?>

<?php if (addon_status('jitsi-live-class')) : ?>
	<?php $live_class = $this->db->get_where('jitsi_live_class', array('course_id' => $course_id));
	if ($live_class->num_rows() > 0) :
		$live_class_scheduled = 1;
		$live_class = $live_class->row_array(); ?>
		<div class="lesson__live-class text-start">
			<i class="fa fa-calendar-check"></i> <?php echo get_phrase('jitsi_live_class_schedule'); ?>
			<h5 style="margin-top: 20px;"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h5>
			<div class="live_class_note">
				<?php echo $live_class['note_to_students']; ?>
			</div>
			<a target="_blank" href="<?php echo site_url('addons/jitsi_liveclass/join/' . $course_id); ?>" class="btn btn_zoom">
				<i class="fa fa-video"></i>&nbsp;
				<?php echo get_phrase('join_live_video_class'); ?>
			</a>
		</div>
	<?php endif; ?>
<?php endif; ?>

<?php if(!$live_class_scheduled): ?>
	<div class="alert alert-warning" role="alert" style="padding: 30px 0px;">
		<?php echo get_phrase('live_class_is_not_scheduled_yet'); ?>
	</div>
<?php endif; ?>

</div>











<?php $live_class_scheduled = 0; ?>
		<?php $bbb_meeting = $this->db->where('course_id', $course_id)->get('bbb_meetings');
		if ($bbb_meeting->num_rows() > 0) :
			$live_class_scheduled = 1;
			$bbb_meeting = $bbb_meeting->row_array(); ?>
	<div class="lesson__live-class text-start">
		<!-- <h6 class="live"> <?php echo get_phrase('LIVE'); ?></h6> -->
		<h6 class="meeting-id"><?php echo get_phrase('BigBlueButton live class schedule'); ?></h6>
		<!-- <h6 class="schedule">Tue, 15-Oct-2024</h6> -->
		<p>
			<?php echo $bbb_meeting['instructions']; ?>
		</p>
		<div class="d-flex justify-content-end">
			<a href="<?php echo site_url('user/join_bbb_meeting/' . $course_id); ?>" target="_blank"
				class="lesson__live-class-zoom">
				<?php echo get_phrase('join_live_class'); ?>
			</a>
		</div>
	</div>

<?php endif; ?>

<?php $zoom_meeting = $this->db->where('course_id', $course_id)->get('zoom_meetings');
		if ($zoom_meeting->num_rows() > 0) :
			$zoom_meeting = $zoom_meeting->row_array();
			if ($zoom_meeting['join_url']) :
				$live_class_scheduled = 1; ?>
		<div class="lesson__live-class text-start">
		
			<h6 class="meeting-id"><?php echo get_phrase('Zoom live class schedule'); ?></h6>
			
			<p>
			<?php echo $zoom_meeting['instructions']; ?>
			</p>
			<div class="d-flex justify-content-end">
				<a href="<?php echo site_url('user/join_zoom_meeting/'.$course_id); ?>"  target="_blank"
					class="lesson__live-class-zoom">
					<?php echo get_phrase('join_live_video_class'); ?>
				</a>
			</div>
		</div>
	<?php endif; ?>
<?php endif; ?>

<?php if (addon_status('live-class')) : ?>
			<?php $live_class = $this->db->get_where('live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0) :
				$live_class_scheduled = 1;
				$live_class = $this->db->get_where('live_class', array('course_id' => $course_id))->row_array(); ?>
		<div class="lesson__live-class text-start">
			<h6 class="live"> <?php echo get_phrase('LIVE'); ?></h6>
			<h6 class="meeting-id"><?php echo get_phrase('Meeting ID'); ?></h6>
			<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> :
			<?php echo date('D, d M Y', $live_class['date']); ?>
			</h6>
			<p>
				<?php echo $live_class['note_to_students']; ?>
			</p>
			<div class="d-flex justify-content-end">
				<a  href="<?php echo site_url('addons/jitsi_liveclass/join/' . $course_id); ?>"target="_blank"
					class="lesson__live-class-zoom">
					<?php echo get_phrase('join_live_video_class'); ?>
				</a>
			</div>
		</div>
	<?php endif; ?>
<?php endif; ?>

<?php if (!$live_class_scheduled): ?>
	
	<div class="lesson__notfound m-auto  d-flex justify-content-center align-items-center">
	<?php echo get_phrase('live_class_is_not_scheduled_yet'); ?>	
	</div>
<?php endif; ?>

