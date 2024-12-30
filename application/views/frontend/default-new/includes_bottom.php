<script src="<?php echo base_url() . 'assets/frontend/default-new/js/bootstrap.bundle.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/berli.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/course.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/jquery.meanmenu.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/jquery.nice-select.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/jquery.webui-popover.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/owl.carousel.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/script-2.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/slick.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/js/venobox.min.js'; ?>"></script>

<script src="<?php echo base_url() . 'assets/frontend/default-new/js/wow.min.js'; ?>"></script>

<script src="<?php echo base_url() . 'assets/frontend/default-new/js/script.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/frontend/default-new/summernote-0.8.20-dist/summernote-lite.min.js'; ?>"></script>




<script src="<?php echo base_url() . 'assets/global/toastr/toastr.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/global/jquery-form/jquery.form.min.js'; ?>"></script>
<script src="<?php echo base_url() . 'assets/global/tagify/jquery.tagify.js'; ?>"></script>

<!-- SHOW TOASTR NOTIFIVATION -->
<?php if ($this->session->flashdata('flash_message') != "") : ?>

	<script type="text/javascript">
		toastr.success('<?php echo $this->session->flashdata("flash_message"); ?>');
	</script>

<?php endif; ?>

<?php if ($this->session->flashdata('error_message') != "") : ?>

	<script type="text/javascript">
		toastr.error('<?php echo $this->session->flashdata("error_message"); ?>');
	</script>

<?php endif; ?>

<?php if ($this->session->flashdata('info_message') != "") : ?>

	<script type="text/javascript">
		toastr.info('<?php echo $this->session->flashdata("info_message"); ?>');
	</script>

<?php endif; ?>


<!-- new scripts  -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
	integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!-- Bootstrap JavaScript Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
