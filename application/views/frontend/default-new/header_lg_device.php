<nav class="navbar navbar-expand-lg ">
  <div class="container">
    <a class="navbar-brand" href="<?php echo site_url(); ?>">
      <img src="<?php echo site_url('uploads/system/' . get_frontend_settings('dark_logo')) ?>" alt="Logo">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 link-list">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?php echo site_url(); ?>">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo site_url('home/courses'); ?>"> <?php echo get_phrase('About us'); ?> </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo site_url('home/courses'); ?>"> <?php echo get_phrase('Courses'); ?> </a>
        </li>
        <li class="nav-item">
          <a class="nav-link"
            href="<?php echo site_url('course_bundles'); ?>"><?php echo get_phrase('Course Bundle'); ?></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<?php echo site_url('home/courses'); ?>"> <?php echo get_phrase("FAQ's"); ?> </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
            aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>

      </ul>

      <ul class="navbar-nav mb-2 mb-lg-0 align-items-center icon-list">
        <li class="nav-item">
          <a href="<?php echo site_url('home/courses'); ?>"> <i
              class="fa-solid fa-magnifying-glass search icon "></i></a>
        </li>
        <li class="nav-item">
          <a href="<?php echo site_url('home/courses'); ?>"> <i class="fa-solid fa-cart-shopping cart icon "></i></a>
        </li>
      </ul>

      <ul class="navbar-nav mb-2 mb-lg-0 align-items-center btn-list">
        <li class="nav-item">
          <a href="<?php echo site_url('home/courses'); ?>" class="btn btn-primary">
            join now
          </a>
        </li>
        <li class="nav-item">
          <a href="<?php echo site_url('home/courses'); ?>" class="btn btn-primary-outline">
            log in
          </a>
        </li>
      </ul>

      <!-- <ul>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
            aria-expanded="false">
            Dropdown
          </a>


          <form action="#" method="POST" class="language-control select-box dropdown-menu" 
            aria-labelledby="navbarDropdown">
            <select onchange="actionTo(`<?php echo site_url('home/switch_language/') ?>${$(this).val()}`)"
              class="select-control form-select nice-select">
              <?php
              $languages = $this->crud_model->get_all_languages();
              $selected_language = $this->session->userdata('language');
              foreach ($languages as $language): ?>
                <?php if (trim($language) != ""): ?>
                  <option class="dropdown-item" value="<?php echo strtolower($language); ?>" <?php if ($selected_language == $language): ?>selected<?php endif; ?>><?php echo ucwords($language); ?></option>
                <?php endif; ?>
              <?php endforeach; ?>
            </select>
          </form>
        </li>
      </ul> -->



    </div>
  </div>
</nav>



<header class="wrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="wrapper_left">
          <?php
          $banner_title = site_phrase(get_frontend_settings('banner_title'));
          $banner_title_arr = explode(' ', $banner_title);
          ?>
          <h1>
            <?php
            foreach ($banner_title_arr as $key => $value) {
              if ($key == count($banner_title_arr) - 1) {
                echo '<span class="d-inline-block">' . $value . '</span>';
              } else {
                echo $value . ' ';
              }
            }
            ?>
          </h1>
          <p>
            <?php echo site_phrase(get_frontend_settings('banner_sub_title')); ?>
          </p>

          <form action="<?php echo site_url('home/search'); ?>" method="get">
            <input class="form-control" type="text" placeholder="<?php echo get_phrase('What do you want to learn'); ?>"
              name="query">
            <button type="submit">
              Search
            </button>
            <i class="fa-solid fa-magnifying-glass"></i>
          </form>


        </div>
      </div>
    </div>
  </div>

</header>


















