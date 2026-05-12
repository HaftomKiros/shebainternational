<div class="container-fluid bg-dark text-secondary p-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
    <h3 class="text-white mb-4 text-center">Quick Links</h3>
    <div class="row">
        <div class="col-6 d-flex flex-column">
    <a class="text-secondary mb-2" href="<?= base_url('about'); ?>">
        <i class="bi bi-arrow-right text-primary me-2"></i>About Us
    </a>
    <a class="text-secondary mb-2" href="<?= base_url('services'); ?>">
        <i class="bi bi-arrow-right text-primary me-2"></i>Our Services
    </a>
</div>

<div class="col-6 d-flex flex-column">
    <a class="text-secondary mb-2" href="<?= base_url('research'); ?>">
        <i class="bi bi-arrow-right text-primary me-2"></i>Research
    </a>
    <a class="text-secondary mb-2" href="<?= base_url('contact'); ?>">
        <i class="bi bi-arrow-right text-primary me-2"></i>Contact Us
    </a>
</div>

    </div>
</div>

           
            <div class="col-lg-3 col-md-6">
    <h3 class="text-white mb-4">Get In Touch</h3>
    
    <!-- Address -->
    <p class="mb-2">
        <i class="bi bi-geo-alt text-primary me-2"></i>
       102 N Mill St., Jackson, MS 39201
    </p>
    
    <!-- Email -->
    <p class="mb-2">
        <i class="bi bi-envelope-open text-primary me-2"></i>
        <?= isset($settings[0]['email']) ? $settings[0]['email'] : 'info@shebaintl.com'; ?>
    </p>
    
    <!-- Phone -->
    <p class="mb-0">
        <i class="bi bi-telephone text-primary me-2"></i>
        <?= isset($settings[0]['phone']) ? $settings[0]['phone'] : '+1 601 555 1234'; ?>
    </p>
</div>
        </div>
    </div>
    <div class="container-fluid bg-dark text-secondary text-center border-top py-4 px-5" style="border-color: rgba(256, 256, 256, .1) !important;">
    <?= isset($settings[0]['footer_text']) ? $settings[0]['footer_text'] : '
        
    '; ?>
</div>

    <!-- Footer End -->