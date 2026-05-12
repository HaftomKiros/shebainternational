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


    

<!-- Hero / About Section -->
<div class="container-fluid p-0 position-relative" style="background: url('<?= base_url('assets/frontend/img/sticky_bg.jpeg'); ?>') center/cover no-repeat; height: 300px;">
    <!-- Overlay -->
    <div class="position-absolute w-100 h-100" style="background-color: rgba(0,0,0,0.6); top:0; left:0;"></div>

    <div class="container h-100 d-flex flex-column justify-content-center align-items-center text-center position-relative text-white">
        <h1 class="display-4 fw-bold mb-3 text-white">Contact Us</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb justify-content-center mb-0" style="background: transparent;">
                <li class="breadcrumb-item"><a href="<?= base_url(); ?>" class="text-white text-decoration-none">Home</a></li>
                <li class="breadcrumb-item active text-primary" aria-current="page">Contact Us</li>
            </ol>
        </nav>
    </div>
</div>

<style>
/* Breadcrumb hover effect */
.breadcrumb a:hover {
    color: #ffc107 !important; /* Bootstrap warning color */
    text-decoration: underline;
}
</style>
<!-- Get In Touch Start -->
<div class="container-fluid pt-6 px-lg-5 px-md-4 px-3">
    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Get In Touch</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>

    <div class="row g-4 g-md-5">

        <!-- Location -->
        <div class="col-lg-4 col-md-6">
            <div class="service-item bg-secondary text-center px-4 py-4">
                <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3"
                     style="width:80px; height:80px;">
                    <i class="fa fa-map-marker-alt fa-2x"></i>
                </div>
                <h3 class="mb-2">Our Location</h3>
                <p class="mb-0 two-line">
                    102 N Mill St., Jackson, MS 39201
                </p>
            </div>
        </div>

        <!-- Email -->
        <div class="col-lg-4 col-md-6">
            <div class="service-item bg-secondary text-center px-4 py-4">
                <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3"
                     style="width:80px; height:80px;">
                    <i class="fa fa-envelope fa-2x"></i>
                </div>
                <h3 class="mb-2">Email Us</h3>
                <p class="mb-0 two-line">
                    <?php if(!empty($settings[0]['email'])): ?>
                        <a href="mailto:<?= $settings[0]['email']; ?>" class="text-dark text-decoration-none">
                            <?= $settings[0]['email']; ?>
                        </a>
                    <?php else: ?>
                        Not Set
                    <?php endif; ?>
                </p>
            </div>
        </div>

        <!-- Phone -->
        <div class="col-lg-4 col-md-6">
            <div class="service-item bg-secondary text-center px-4 py-4">
                <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3"
                     style="width:80px; height:80px;">
                    <i class="fa fa-phone-alt fa-2x"></i>
                </div>
                <h3 class="mb-2">Call Us</h3>
                <p class="mb-0 two-line">
                    <?php if(!empty($settings[0]['phone'])): ?>
                        <a href="tel:<?= $settings[0]['phone']; ?>" class="text-dark text-decoration-none">
                            <?= $settings[0]['phone']; ?>
                        </a>
                    <?php else: ?>
                        Not Set
                    <?php endif; ?>
                </p>
            </div>
        </div>

    </div>
</div>

<!-- Inner CSS -->
<style>
.service-item {
    min-height: 320px;                /* card height */
    padding: 40px 20px 30px 20px;     /* top | sides | bottom */
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;      /* align content to top */
    transition: all 0.3s ease;
}

.service-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 30px rgba(0,0,0,0.08);
}

.service-item h3 {
    margin-bottom: 15px;
}

/* Responsive adjustments */
@media(max-width: 992px) {
    .service-item {
        min-height: auto;
        padding: 30px 15px 25px 15px; /* reduce padding on tablet */
    }
    .service-item h3 {
        font-size: 1.3rem;
    }
    .service-item .rounded-circle {
        width: 70px;
        height: 70px;
        margin-bottom: 15px;
    }
}

@media(max-width: 576px) {
    .service-item {
        padding: 25px 10px 20px 10px; /* reduce padding on mobile */
    }
    .service-item h3 {
        font-size: 1.1rem;
    }
    .service-item .rounded-circle {
        width: 60px;
        height: 60px;
        margin-bottom: 10px;
    }
}
</style>
<!-- Get In Touch End -->

    <br> <?php $this->load->view('frontend/top_footer.php'); ?>

<?php $this->load->view('frontend/footer'); ?>
<?php $this->load->view('frontend/js'); ?>

</body>

</html>