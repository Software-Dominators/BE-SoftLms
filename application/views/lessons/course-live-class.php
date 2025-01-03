
<div class="row">
	
		<!-- BigBlueButton -->
	<div class="col-lg-9 col-12">
	<?php $live_class_scheduled = 0; ?>
		<?php $bbb_meeting = $this->db->where('course_id', $course_id)->get('bbb_meetings');
		if ($bbb_meeting->num_rows() > 0) :
			$live_class_scheduled = 1;
			$bbb_meeting = $bbb_meeting->row_array(); ?>
			<div class="lessons__live-class text-start ">
				<h6 class="meeting-id"></h6> <?php echo get_phrase('BigBlueButton live class schedule'); ?>
				<p>
					<?php echo $bbb_meeting['instructions']; ?>
				</p>
				<div class="d-flex justify-content-end">
				<a href="<?php echo site_url('user/join_bbb_meeting/'.$course_id); ?>" target="_blank" class="lessons__live-class-zoom">
					
					<?php echo get_phrase('join_live_class'); ?>
				</a>
				</div>	
			</div>
			
		<?php endif; ?>
	</div>


<div class="col-lg-9 col-12">
	<!-- Zoom -->
	<?php if (addon_status('zoom-live-class')) : ?>
			<?php $live_class = $this->db->get_where('zoom_live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0) :
				$live_class_scheduled = 1;
				$live_class = $live_class->row_array(); ?>
				<div class="lessons__live-class text-start">
					<h6 class="meeting-id"></h6> <?php echo get_phrase('zoom_live_class_schedule'); ?>
					<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h6>
					<p>
						<?php echo $live_class['note_to_students']; ?>
					</p>
					<a href="<?php echo site_url('addons/zoom_liveclass/join/' . $course_id); ?>" class="lessons__live-class-zoom">
						
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>
</div>



<!--  -->
<div class="col-lg-9 col-12">
<?php if (addon_status('live-class')) : ?>
			<?php $live_class = $this->db->get_where('live_class', array('course_id' => $course_id));
			if ($live_class->num_rows() > 0) :
				$live_class_scheduled = 1;
				$live_class = $this->db->get_where('live_class', array('course_id' => $course_id))->row_array(); ?>
				<div class="lessons__live-class text-start">
					<h6 class="meeting-id"></h6> <?php echo get_phrase('zoom_live_class_schedule'); ?>
					<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h6>
					<p>
						<?php echo $live_class['note_to_students']; ?>
					</p>
					<a href="<?php echo site_url('addons/liveclass/join/' . $lessons_details['course_id']); ?>" class="lessons__live-class-zoom">
						
						<?php echo get_phrase('join_live_video_class'); ?>
					</a>
				</div>
			<?php endif; ?>
		<?php endif; ?>
</div>
<!--  -->
<div class="col-lg-9 col-12">
<?php if (addon_status('live-class') && addon_status('jitsi-live-class')) echo ''; ?>

<?php if (addon_status('jitsi-live-class')) : ?>
	<?php $live_class = $this->db->get_where('jitsi_live_class', array('course_id' => $course_id));
	if ($live_class->num_rows() > 0) :
		$live_class_scheduled = 1;
		$live_class = $live_class->row_array(); ?>
		<div class="lessons__live-class text-start">
			<h6 class="meeting-id"></h6> <?php echo get_phrase('jitsi_live_class_schedule'); ?>
			<h6 class="schedule"><?php echo date('h:i A', $live_class['time']); ?> : <?php echo date('D, d M Y', $live_class['date']); ?></h6>
			<p>
				<?php echo $live_class['note_to_students']; ?>
			</p>
			<div class="d-flex justify-content-end">
			<a target="_blank" href="<?php echo site_url('addons/jitsi_liveclass/join/' . $course_id); ?>" class="lessons__live-class-zoom">
				
				<?php echo get_phrase('join_live_video_class'); ?>
			</a>
			</div>	
		</div>
	<?php endif; ?>
<?php endif; ?>
</div>


<div class="col-12">

<?php if(!$live_class_scheduled): ?>
	<div class=" empty">
		<?php echo get_phrase('live_class_is_not_scheduled_yet'); ?>
	</div>
<?php endif; ?>

</div>

</div>


	

		


		

	

	










