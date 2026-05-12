<!-- Why Choose Us Start -->
<div class="container-fluid pt-6 px-3 px-sm-4 px-md-5">
    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Why Choose Us</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>

    <div class="row g-4 g-md-5">
        <?php if (!empty($features)): ?>
            <?php foreach ($features as $f): ?>
                <div class="col-lg-4 col-md-6">
                    <div class="why-card bg-secondary text-center px-3 px-md-4 py-4 py-md-5 rounded-4 shadow-sm">
                        <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3 mb-md-4" style="width: 90px; height: 90px;">
                            <?php if (!empty($f['icon_image']) && file_exists(FCPATH . $f['icon_image'])): ?>
                                <img src="<?= base_url($f['icon_image']); ?>" alt="<?= $f['title']; ?>" style="width: 40px; height: 40px;">
                            <?php else: ?>
                                <i class="fa fa-cogs fa-2x"></i>
                            <?php endif; ?>
                        </div>
                        <h4 class="mb-2 mb-md-3"><?= $f['title']; ?></h4>
                        <p class="mb-0 two-line"><?= nl2br(strip_tags($f['description'])); ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p class="text-muted">No features available at the moment.</p>
        <?php endif; ?>
    </div>
</div>

<style>
/* Two-line description */
.two-line {
    font-size: 1rem;
    line-height: 1.5em;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
}

/* Card hover effect */
.why-card {
    transition: all 0.3s;
}
.why-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
}

/* Responsive adjustments for mobile */
@media (max-width: 767px) {
    .why-card {
        padding-left: 15px !important;
        padding-right: 15px !important;
        padding-top: 25px;
        padding-bottom: 25px;
    }

    .two-line {
        font-size: 0.95rem;
        line-height: 1.4em;
    }

    .why-card h4 {
        font-size: 1.1rem; /* slightly smaller on mobile */
    }
}
</style>
<!-- Why Choose Us End -->
