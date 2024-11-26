<div class="row ">
    <div class="col-xl-12">
        <div class="card">
        <div class="card-body">
            <h4  
            class=" header-style page-title"> <i 
                style=" color: #232F43;font-size: 27px ; margin-inline-end:16px" 
                class="dripicons-view-apps"></i>
                 <?php echo get_phrase(' Newsletter'); ?>  
                 <i class="fa-solid fa-angle-right"></i>
                 <span style ="color : #232F43">    <?php echo get_phrase('   Subscribed user'); ?>  </span>
               
                </h4>
</div>
        </div> <!-- end card -->
    </div><!-- end col-->
</div>

<div class="row">
  <div class="col-lg-12">
      <div class="card">
        <div class="card-body" data-collapsed="0">
      
        <table class="table table-striped table-centered w-100" id="server_side_users_data">
            <thead>
              <tr>
      
                <th>No</th>
                
                <th><?php echo get_phrase('photo'); ?></th>
                <th><?php echo get_phrase('user info'); ?></th>
                <th><?php echo get_phrase('State'); ?></th>
                <th><?php echo get_phrase('Phone number'); ?></th>
                <th><?php echo get_phrase('actions'); ?></th>
              </tr>
            </thead>
            <tbody></tbody>
</table>
      </div>
    </div>
  </div><!-- end col-->
</div>
<!-- the new script  -->
<script>
$(document).ready(function () {
    $('#server_side_users_data').DataTable({
        responsive: true,
        "processing": true,
        "serverSide": true,
        "ajax": {
            "url": "<?php echo base_url('admin/server_side_users_data') ?>",
            "type": "POST",
            "dataType": "json",
            "data": {
                '<?php echo $this->security->get_csrf_token_name(); ?>': '<?php echo $this->security->get_csrf_hash(); ?>'
            }
        },
        language: {
            paginate: {
                previous: "<i class='mdi mdi-chevron-left'>",
                next: "<i class='mdi mdi-chevron-right'>"
            }
        },
        "columns": [
            { "data": "key" },
            { "data": "photo" },
            { "data": "user_info" }, // Combined Name and Email Column
            { "data": "State" },
            { "data": "Phone number" },
            { "data": "action" }
        ]
    });
});
 </script>