<style>
    .radius-16 {
        border-radius: 16px;
    }

    .radius-8 {
        border-radius: 8px;
    }

    .orange-border {
        border: 2px solid #F7931E;
    }

    .dark-border {
        border: 2px solid #232F43;
    }

    .orange-box {
        background-color: #F7931E;
        color: white;
        transition: .3s;
    }

    .orange-box-ani:hover {
        opacity: 0.8;
        transform: scale(1.1);
        color: white;
        background: #F7931E;
    }

    .white-or-box {
        background-color: white;
        color: #F7931E;
        border: 2px solid #232F43;
    }

    .txt-orange {
        color: #F7931E;
    }

    .white-border {
        border: 5px solid white;
    }

    .text-dark-color {
        color: #232F43;
    }

    .bg-main-color {
        background-color: #232f43;
    }
</style>

<div class="d-flex flex-row" style=";padding: 0 30px;">
    <div class="w-100 h-100 d-lg-flex flex-column justify-content-lg-start bg-white radius-16 p-2 shadow-sm">
        <div class="bg-main-color d-flex text-white flex-column align-items-center p-3 radius-8 shadow-sm">
            <!-- tha header of dealing with complains -->
            <h2>deal with complain</h2>
            <span
                class="badge font-16 rounded-pill white-border text-white bg-<?= $complain_data['status'] == 'open' ? 'danger' : 'success'; ?> text-center"><?= $complain_data['status'] ?></span>
        </div>
        <div class="d-flex justify-content-around text-dark-color mt-4">
            <div class="d-flex flex-column align-items-center">
                <h4>course name</h4>
                <span
                    class="font-18 py-1 px-4 orange-box radius-8 font-weight-bolder"><?= $complain_course_name ?></span>
            </div>
            <div class="d-flex flex-column align-items-center">
                <h4>problem type</h4>
                <span
                    class="font-18 py-1 px-4 orange-box radius-8 font-weight-bolder"><?= $complain_data['problem_type'] ?></span>
            </div>
        </div>
        <h3 class="d-lg-flex text-dark-color mt-4 ml-2">
            <?= $complain_user_data['first_name'] ?>
            <?= $complain_user_data['last_name'] ?> :
        </h3>
        <div class="orange-border radius-8">
            <p class="text-dark-color text-center text-dark-color px-5 py-2 font-18">
                " <?= $complain_data['message'] ?> "
            </p>
        </div>
    </div>
    <div class="h-100 w-100 d-lg-flex justify-content-lg-center align-items-lg-center" style="padding: 0 10px;">
        <form action="<?= site_url('admin/complain_admin_replay') ?>" method="POST"
            class="d-flex d-lg-flex flex-column align-items-md-center justify-content-lg-center align-items-lg-center shadow-sm radius-8 text-dark-color bg-white"
            style="width: 100%;padding: 30px 20px;">
            <h1 class="text-center"><?php echo get_phrase("replay_here") ?> !</h1>
            <h4 class="d-lg-flex text-center"
                style="color: var(--bs-body-bg);background: var(--bs-form-invalid-border-color);padding: 1px 12px;border-radius: 25px;">
                it will goo to him as a private message</h4>
            <textarea class="form-control border-1 radius-8"
                style="min-height: 153px;margin-bottom: 46px; border:2px solid #D6D6D6;" name="message"></textarea>
            <input type="hidden" name="receiver" value="<?= $complain_data['user_id'] ?>">
            <input type="hidden" name="complain_id" value="<?= $complain_data['id'] ?>">
            <input class="radius-8 orange-box orange-box-ani border-0 py-1 px-3 align-self-end" type="submit"
                style="width: 100px;">
        </form>
    </div>
</div>