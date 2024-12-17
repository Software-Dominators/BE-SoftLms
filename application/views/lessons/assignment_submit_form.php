<div class="row justify-content-center">
    <div class="col-md-8">
        <div class=" assignment-form">
          
                <div class="row">
                    <div class="col-12 d-flex justify-content-between align-items-center">
                        <h5 class="assignment-form__title"><?php echo get_phrase('assignment form'); ?></h5>
                        <a class="assignment-form__go-back" href="javascript:;"
                            onclick="load_course_assignments('<?= $course_id; ?>')">
                            <?php echo get_phrase('assignment list'); ?></a>
                    </div>
                </div>

                <?php
                $this->db->where('assignment_id', $assignment_id);
                $assignment = $this->db->get('assignment')->row_array();
                ?>
                <div class="col">
                    <div class="col-md-6">
                        <h6 class="header-title my-1"><?php echo get_phrase('questions:'); ?></h6>
                    </div>

                    <div class="col-md-6 pt-2">
                        <div>
                            <?php echo htmlspecialchars_decode($assignment['questions']); ?>
                        </div>
                    </div>
                    <?php if ($assignment['question_file'] != "") { ?>
                        <div class="col-md-6 pt-2 pb-2">
                            <div>
                                <?php echo get_phrase('download_attached_file:'); ?>
                            </div>
                            <a href="<?php echo site_url('uploads/assignment_files/assignments/' . $assignment['question_file']); ?>"
                                download class="assignment-form__go-back"> <?php echo $assignment['question_file']; ?> </a>
                        </div>
                    <?php } ?>
                </div>




                <form class="ajaxForm" action="<?= site_url('addons/assignment/submit_assignment'); ?>"
                    enctype="multipart/form-data" method="post">


                    <div class="form-group mb-3">
                        <label for="exampleInputEmail1"><?php echo get_phrase('answer'); ?></label>
                        <textarea class="form-control " name="answer" id="answer"></textarea>

                    </div>


                    <div class="form-group mb-3">
                        <label for="answer_file"><?php echo get_phrase('upload_file') . " " . "(optional)"; ?></label>

                        <input type="file" name="answer_file" class="form-control" id="inputGroupFile04"
                            onchange="changeTitleOfImageUploader(this)">

                    </div>
           

            <div class="form-group mb-3">
                <label for="note"><?php echo get_phrase('enter_your_private_note') . " " . "(optional)"; ?></label>

                <textarea name="note" id="note" class="form-control"></textarea>

            </div>

            <div>
                <input type="hidden" name="assignment_id" id="assignment_id" value="<?php echo $assignment_id; ?>"
                    class="form-field" Placeholder="assignment_id">

                <input type="hidden" name="course_id" id="course_id" value="<?php echo $course_id; ?>"
                    class="form-field" Placeholder="course_id">
            </div>


            <button class="btn btn-primary  float-right" type="submit"><?= site_phrase('submit'); ?>
            </button>

            </form>
        </div>
     
    </div> <!-- end card -->
</div><!-- end col-->


<!-- end row-->

<script type="text/javascript">
    $(function () {
        //tinymce editor
        if ($(".author-answer-editor")[0]) {
            tinymce.init({
                selector: ".author-answer-editor",
                menubar: false,
                statusbar: false,
                branding: false,
                toolbar: "bold  italic",
            });
        }
    });
    $(function () {
        //The form of submission to RailTeam js is defined here.(Form class or ID)
        $('.ajaxForm').ajaxForm({
            beforeSend: function () {
            },
            uploadProgress: function (event, position, total, percentComplete) {
                var percentVal = percentComplete + '%';
            },
            complete: function (xhr) {
                var jsonResponse = JSON.parse(xhr.responseText);


                if (jsonResponse.status == 'error') {
                    toastr.error(jsonResponse.message);
                } else {

                    toastr.success(jsonResponse.message);
                    load_course_assignments('<?= $course_id; ?>');

                }
            },
            error: function () {
                //You can write here your js error message
            }
        });
    });

</script>