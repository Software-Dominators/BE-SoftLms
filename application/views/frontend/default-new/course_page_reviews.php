<?php
$user_id = $this->session->userdata('user_id');
$admin_login = $this->session->userdata('admin_login');
$my_rating = $this->db->where('user_id', $user_id)->where('ratable_id', $course_details['id'])->where('ratable_type', 'course')->get('rating'); ?>
<?php if ($my_rating->num_rows() == 0 && enroll_status(['course_id' => $course_details['id']])): ?>
    <div class="comment instructor-student-feed-back" id="course_page_add_review_form">
      
        <div class="course__review-form">
        <h2><?php echo get_phrase('Write a Review') ?></h2>


            <form class="ajaxForm" action="<?php echo site_url('home/rate_course'); ?>" method="post">
                <input type="hidden" name="course_id" value="<?php echo $course_details['id']; ?>">
                <div class="form-group">
                    <select class="form-control" name="starRating">
                        <?php for ($i = 1; $i <= 5; $i++): ?>
                            <option value="<?php echo $i; ?>">
                                <?php echo get_phrase("$i Star Rating"); ?>
                            </option>
                        <?php endfor; ?>
                    </select>
                </div>
                <div class="form-group">
                    <textarea class="form-control" placeholder="<?php echo get_phrase('Write your comment') ?>" rows="4"
                        name="review"></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary"><?php echo get_phrase('Submit'); ?></button>
                </div>
            </form>
        </div>

    </div>
<?php endif; ?>

<?php $ratings = $this->crud_model->get_ratings('course', $course_details['id'])->result_array();
foreach ($ratings as $rating):
    $user_details = $this->user_model->get_user($rating['user_id'])->row_array();
    ?>



    <!-- start -->
    <div class="course__review-card" id="userReview<?php echo $rating['id']; ?>">
        <div class="top d-flex justify-content-between">
            <div class="left d-flex ">
                <img src="<?php echo $this->user_model->get_user_image_url($user_details['id']); ?>"
                    alt="<?= $user_details['first_name'] . ' ' . $user_details['last_name']; ?>">

                <div class="d-flex flex-column justify-content-between">
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <span> <?php echo $rating['rating']; ?></span>
                    </div>
                    <h5> <?php echo $user_details['first_name'] . ' ' . $user_details['last_name']; ?></h5>
                </div>
            </div>

            <div class="right d-flex align-items-center gap-2 ">
                <small><?php echo date('d-M-Y', $rating['date_added']); ?></small>
                <?php if ($user_details['id'] == $user_id || $admin_login): ?>
                    <div class="dropdown">
                        <a href="#" class="text-dark" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-ellipsis-vertical "></i>
                        </a>
                        <ul class="dropdown-menu">
                            <?php if ($user_details['id'] == $user_id): ?>
                                <li>
                                    <a class="dropdown-item" onclick="$('#myReview<?php echo $rating['id']; ?>').toggle();"
                                        href="#">
                                        <i class="fas fa-pencil me-2"></i> <?php echo get_phrase('Edit'); ?>
                                    </a>
                                </li>
                            <?php endif; ?>

                            <?php if ($user_details['id'] == $user_id || $admin_login): ?>
                                <li>
                                    <a class="dropdown-item text-danger"
                                        onclick="actionTo('<?php echo site_url('home/remove_rating/' . $course_details['id'] . '/' . $rating['id']) ?>')"
                                        href="#">
                                        <i class="fas fa-trash me-2"></i> <?php echo get_phrase('Remove'); ?>
                                    </a>
                                </li>
                            <?php endif; ?>
                        </ul>
                    </div>
                <?php endif; ?>

            </div>
        </div>
        <div class="bottom">
            <p><?php echo $rating['review']; ?></p>
        </div>
    </div>
    <!-- end -->
    <?php if ($user_details['id'] == $user_id): ?>
        <div class="course__review-form" id="myReview<?php echo $rating['id']; ?>">
            <form class="ajaxForm" action="<?php echo site_url('home/rate_course'); ?>" method="post">
                <input type="hidden" name="course_id" value="<?php echo $course_details['id']; ?>">

                <div class="form-group">
                    <select class="form-control" name="starRating">
                        <?php for ($i = 1; $i <= 5; $i++): ?>
                            <option value="<?php echo $i; ?>" <?php echo ($rating['rating'] == $i) ? 'selected' : ''; ?>>
                                <?php echo get_phrase("$i Star Rating"); ?>
                            </option>
                        <?php endfor; ?>
                    </select>
                </div>
                <div class="form-group">
                    <textarea class="form-control" placeholder="<?php echo get_phrase('Write your comment') ?>" rows="4"
                        name="review"><?php echo $rating['review']; ?></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary"><?php echo get_phrase('Submit'); ?></button>
                </div>

            </form>

        </div>
    <?php endif; ?>

<?php endforeach; ?>

<?php include "init.php"; ?>