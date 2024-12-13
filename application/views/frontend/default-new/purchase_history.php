<?php $this->db->where('user_id', $this->session->userdata('user_id'));
$purchase_history = $this->db->get('payment',$per_page, $this->uri->segment(3)); ?>
<?php $user_details = $this->user_model->get_all_user($this->session->userdata('user_id'))->row_array(); ?>
<?php include "breadcrumb.php"; ?>

  <!-------- Wish List body section start ------>
<section class="">
    <div class="">
        <div class="profile-container">
            <div class="profile-menu">
                <?php include "profile_menus.php"; ?>
            </div>
            <div class="profile-content container">
                <div class="profile container">
                    <div class="row">
                        <div class="col-12">
                        <table class="table">
                        <thead class="table-head">
                            <tr class="bg-info">
                                <th scope="" colspan="2"><?php echo get_phrase('Purchased courses') ?></th>
                                <th scope="" colspan="2"><?php echo get_phrase('Payment method') ?></th>
                                <th scope="" colspan="2"><?php echo get_phrase('Price') ?></th>
                                <th scope="" colspan="2"><?php echo get_phrase('Purchased Date') ?></th>
                                <th scope="" class="w-auto"><?php echo get_phrase('Invoice') ?></th>
                            </tr>
                        </thead>
                        <div class="purchase-2">
                            <tbody>
                            <?php if ($purchase_history->num_rows() > 0):
                                foreach($purchase_history->result_array() as $each_purchase):
                                $course_details = $this->crud_model->get_course_by_id($each_purchase['course_id'])->row_array();?>
                                    <tr>
                                        <th scope="row">
                                            <div class="purchase-2-img align-items-center">
                                                <img loading="lazy" src="<?php echo $this->crud_model->get_course_thumbnail_url($course_details['id']); ?>">
                                                <a href="<?php echo site_url('home/course/' . rawurlencode(slugify($course_details['title'])) . '/' . $course_details['id']); ?>" class="text-15px text-dark ps-3 text-wrap">
                                                    <?php echo $course_details['title']; ?>
                                                </a>
                                            </div>
                                        </th>
                                        <td><h5><?php echo ucfirst($each_purchase['payment_type']); ?></h5></td>
                                        <td><h4><?php echo currency($each_purchase['amount']); ?></h4></td>
                                        <td><h5><?php echo date('d M Y', $each_purchase['date_added']); ?></h5></td>
                                        <td>
                                            <button class="purchase-btn">
                                                <a href="<?php echo site_url('home/invoice/'.$each_purchase['id']); ?>"><?php echo get_phrase('Invoice'); ?></a>
                                            </button>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                            </tbody>
                        </div>
                    </table>
                        </div>
                    </div>
                 
                </div>
            </div>
        </div>
    </div>
</section>