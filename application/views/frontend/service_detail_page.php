<div class="container-fluid pt-6 px-3 px-md-5">
    <div class="row g-4 g-lg-5">
        <!-- Main Service Content -->
        <div class="col-lg-9">
            <div class="service-card bg-secondary text-center px-3 px-md-5 py-4 py-md-5 shadow-sm rounded-4">
                <!-- Icon -->
                <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3 mb-md-4 shadow" style="width: 100px; height: 100px; font-size: 2rem;">
                    <?php if (!empty($service['icon_image']) && file_exists(FCPATH . $service['icon_image'])): ?>
                        <img src="<?= base_url($service['icon_image']); ?>" alt="<?= $service['title']; ?>" style="width:60px; height:60px;">
                    <?php else: ?>
                        <i class="fa fa-cogs"></i>
                    <?php endif; ?>
                </div>

                <!-- Title -->
                <h2 class="mb-3 fw-bold text-dark"><?= $service['title']; ?></h2>

                <!-- Full Description -->
                <div class="mb-4 text-muted fs-5">
                    <?= nl2br(strip_tags($service['description'])); ?>
                </div>

                <!-- Service Image (optional) -->
                <?php if (!empty($service['image']) && file_exists(FCPATH . $service['image'])): ?>
                    <div class="mb-4">
                        <img src="<?= base_url($service['image']); ?>" alt="<?= $service['title']; ?>" class="img-fluid rounded">
                    </div>
                <?php endif; ?>

                <!-- CTA Button -->
                <a href="#" class="btn bg-primary text-white rounded-pill mt-3 mt-md-4 px-4 px-md-5 py-2 py-md-3 fw-bold shadow-sm" style="transition: all 0.3s;">Request This Service</a>
            </div>
        </div>

        <!-- Sidebar Right -->
        <div class="col-lg-3">
            <div class="sidebar bg-light p-3 p-md-4 rounded-4 shadow-sm position-sticky" style="top: 20px;">
                <!-- Search -->
                <div class="mb-4">
                    <h5 class="fw-semibold">Search Services</h5>
                    <input type="text" id="search-services" class="form-control" placeholder="Type to search..." />
                    <ul id="search-results" class="list-group mt-2"></ul>
                </div>

                <!-- Other Services -->
                <div>
                    <h5 class="fw-semibold mb-3">Other Services</h5>
                    <ul class="list-group list-group-flush">
                        <?php if (!empty($other_services)): ?>
                            <?php foreach ($other_services as $s): ?>
                                <li class="list-group-item">
                                    <i class="fa fa-angle-right text-primary me-2"></i>
                                    <a href="<?= base_url('service/details/' . $s['id']); ?>" class="text-decoration-none text-dark"><?= $s['title']; ?></a>
                                </li>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <li class="list-group-item text-muted">No other services available</li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
/* Hover effect for CTA button */
.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 12px rgba(0,0,0,0.15);
}

/* Optional: Reduce sidebar padding on small screens */
@media (max-width: 767px) {
    .sidebar {
        padding: 1rem !important;
    }
}
</style>
