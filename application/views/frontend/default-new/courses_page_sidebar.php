<aside class="course-sidebar">
    <form action="<?php echo site_url('home/courses'); ?>" method="get" id="course_filter_form">

        <?php if (isset($_GET['query']) && !empty($_GET['query'])): ?>
            <input type="hidden" name="query" value="<?php echo $_GET['query']; ?>">
        <?php endif; ?>

        <ul class="course-sidebar-list">
            <!-- categories -->
            <li>
                <h3 class="course-sidebar__heading"><?php echo get_phrase('Categories'); ?></h3>

                <ul class="parent">
                    <li>
                        <div class="d-flex gap-2">
                            <input class="course-sidebar__check" type="radio" value="all" name="category"
                                id="category_all" onchange="filterCourse()" <?php if ($selected_category == 'all')
                                    echo 'checked'; ?>>
                            <span class="text-13px"><?php echo get_phrase('All category') ?></span>
                            <span>(<?php echo $this->crud_model->get_active_course()->num_rows(); ?>)</span>

                        </div>
                    </li>

                    <?php $categories = $this->crud_model->get_categories()->result_array(); ?>
                    <?php foreach ($categories as $category): ?>
                        <?php $course_number = $this->crud_model->get_active_course_by_category_id($category['id'], 'category_id')->num_rows(); ?>
                        <li>
                            <div class="d-flex gap-2">
                                <input class="course-sidebar__check" type="radio" value="<?php echo $category['slug'] ?>"
                                    name="category" id="category-<?php echo $category['id']; ?>" onchange="filterCourse()"
                                    <?php if ($selected_category == $category['slug'])
                                        echo 'checked'; ?>>
                                         
                                <span> <?php echo $category['name']; ?></span>
                                <span>(<?php echo $course_number; ?>)</span>

                          
           
           
                            </div>
                            <ul class="child">
                                <?php foreach ($this->crud_model->get_sub_categories($category['id']) as $sub_category): ?>
                                    <?php $course_number = $this->crud_model->get_active_course_by_category_id($sub_category['id'], 'sub_category_id')->num_rows(); ?>
                                    <li>
                                        <div class="d-flex gap-2">
                                            <input class="course-sidebar__check" type="radio"
                                                value="<?php echo $sub_category['slug'] ?>" name="category"
                                                id="sub_category-<?php echo $sub_category['id']; ?>" onchange="filterCourse()"
                                                <?php if ($selected_category == $sub_category['slug'])
                                                    echo 'checked'; ?>>

                                            <span><?php echo $sub_category['name']; ?></span>
                                            <span>(<?php echo $course_number; ?>)</span>
                                        </div>
                                    </li>
                                <?php endforeach; ?>
                            </ul>

                        </li>

                    <?php endforeach; ?>

                </ul>
            </li>


            <!-- price -->


            <li>

                <h3 class="course-sidebar__heading"><?php echo get_phrase('Price'); ?></h3>

                <ul class="parent">
                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" name="price" value="all" id="price_all"
                            onchange="filterCourse()" <?php if ($selected_price == 'all')
                                echo 'checked'; ?>>
                        <span><?php echo get_phrase('All'); ?></span>
                    </li>

                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" name="price" value="free" id="price_free"
                            onchange="filterCourse()" <?php if ($selected_price == 'free')
                                echo 'checked'; ?>>
                        <span><?php echo get_phrase('Free'); ?></span>
                    </li>
                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" name="price" value="paid" id="price_paid"
                            onchange="filterCourse()" <?php if ($selected_price == 'paid')
                                echo 'checked'; ?>>
                        <span><?php echo get_phrase('Paid'); ?></span>
                    </li>
                </ul>
            </li>

            <!-- level -->



            <li>

                <h3 class="course-sidebar__heading"><?php echo get_phrase('Level'); ?></h3>

                <ul class="parent">
                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" name="level" value="all" id="level_all"
                            onchange="filterCourse()" <?php if ($selected_level == 'all')
                                echo 'checked'; ?>>
                        <span class="text-13px"><?php echo get_phrase('All'); ?></span>

                    </li>

                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" value="beginner" name="level" id="level_beginner"
                            onchange="filterCourse()" <?php if ($selected_level == 'beginner')
                                echo 'checked'; ?>>
                        <span class="text-13px"><?php echo get_phrase('Beginner'); ?></span>
                    </li>

                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" value="intermediate" name="level"
                            id="level_intermediate" onchange="filterCourse()" <?php if ($selected_level == 'intermediate')
                                echo 'checked'; ?>>
                        <span class="text-13px"><?php echo get_phrase('Intermediate'); ?></span>
                    </li>

                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" value="advanced" name="level" id="level_advanced"
                            onchange="filterCourse()" <?php if ($selected_level == 'advanced')
                                echo 'checked'; ?>>
                        <span class="text-13px"><?php echo get_phrase('Advanced'); ?></span>
                    </li>



                </ul>



            </li>


            <!-- language -->

            <li>

                <h3 class="course-sidebar__heading"><?php echo get_phrase('Language'); ?></h3>

                <ul class="parent">
                    <li class="d-flex gap-2">
                        <input class="course-sidebar__check" type="radio" value="all" name="language" id="language_all"
                            onchange="filterCourse()" <?php if ($selected_language == 'all')
                                echo 'checked'; ?>>
                        <span class="text-13px"><?php echo get_phrase('All'); ?></span>
                    </li>
                    <?php
                    $languages = $this->crud_model->get_all_languages();
                    foreach ($languages as $language): ?>
                        <li class="d-flex gap-2">
                            <input class="course-sidebar__check" type="radio" value="<?php echo strtolower($language); ?>"
                                name="language" id="language_<?php echo $language; ?>" onchange="filterCourse()" <?php if ($selected_language == strtolower($language))
                                       echo 'checked'; ?>>

                            <span class="text-13px"><?php echo ucfirst($language); ?></span>

                        </li>
                    <?php endforeach; ?>


                </ul>
            </li>

            <!-- rating -->

            <li>
               <h3 class="course-sidebar__heading"><?php echo get_phrase('Rating'); ?></h3> 

               <ul class="parent">
                <li>

                <input class="course-sidebar__check" type="radio" name="rating" value="all" id="rating_all"
                    onchange="filterCourse()" <?php if ($selected_rating == 'all')
                        echo 'checked'; ?>>
                        <span><?php echo get_phrase('All'); ?></span>
                </li>
                <?php for ($i = 1; $i <= 5; $i++): ?>
                  <li class="d-flex gap-2 align-items-center">
                  <input class="course-sidebar__check" type="radio" value="<?php echo $i; ?>" id="rating_<?php echo $i; ?>"
                            onchange="filterCourse()" name="rating" <?php if ($selected_rating == $i)
                                echo 'checked'; ?>>
                                 <div class="course-sidebar__rating">
                                 <span>(<?php echo $i; ?>)</span>
                                 <i class="fa-solid fa-star"></i>
                                 </div>
                 </li>
              <?php endfor; ?>
               </ul>
            </li>

        </ul>
  

       
      
                <input id="sorting_hidden_input" type="hidden" name="sort_by" value="<?php echo $selected_sorting; ?>">

</form>
</aside>










