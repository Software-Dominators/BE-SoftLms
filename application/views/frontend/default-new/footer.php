<footer class="footer">
  <div class="container">
    <div class="row justify-content-between">

      <div class="col-lg-5 col-md-4">
        <div class="footer__left">
          <img src="<?php echo base_url('assets/frontend/design-one/assets/images/home/footer.svg'); ?>"
            class="footer__logo">
          <div class="footer__social">
            <a href=""><i class="fa-brands fa-facebook"></i></a>
            <a href=""><i class="fa-brands fa-instagram"></i></a>
            <a href=""><i class="fa-brands fa-whatsapp"></i></a>
            <a href=""><i class="fa-brands fa-twitter"></i></a>
          </div>
          <div class="footer__subscribe">
            <p> <?php echo get_phrase('Subscribe to our Newsletter'); ?></p>

            <form class="ajaxForm resetable" action="<?php echo site_url('home/subscribe_to_our_newsletter'); ?>"
              method="post">
              <input type="email" class="form-control" id="subscribe_email"
                placeholder="<?php echo get_phrase('Enter your email address'); ?>" name="email">
              <button class="btn btn-primary" type="submit">
                <?php echo get_phrase('Subscribe'); ?>
              </button>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-2 col-md-4">
        <div class="footer__list">
          <h6>
            <i class="fa-solid fa-caret-right"></i>
            <span><?php echo site_phrase('top_categories'); ?></span>
          </h6>
          <ul>
            <?php $top_10_categories = $this->crud_model->get_top_categories(6, 'sub_category_id'); ?>
            <?php foreach ($top_10_categories as $top_10_category): ?>
              <?php $category_details = $this->crud_model->get_category_details_by_id($top_10_category['sub_category_id'])->row_array(); ?>
              <li><a href="<?php echo site_url('home/courses?category=' . $category_details['slug']); ?>">
                  <?php echo $category_details['name']; ?>
                </a></li>
            <?php endforeach; ?>
          </ul>
        </div>
      </div>
      <div class="col-lg-2 col-md-4">
        <div class="footer__list">
          <h6>
            <i class="fa-solid fa-caret-right"></i>
            <span> <?php echo site_phrase('useful_links'); ?></span>
          </h6>

          <ul>
            <?php if (get_settings('allow_instructor') == 1): ?>
              <li> <a href="<?php echo site_url('home/become_an_instructor'); ?>">
                  <?php echo site_phrase('Become an instructor'); ?>
                </a></li>
            <?php endif; ?>
            <li> <a href="<?php echo site_url('blog'); ?>">
                <?php echo site_phrase('blog'); ?>
              </a></li>
            <li><a href="<?php echo site_url('home/courses'); ?>">
                <?php echo site_phrase('all_courses'); ?>
              </a></li>
            <li><a href="<?php echo site_url('sign_up'); ?>">
                <?php echo site_phrase('sign_up'); ?>
              </a></li>
            <?php $custom_page_menus = $this->crud_model->get_custom_pages('', 'footer'); ?>
            <?php foreach ($custom_page_menus->result_array() as $custom_page_menu): ?>
              <li><a href="<?php echo site_url('page/' . $custom_page_menu['page_url']); ?>">
                  <?php echo $custom_page_menu['button_title']; ?>
                </a></li>
            <?php endforeach; ?>
          </ul>
        </div>
      </div>
      <div class="col-lg-2 col-md-4">
        <div class="footer__list">
          <h6>
            <i class="fa-solid fa-caret-right"></i>
            <span> <?php echo site_phrase('help'); ?></span>
          </h6>



          <ul>
            <li><a href="<?php echo site_url('home/contact_us'); ?>">
                <?php echo site_phrase('contact_us'); ?>
              </a></li>
            <li><a href="<?php echo site_url('home/about_us'); ?>">
                <?php echo site_phrase('about_us'); ?>
              </a></li>
            <li><a href="<?php echo site_url('home/privacy_policy'); ?>">
                <?php echo site_phrase('privacy_policy'); ?>
              </a></li>
            <li><a href="<?php echo site_url('home/terms_and_condition'); ?>">
                <?php echo site_phrase('terms_and_condition'); ?>
              </a></li>
            <li><a href="<?php echo site_url('home/faq'); ?>">
                <?php echo site_phrase('FAQ'); ?>
              </a></li>
            <li><a href="<?php echo site_url('home/refund_policy'); ?>">
                <?php echo site_phrase('refund_policy'); ?>
              </a></li>
          </ul>
        </div>
      </div>


    </div>
  </div>
</footer>

<hr>

<!-- PAYMENT MODAL -->
<!-- Modal -->
<?php
$paypal_info = json_decode(get_settings('paypal'), true);
$stripe_info = json_decode(get_settings('stripe_keys'), true);
if ($paypal_info[0]['active'] == 0) {
  $paypal_status = 'disabled';
} else {
  $paypal_status = '';
}
if ($stripe_info[0]['active'] == 0) {
  $stripe_status = 'disabled';
} else {
  $stripe_status = '';
}
?>


<script>
  $('document').ready(function () {
    new WOW().init();
  });
</script>