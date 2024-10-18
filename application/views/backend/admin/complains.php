<div class="row">
  <div class="col-lg-12">
      <div class="card">
        <div class="card-body" data-collapsed="0">
          <h4 class="mb-3 header-title"><?php echo get_phrase('complaints'); ?></h4>
          <table class="table table-striped table-centered w-100" id="server_side_complaints_data">
            <thead>
              <tr>
                <th>#</th> <!--to show the table -->
                <th><?php echo get_phrase('complaint_type'); ?></th>
                <th><?php echo get_phrase('user_name'); ?></th>
                <th><?php echo get_phrase('email'); ?></th>
                <th><?php echo get_phrase('phone'); ?></th>
                <th><?php echo get_phrase('course'); ?></th>
                <th><?php echo get_phrase('problem type'); ?></th>
                <th><?php echo get_phrase('message'); ?></th>
                <th><?php echo get_phrase('status'); ?></th>
                <th><?php echo get_phrase('actions'); ?></th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
      </div>
    </div>
  </div><!-- end col-->
</div>

<script>
  $(document).ready(function () {
     var table = $('#server_side_complaints_data').DataTable({
      responsive: true,
      "processing": true,
      "serverSide": true,
      "order": [[0, 'DESC']],  // This line ensures the first column is ordered by default in descending order
      "ajax":{
        "url": "<?php echo base_url('admin/server_side_complaints_data') ?>",
        "dataType": "json",
        "type": "POST",
        "data":{  '<?php echo $this->security->get_csrf_token_name(); ?>' : '<?php echo $this->security->get_csrf_hash(); ?>' }
      },
      "columns": [
        { "data": "key" },
        { "data": "complaint_type" },
        { "data": "user_name" },
        { "data": "email" },
        { "data": "phone" },
        { "data": "course" },
        { "data": "problem_type" },
        { "data": "message" },
        { "data": "status" },
        { "data": "action" }
      ]   
    });
   });

  function refreshServersideTable(tableId){
    $('#'+tableId).DataTable().ajax.reload();
  }
</script>
