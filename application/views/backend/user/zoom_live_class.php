<?php $zoom_meeting = $this->db->where('course_id', $course_details['id'])->get('zoom_meetings')->row_array(); ?>
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <label for="zoom_topic"><?php echo get_phrase('Meeting Topic'); ?></label>
            <input value="<?php echo $zoom_meeting['topic'] ?? '' ?>" type="text" class="form-control" id="zoom_topic" placeholder="Introduction Meeting">
        </div>

        <div class="form-group">
            <label for="zoom_duration"><?php echo get_phrase('Meeting Duration'); ?></label>
            <input value="<?php echo $zoom_meeting['duration'] ?? '' ?>" type="text" class="form-control" id="zoom_duration" placeholder="60">
        </div>

        <div class="form-group">
            <label for="zoom_meeting_instruction"><?php echo get_phrase('Instructions for students'); ?></label>
            <textarea id="zoom_meeting_instruction"><?php echo $zoom_meeting['instructions'] ?? '' ?></textarea>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group mt-5 pt-5 text-center">
            <div class="alert alert-info w-75 text-center ml-auto mr-auto mb-4">
                <strong><?php echo get_phrase('Attention!'); ?></strong><br>
                <?php echo get_phrase('Give some instructions to keep your students informed about the meeting'); ?>
            </div>
            <button type="button" onclick="save_zoom_meeting()" class="btn btn-info w-75 mb-2"><?php echo get_phrase('Save Meeting Info'); ?></button>
            <button type="button" onclick="start_zoom_meeting()" class="btn btn-success w-75"><?php echo get_phrase('Start Meeting'); ?></button>
        </div>
    </div>
</div>

<script>
    $(function() {
        initSummerNote(['#zoom_meeting_instruction']);
    });

    function save_zoom_meeting(){
        var zoom_topic = $('#zoom_topic').val();
        var zoom_duration = $('#zoom_duration').val();
        var zoom_instructions = $('#zoom_meeting_instruction').val();

        if (zoom_topic == '' || zoom_duration == '') {
            error_notify('<?php echo get_phrase("Meeting ID and password can not be empty"); ?>');
        } else {
            $.ajax({
                type: 'POST',
                url: '<?php echo site_url('user/save_zoom_meeting/' . $course_details['id']); ?>',
                data: {
                    'zoom_topic': zoom_topic,
                    'zoom_duration': zoom_duration,
                    'instructions': zoom_instructions
                },
                success: function(response) {
                    success_notify(response);
                }
            });
        }
    }

    function start_zoom_meeting() {
        $.ajax({
            type: 'GET',
            url: '<?php echo site_url('user/start_zoom_meeting/' . $course_details['id']); ?>',
            success: function(response) {
                window.open(response, '_blank');
            }
        });
    }
</script>
