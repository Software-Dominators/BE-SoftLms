<div class="row">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <h4 style="color:#232F43" class="header-style page-title">
                    <i style="color: #232F43; font-size: 27px" class="dripicons-view-apps"></i>
                    <?php echo get_phrase('Manage profile'); ?>
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>

<div class="row card">
    <div class="col-xl-12 ">
        <div class="card">
            <div class="card-body ">
                <h4 class="header-title mb-3"><?php echo get_phrase('basic_info'); ?></h4>
                <?php
                foreach ($edit_data as $row):
                    $social_links = json_decode($row['social_links'], true);
                    // Opening the form
                    echo form_open(site_url('admin/manage_profile/update_profile_info/' . $row['id']), array('class' => 'form-horizontal form-groups-bordered validate ', 'target' => '_top', 'enctype' => 'multipart/form-data')); ?>

                    <div class="form-group">
                        <div class="d-flex mt-2">
                            <div>
                                <img class="rounded-circle img-thumbnail"
                                     src="<?php echo $this->user_model->get_user_image_url($this->session->userdata('user_id')); ?>"
                                     alt="" style="height: 50px; width: 50px;">
                            </div>
                        </div><br>
					</div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('first_name'); ?></label>
                            <input type="text" class="form-control input-style" name="first_name" value="<?php echo $row['first_name']; ?>" required />
                        </div>

                        <div class="form-group">
                            <label><?php echo get_phrase('last_name'); ?></label>
                            <input type="text" class="form-control input-style" name="last_name" value="<?php echo $row['last_name']; ?>" required />
                        </div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('email'); ?></label>
                            <input type="email" class="form-control input-style" name="email" value="<?php echo $row['email']; ?>" required />
                        </div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('facebook_link'); ?></label>
                            <input type="text" class="form-control input-style" name="facebook_link" value="<?php echo $social_links['facebook']; ?>" />
                        </div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('twitter_link'); ?></label>
                            <input type="text" class="form-control input-style" name="twitter_link" value="<?php echo $social_links['twitter']; ?>" />
                        </div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('linkedin_link'); ?></label>
                            <input type="text" class="form-control input-style" name="linkedin_link" value="<?php echo $social_links['linkedin']; ?>" />
                        </div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('a_short_title_about_yourself'); ?></label>
                            <textarea rows="5" id="short-title" class="form-control textarea-style" name="title"
                                      placeholder="<?php echo get_phrase('a_short_title_about_yourself'); ?>"><?php echo $row['title']; ?></textarea>
                        </div>

                        <div class="form-group">
                            <label class="label-style" for="skills"><?php echo get_phrase('skills'); ?></label>
                            <input type="text" class="form-control input-style bootstrap-tag-input tag" id="skills"
                                   name="skills" data-role="tagsinput" style="width: 100%;"
                                   value="<?php echo $row['skills']; ?>" />
                            <small class="text-muted"><?php echo get_phrase('write_your_skill_and_click_the_enter_button'); ?></small>
                        </div>

                        <div class="form-group">
                            <label class="label-style"><?php echo get_phrase('biography'); ?></label>
                            <textarea rows="5" class="form-control textarea-style" name="biography" id="biography"
                                      placeholder="<?php echo get_phrase('biography'); ?>"><?php echo $row['biography']; ?></textarea>
                        </div>

                        <!-- Edit button at the bottom-right -->
                        <div class="w-100 text-right">
                            <button type="submit" class="submit-btn"><?php echo get_phrase('Edit'); ?></button>
                        </div>


					
				</div>
                    </form>
                <?php endforeach; ?>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        initSummerNote(['#biography']);
    });
</script>
