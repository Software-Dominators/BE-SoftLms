<div class="d-flex flex-row" style="height: 100vh;padding: 0 30px;">
        <div class="border rounded d-lg-flex flex-column justify-content-lg-center" style="height: 100%;width: 100%;padding: 0 10px;">
            <h3>deal with complain<span class="badge rounded-pill text-white bg-<?= $complain_data['status'] == 'open'? 'danger': 'success';?> text-center" style="margin-left: 14px;"><?= $complain_data['status']?></span></h3>
            <h6>course name ; <?= $complain_course_name ?></h6>
            <h6>problem type : <?= $complain_data['problem_type']?></h6>
            <h5 class="d-lg-flex" style="margin-top: 20px;"><?= $complain_user_data['first_name']?> <?= $complain_user_data['last_name']?> :</h5>
            <p class="text-center" style="padding: 0px 20px;font-size: 14px;"> " <?= $complain_data['message']?> "</p>
        </div>
        <div class="d-lg-flex justify-content-lg-center align-items-lg-center" style="height: 100%;width: 100%;padding: 0 10px;">
            <form action="<?= site_url('admin/complain_admin_replay') ?>" method="POST" class="d-flex d-lg-flex flex-column align-items-md-center justify-content-lg-center align-items-lg-center" style="width: 100%;padding: 30px 20px;background: #f2f2f2;border-radius: 39px;">
                <h1 class="text-center">replay here !</h1>
                <p class="d-lg-flex" style="color: var(--bs-body-bg);background: var(--bs-form-invalid-border-color);padding: 1px 12px;border-radius: 25px;text-align: center;font-size: 12px;">it will goo to him as a private message</p>
                <textarea class="form-control" style="min-height: 153px;margin-bottom: 46px;" name="message"></textarea>
                <input type="hidden" name="receiver" value="<?= $complain_data['user_id']?>">
                <input type="hidden" name="complain_id" value="<?= $complain_data['id']?>">
                <input class="btn btn-primary" type="submit" style="font-size: 16px;width: 100px;">
            </form>
        </div>
    </div>