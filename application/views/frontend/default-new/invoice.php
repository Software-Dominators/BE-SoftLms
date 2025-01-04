<?php
$course_details = $this->crud_model->get_course_by_id($payment_info['course_id'])->row_array();
$buyer_details = $this->user_model->get_all_user($payment_info['user_id'])->row_array();
$sub_category_details = $this->crud_model->get_category_details_by_id($course_details['sub_category_id'])->row_array();
$instructor_details = $this->user_model->get_all_user($course_details['user_id'])->row_array();
?>

<!------------ Invoice section start ----->
<section class="invoice">
  <div class="container print-content">
    <div class="invoice-heading mt-5">
      <div class="row align-items-center">
        <div class="col-6">
          <h3 class="invoice-title"><?php echo get_phrase('invoice') ?></h3>
          <div class="invoice-no">
            <p class="invoice-label"><?php echo get_phrase('Invoice ID') ?> :</p>
            <h6 class="invoice-id">#<?php echo $payment_info['id']; ?></h6>
          </div>
        </div>
        <div class="col-6 text-end">
          <img 
            class="invoice-logo"
            loading="lazy" 
            src="<?php echo base_url('uploads/system/') . get_frontend_settings('dark_logo'); ?>" 
            alt="Logo"
          />
        </div>
      </div>
    </div>
    <div class="invoice-bill mt-4">
      <div class="row">
        <div class="col-6">
          <h6 class="bill-title"><?php echo get_phrase('Billed To') ?>:</h6>
          <p class="bill-info"><?php echo $buyer_details['first_name'] . ' ' . $buyer_details['last_name']; ?></p>
          <p class="bill-info"><?php echo $buyer_details['email']; ?></p>
          <p class="bill-info"><?php echo $buyer_details['address']; ?></p>
        </div>
        <div class="col-6 text-end">
          <h6 class="bill-title"><?php echo get_phrase('Date Of Issue') ?>:</h6>
          <p class="bill-info"><?php echo date('d-M-Y', $payment_info['date_added']); ?></p>
        </div>
      </div>
    </div>
    <div class="invoice-summary mt-4">
      <h6 class="summary-title"><?php echo get_phrase('Invoice Total') ?>:</h6>
      <h2 class="summary-amount"><?php echo currency($payment_info['amount']); ?></h2>
    </div>
    <div class="invoice-details mt-4">
      <h6 class="details-title">Course:</h6>
      <p class="details-info"><?php echo $course_details['title']; ?></p>
      <h6 class="details-title">Instructor:</h6>
      <p class="details-info"><?php echo $instructor_details['first_name'] . ' ' . $instructor_details['last_name']; ?></p>
      <h6 class="details-title">Price:</h6>
      <p class="details-info"><?php echo currency($payment_info['admin_revenue'] + $payment_info['instructor_revenue']); ?></p>
    </div>
    <div class="invoice-payment mt-4">
      <div class="row">
        <div class="col-6 d-flex  align-items-center">
          <h6 class="payment-title me-2 mt-0"><?php echo get_phrase('Paid By'); ?>:</h6>
          <p class="payment-info"><?php echo ucfirst($payment_info['payment_type']); ?></p>
        </div>
        <div class="col-6 text-end d-flex align-items-center justify-content-end">
          <h6 class="payment-title me-2">Grand Total :</h6>
          <h4 class="payment-amount"><?php echo currency($payment_info['amount']); ?></h4>
        </div>
      </div>
    </div>
    <div class="invoice-actions mt-4 d-flex justify-content-end">
      <a href="#" onclick="window.print()" class="btn print-btn">Print</a>
      <a href="#" class="btn back-btn">Back</a>
    </div>
  </div>
</section>


<style>


.invoice-title {
  color: var(--primary-color);
  text-transform: uppercase;
}

.invoice-label {
  color: var(--paragraph-color);
}

.invoice-id {
  color: var(--dark-grey-color);
}

.invoice-logo {
  height: 55px !important;
  width: auto !important;
}

.bill-title,
.summary-title,
.details-title,
.payment-title {
  color: var(--subtitle-color);
}

.bill-info,
.details-info,
.payment-info {
  color: var(--paragraph-color);
}
.payment-info{
    background-color:var(--light-primary-color);
      padding: 4px 20px;
      border-radius:8px;
}
.summary-amount,
.payment-amount {
  color: var(--primary-color);
}

.invoice-summary,
.invoice-details {
  background-color: var(--light-grey-color);
  padding: 1.5rem;
  border-radius: 10px;
}
.invoice-actions{
    gap: 8px;
}
.print-btn {
  background-color: var(--primary-color);
  color: var(--button-text-color);
  padding: 0.5rem 1rem;
  border: none;
  border-radius: 8px;
  min-width:120px ;
}

.back-btn {
  border: 1px solid var(--primary-color);
  background-color: transparent;
  color: var(--primary-color);
  padding: 0.5rem 1rem;
  border-radius: 8px;
  min-width:120px ;
}

</style>
<!------------ Invoice secton end -------->