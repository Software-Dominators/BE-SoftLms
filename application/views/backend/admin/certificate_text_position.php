<!DOCTYPE html>
<html>
<head>
	<title><?php echo get_phrase('certificates_text_position'); ?> | <?php echo get_settings('system_title'); ?></title>
	<link rel="shortcut icon" href="<?php echo base_url('uploads/system/').get_frontend_settings('favicon');?>">
	<link href="<?php echo base_url('assets/backend/css/fontawesome-all.min.css') ?>" rel="stylesheet" type="text/css" />
	<link href="<?php echo base_url('assets/backend/css/icons.min.css'); ?>" rel="stylesheet" type="text/css" />
	
	<script src="<?php echo base_url('assets/backend/js/jquery-3.3.1.min.js'); ?>" charset="utf-8"></script>
	<script src="https://www.jqueryscript.net/demo/drag-drop-touch/jquery.draggableTouch.js"></script>

	    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
         <!-- new css file  -->
    <link href="<?=base_url('assets/backend/css/dashboardstyle/style.css')?>" rel="stylesheet" type="text/css" />


	  <!-- fontawesome-link  -->
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style type="text/css">

     
		

		@import url('https://fonts.googleapis.com/css2?family=Italianno&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Pinyon+Script&display=swap%27');
        @import url('https://fonts.googleapis.com/css2?family=Miss+Fajardose&display=swap%27');
		.draggable{
			border: 2px dashed #8d8d8d;
		    padding: 0px 5px;
		    cursor: move;
		    background-color: #15b57e33;
		    top: 0;
		    max-width: 500px;
		}
		 .page-title {
			font-family: var(--main-font--);
		 }
		.settings .note {
    background-color: #EEF6FD;
    border-radius: 8px;
    padding: 24px;
    margin: 24px 0;

}        .settings ul {
	        list-style:none;
			padding:0;
			margin-top:16px;
                      }
         .settings h3 {
			font-family: var(--main-font--);
		 }
		 .settings li {
			margin-bottom:16px;
			font-family: var(--main-font--);
		 }
	
		.back-button{
			padding: 12px 15px;
			background-color: #848484;
			border-radius: 5px;
			color: #fff;
			text-decoration: none;
			border: none;
			cursor: pointer;
		}
		.hidden-position{
			background-color: #ffd3d3 !important;
		}
	</style>
</head>
<body style=" ">
	<div class="text-position container">
	<div class="row ">
  <div class="col-xl-12">
    <div class="card">
    <div  class="card-body">


<h4  
                class=" header-style page-title"> <i style=" color: #232F43;font-size: 27px; margin-inline-end:16px;" class="dripicons-view-apps"></i>
                <?php echo get_phrase('Settings'); ?> 
                 <i class="fa-solid fa-angle-right"></i>
                    <?php echo get_phrase('certificate_settings'); ?>  <i class="fa-solid fa-angle-right"></i>   <span> <?php echo get_phrase('certificates_text_position'); ?></span>
               
                </h4>

</div> <!-- end card body-->
    </div> <!-- end card -->
  </div><!-- end col-->
</div>
<div class="settings">
<div class="card ">
  <div class="col-xl-12">
    <div class=" col-xl-12">
      <div class="card-body">
        <div class="col-lg-12">
		<div class= "note">
		<h3 ><i class="fa-solid fa-circle-exclamation "></i> <?php echo get_phrase('attention'); ?> !</h3>
		<ul>
			<li><?php echo get_phrase('you_can_change_the_text_positions_by_drag_and_drop'); ?></li>
			<li><?php echo get_phrase('drag_out_of the_certificate_layout_to_keep_an_object_hidden'); ?></li>
			<li><?php echo get_phrase('after_changing_your_text_positions,_click_the_save_button_to_save_the_parts'); ?></li>
		</ul>
	</div>
<div >
		<div class="certificate-text-position col-xl-5">
			<?php echo remove_js(htmlspecialchars_decode(get_settings('certificate-text-positons'))); ?>
		</div>
		<div class="action-btn d-flex justify-content-end">
		<button class="submit-btn" onclick="save_position();"><?php echo get_phrase('update'); ?></button>
		</div>
		
	</div>

        </div>
      </div>
    </div>
  </div>
  <hr>

</div>

</div>


	</div>

	<script>
	    $(document).ready(function() {
	    	$('.certificate_text').html("<?php echo get_settings('certificate_template'); ?>");
	    	$('.hidden-position').show();
	        $(".draggable").draggableTouch();
	        //$(".draggable").draggableTouch("disable");

	        $(".draggable").on("dragstart", function(e, pos) {
	            //console.log(pos.left + "," + pos.top);
	        }).on("dragend", function(e, pos) {
	            console.log("dragend:", this, pos.left + "," + pos.top);
	            if(pos.left <= 720 && pos.top <= 520){
	            	if($(this).hasClass('hidden-position')){
	            		$(this).removeClass('hidden-position');
	            	}
	            }else{
	            	if(!$(this).hasClass('hidden-position')){
	            		$(this).addClass('hidden-position');
	            	}
	            }
	        });
	    });

	    function save_position(){
	    	$('.hidden-position').hide();
	    	var btnText = $('.submit-button').html();
	    	$('.submit-button').html('<?php echo get_phrase('please_wait'); ?>...');
	    	var positionHtml = $('.certificate-text-position').html();
	    	$.ajax({
	    	 	type: 'post',
	    	 	url: "<?php echo site_url('addons/certificate/position/save'); ?>",
	    	 	data: {'text_positions' : positionHtml},
	    	 	success: function(result){
			    	$('.submit-button').html(btnText);
			    	$('.hidden-position').show();
			    	window.location.replace('<?php echo site_url('addons/certificate/settings'); ?>');
			  	}
			});
	    }
	</script>

	    <!-- bootstrap link  -->
		<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
</body>
</html>







