<!-- start page title -->
<div class="row enrollment">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body p-0">
               
                <h4  
                class="  page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
       
                 <span>   <?php echo get_phrase('Enrolment'); ?> </span>
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div> <!-- end card body-->
  




<div  class ="card parent-roll enrollment">

<div  class="row " >
    <div class="col-12 ">
        <div class="">
            <div class="card-body">
              <div class="col-lg-12">
                <!-- <h4 class=" header-title"><?php echo get_phrase('enrolment_form'); ?></h4> -->

                <form class="required-form" action="<?php echo site_url('admin/enrol_student/enrol'); ?>" method="post" enctype="multipart/form-data">

                    <div class="form-group">
                        <label class ="font" for="multiple_user_id"><?php echo get_phrase('Users /Student name '); ?><span class="required">*</span> </label>
                       
                        <select class="server-side-select2" action="<?php echo base_url('admin/get_select2_user_data'); ?>" name="user_id[]" multiple="multiple" required>
                        choose Student  </select>
                    </div>

                    <div class="form-group">
                        <label class ="font"for="multiple_course_id"><?php echo get_phrase('course_to_enrol'); ?>
                        <span class="required">*</span> </label>
                        <select class="select2 form-control select2-multiple font-style enrol-menu" data-toggle="select2"
                         placeholder="Choose ..." name="course_id[]" id="multiple_course_id" required>
                           
                        <option value=""><?php echo get_phrase('select_a_course'); ?></option>
                            <?php $course_list = $this->db->where('status', 'active')->or_where('status', 'private')->get('course')->result_array();
                                foreach ($course_list as $course): ?>
                                <option value="<?php echo $course['id'] ?>"><?php echo $course['title']; ?></option>
                            <?php endforeach; ?>
                            </select>
                    </div>

                    <div class="">
        <div  class=" d-flex justify-content-end w-100 enroll-action-btn my-3">
            
           
            <button  type="button" onclick="start_bbb_meeting()" class="  submit-btn"><?php echo get_phrase('Enroll'); ?></button>
        </div>
    </div>
                </form>
              </div>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
 
             
</div>
                                </div>

