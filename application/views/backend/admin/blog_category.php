<div class="row ">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body py-2">

                <h4   style ="color:#8B93A1"class="  page-title"> 
				
             	
			  <i style=" color: #232F43;font-size: 27px" class="dripicons-view-apps"></i>
			  <?php echo get_phrase('Blog'); ?>
			  <i class="fa-solid fa-angle-right icon-header"></i>
			  <span> 	<?php   echo get_phrase('   Blog_categories'); ?> </span>
			
				
				<a href="<?php echo site_url('admin/blog_settings'); ?>" > 
					<div  class=" alignToTitle settings-icon"> 	<img  src="../assets/backend/images/settings.svg"  
					alt="" >  </div>
			  </a>
				 <button onclick="showAjaxModal('<?php echo site_url('admin/add_blog_category'); ?>', '<?php echo get_phrase('add_a_new_category'); ?>');" class="add-btn  alignToTitle"><?php echo get_phrase('add_new_category '); ?></button>
					
                </h4>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
</div>




<div style="100vh">
<div class="card p-3" >
<div class="row cat-cards">
	<?php foreach($categories->result_array() as $category): ?>
	    <div class="col-md-4 mb-3  ">
			<ul class="blog-card">
				<li class=" d-flex justify-content-between align-items-start  ">
					<div class="ml-2 mr-auto">
						<div class="fw-bold header-blog" style="font-size: 20px; font-weight: 600;"><?php echo $category['title']; ?></div>
						<span class="mt-1 d-block "><?php echo $category['subtitle']; ?></span>
					</div>
					<div class="ml-auto text-center">
						

						<div class="btn-group d-block mt-2">
							<div class="dropright dropright">
							<button type="button" class="border-0 btn settings-icon" data-toggle="dropdown" aria-expanded="false">
								<i class="mdi mdi-dots-vertical"></i>
							</button>
	
							<div class="dropdown-menu dropdown-menu-right">
								<button class="dropdown-item" onclick="showAjaxModal('<?php echo site_url('admin/edit_blog_category/'.$category['blog_category_id']); ?>', '<?php echo get_phrase('edit_category'); ?>');" type="button"><i class="mdi mdi-pencil"></i> <?php echo get_phrase('edit'); ?></button>
								<button class="dropdown-item" onclick="confirm_modal('<?php echo site_url('admin/blog_category/delete/'.$category['blog_category_id']); ?>');" type="button"><i class="mdi mdi-trash-can-outline"></i> <?php echo get_phrase('delete'); ?></button>
							</div>
	</div>
						</div>

					</div>
				</li>
				<div class="d-flex justify-content-end w-100 py-2">
			<span class="badge badge-primary text-right"><?php echo $this->crud_model->get_blogs_by_category_id($category['blog_category_id'])->num_rows(); ?></span>
						
			</div>
			</ul>
		
		</div>
	<?php endforeach; ?>
</div>
</div>
</div>

