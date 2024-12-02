<!-- <div class="div-header">
<img  src="<?= base_url('assets/frontend/design-one/assets/images/home/header-circle.svg') ?>" class="div-header__image">
       
</div> -->
<nav class="navbar navbar-expand-lg z-index-3">
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























