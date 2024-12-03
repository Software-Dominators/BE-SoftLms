
<div class="row align-items-center sorting justify-content-end">
       
       <div class="col-lg-8  d-flex justify-content-between ">
       <select id="sorting_select_input" class="select-control form-select nice-select sorting-select" aria-label="Default select example" onchange="filterCourse()">
                <option value="newest" <?php if($selected_sorting == 'newest') echo 'checked'; ?>><?php echo get_phrase('Newly published'); ?></option>
                <option value="highest-rating" <?php if($selected_sorting == 'highest-rating') echo 'checked'; ?>><?php echo get_phrase('highest_rating'); ?></option>
                <option value="lowest-price" <?php if($selected_sorting == 'lowest-price') echo 'checked'; ?>><?php echo get_phrase('lowest_price'); ?></option>
                <option value="highest-price" <?php if($selected_sorting == 'highest-price') echo 'checked'; ?>><?php echo get_phrase('highest_price'); ?></option>
                <option value="discounted" <?php if($selected_sorting == 'discounted') echo 'checked'; ?>><?php echo get_phrase('Discounted'); ?></option>
            </select>
            <p class="text-14px"><?php echo site_phrase('showing').' '.count($courses).' '.site_phrase('of').' '.$total_result.' '.site_phrase('results'); ?></p>
       
            <button class=" <?php if($layout == 'list') echo 'active'; ?>" title="<?php echo get_phrase('List view') ?>" data-bs-toggle="tooltip" onclick="actionTo('<?php echo site_url('home/set_layout_to_session?layout=list'); ?>', 'post')"><i class="fa-solid fa-bars "></i></button>
        <button class=" <?php if($layout == 'grid') echo 'active'; ?>" title="<?php echo get_phrase('Grid view') ?>" data-bs-toggle="tooltip" onclick="actionTo('<?php echo site_url('home/set_layout_to_session?layout=grid'); ?>', 'post')"><i class="fa-solid fa-th"></i></button>
        <a href="<?php echo site_url('home/courses'); ?>" class="" title="<?php echo get_phrase('Reset') ?>" data-bs-toggle="tooltip"><i class="fas fa-sync-alt"></i></a>
       
       </div>
        
    </div>



