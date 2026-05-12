<!DOCTYPE html>
<html lang="en">
<head>
<?php $this->load->view('frontend/head.php'); ?>
</head>
<div>
    <!-- Topbar Start -->
    <div class="container-fluid bg-primary ps-5 pe-0 d-none d-lg-block text-white">
        <div class="row gx-0">
            <div class="col-md-6 text-center text-lg-start mb-2 mb-lg-0">
                <div class="py-2 pe-3 border-end d-flex align-items-center">
    <i class="fa fa-map-marker-alt me-2"></i>
    <small>102 N Mill St., Jackson, MS 39201</small>
</div>
            </div>
            <div class="col-md-6 text-center text-lg-end">
                <div class="position-relative d-inline-flex align-items-center bg-primary text-white top-shape px-5">
                   <div class="me-3 pe-3 border-end py-2">
    <p class="m-0">
    <i class="fa fa-envelope-open me-2"></i>
    <?= isset($settings[0]['email']) ? $settings[0]['email'] : ''; ?>
</p>
</div>

<div class="py-2">
  <p class="m-0">
    <i class="fa fa-phone-alt me-2"></i>
    <?= isset($settings[0]['phone']) ? $settings[0]['phone'] : ''; ?>
</p>
</div>

                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
    <a href="<?= base_url(); ?>" class="navbar-brand p-0 d-flex align-items-center">
    <?php if (!empty($settings[0]['logo'])): ?>
        <img src="<?= $settings[0]['logo']; ?>" alt="<?= $settings[0]['company_name']; ?>" style="height:60px;" class="me-2">
    <?php endif; ?>

   <span class="text-uppercase d-none d-lg-inline" style="font-weight: 700;">
    <?= $settings[0]['company_name']; ?>
</span>

</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
           <?php $this->load->view('frontend/navbar'); ?>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Carousel Start -->
   <div class="container-fluid p-0">
    <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <div class="carousel-inner">
            <?php if (!empty($banners)): ?>
                <?php $i = 0; ?>
                <?php foreach ($banners as $banner): ?>
                    <div class="carousel-item <?= $i === 0 ? 'active' : ''; ?>">
                        <img class="w-100 carousel-img" src="<?= base_url($banner['image_url']); ?>" alt="<?= $banner['title']; ?>">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3 text-center" style="max-width: 900px;">
                                <h5 class="text-white text-uppercase"><?= $banner['title']; ?></h5>
                                <h1 class="display-1 text-white mb-md-4"><?= $banner['subtitle']; ?></h1>
                                <a href="<?= base_url('contact'); ?>" class="btn bg-primary py-md-3 px-md-5 me-3 rounded-pill text-white">Contact Us</a>
                            </div>
                        </div>
                    </div>
                    <?php $i++; ?>
                <?php endforeach; ?>
            <?php else: ?>
                <!-- Shimmer Loading Banner -->
                <div class="carousel-item active">
                    <div class="w-100 carousel-img" style="background: #e0e0e0; position: relative; overflow: hidden;">
                        <div class="shimmer" style="
                            width: 50%;
                            height: 100%;
                            background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,0.4) 50%, rgba(255,255,255,0) 100%);
                            position: absolute;
                            top: 0;
                            left: -50%;
                            animation: shimmer 1.5s infinite;
                        "></div>
                    </div>
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3 text-center" style="max-width: 900px;">
                            <div class="bg-secondary text-transparent rounded mb-2" style="height: 30px; width: 200px;">Loading title</div>
                            <div class="bg-secondary text-transparent rounded mb-3" style="height: 60px; width: 400px;">Loading subtitle</div>
                            <div class="d-flex gap-3 justify-content-center">
                                <div class="bg-secondary rounded-pill" style="height: 40px; width: 120px;"></div>
                                <div class="bg-secondary rounded-pill" style="height: 40px; width: 120px;"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <style>
                    @keyframes shimmer {
                        0% { left: -50%; }
                        100% { left: 100%; }
                    }
                </style>
            <?php endif; ?>
        </div>

        <!-- Carousel Controls -->
        <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>

    </div>
</div>

<style>
/* Maintain desktop height */
.carousel-img {
    height: 500px;
    object-fit: cover;
}

/* Mobile adjustments */
@media(max-width: 767px) {
    .carousel-img {
        height: 350px; /* increase if needed for mobile */
    }
    .carousel-caption h1 {
        font-size: 2rem; /* smaller on mobile */
    }
    .carousel-caption h5 {
        font-size: 1rem;
    }
    .carousel-caption .btn {
        padding: 0.5rem 1rem;
        font-size: 0.9rem;
    }
}
</style>


   

    <?php $this->load->view('frontend/about.php'); ?>
    
    <!-- About End -->
    
    <?php $this->load->view('frontend/service.php'); ?>
<!-- Our Clients Section -->
<?php $this->load->view('frontend/client.php'); ?>
   
<?php $this->load->view('frontend/team.php'); ?>

<?php $this->load->view('frontend/research.php'); ?>
    
 <?php $this->load->view('frontend/top_footer.php'); ?>

  

<?php $this->load->view('frontend/footer'); ?>
<?php $this->load->view('frontend/js'); ?>

</body>

</html>