<div class="d-sm-flex flex-row flex-sm-column justify-content-sm-center flex-md-row justify-content-md-center flex-lg-row justify-content-lg-center flex-xl-row flex-xxl-row"
    style="background: rgba(0,0,0,0);margin: 10px 0;border-color: var(--bs-secondary-color);">
    <div style="padding: 0 30px;width: 400px;margin-top: 156px;">
        <h1>Heading</h1>
        <p>this is side paragraph to put words in this is the side paragraph to put words in</p>
    </div>
    <div style="max-width: 400px;">

        <form action="<?php echo base_url('home/put_complains'); ?>" method="POST"
            style="background: #00000010;padding: 15px 30px;border-radius: 30px;margin: 20px 0;">
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">Name</label><input
                    class="form-control" type="text" name="name" style="font-size: 17px;"></div>
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">Email</label><input
                    class="form-control" type="email" name="email" style="font-size: 17px;"></div>
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">Phone
                    number</label><input class="form-control" type="text" name="phone" style="font-size: 17px;"></div>
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">the course with
                    the problem</label>
                <select class="form-select" name="course_id" style="font-size: 17px;">
                    <option value="0" selected="" hidden>witch course</option>
                    <?php foreach ($courses_data as $course) { ?>
                        <option value="<?= $course['id'] ?>"><?= $course['title'] ?></option>
                    <?php } ?>

                </select>
            </div>
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">the type of the
                    problem</label>
                <select class="form-select" name="problem_type" style="font-size: 17px;">
                    <?php if ($user_data['role_id'] == 1) { ?>
                        <option value="" selected="" hidden>What is the type of the problem</option>
                        <option value="sign_problem">Sign Problem</option>
                        <option value="payment_problem">Payment Problem</option>
                        <option value="general_matter">General matter</option>
                    <?php } else { ?>
                        <option value="" selected="" hidden>What is the type of the problem</option>
                        <option value="technical_problem">Technical Problem</option>
                        <option value="quiz_problem">Quiz Problem</option>
                        <option value="content_problem">Content Problem</option>
                        <option value="general_problem">General Problem</option>
                    <?php } ?>
                </select>
            </div>
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">attatch a
                    screenshot&nbsp;</label><input class="form-control" type="file" style="font-size: 17px;"></div>
            <div style="margin-bottom: 20px;"><label class="form-label"
                    style="margin-bottom: 0;padding-left: 10px;color: var(--bs-light-text-emphasis);">what else you want
                    add ...</label><textarea class="form-control" name="message" style="font-size: 17px;"></textarea>
            </div>
            <div class="d-lg-flex justify-content-lg-center"><input class="btn btn-primary" type="submit"
                    style="margin: auto;padding: 8px 50px;border-radius: 30px;"></div>
        </form>
    </div>
</div>