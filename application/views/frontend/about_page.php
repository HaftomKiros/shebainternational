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
   <!-- Hero / About Section -->
<div class="container-fluid p-0 position-relative" style="background: url('<?= base_url('assets/frontend/img/sticky_bg.jpeg'); ?>') center/cover no-repeat; height: 300px;">
    <!-- Overlay -->
    <div class="position-absolute w-100 h-100" style="background-color: rgba(0,0,0,0.6); top:0; left:0;"></div>

    <div class="container h-100 d-flex flex-column justify-content-center align-items-center text-center position-relative text-white">
        <h1 class="display-4 fw-bold mb-3 text-white">About Us</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb justify-content-center mb-0" style="background: transparent;">
                <li class="breadcrumb-item"><a href="<?= base_url(); ?>" class="text-white text-decoration-none">Home</a></li>
                <li class="breadcrumb-item active text-primary" aria-current="page">About</li>
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

    <?php $this->load->view('frontend/about.php'); ?>
   
<?php $this->load->view('frontend/team.php'); ?>

    <!-- here-->
   <!-- Footer / Contact Section Start -->


<?php $this->load->view('frontend/footer'); ?>
<?php $this->load->view('frontend/js'); ?>

</body>

</html>