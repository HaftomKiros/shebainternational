<!-- Services Start -->
<div class="container-fluid pt-6 px-lg-5 px-md-4 px-3">
    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Our Services</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>
    <div class="row g-4 g-md-5">
        <?php if (!empty($services)): ?>
            <?php foreach ($services as $service): ?>
                <div class="col-lg-4 col-md-6">
                    <div class="service-item bg-secondary text-center px-4 px-sm-5 py-4">
                        <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3 mb-md-4" style="width: 80px; height: 80px;">
                            <?php if (!empty($service['icon_image']) && file_exists(FCPATH . $service['icon_image'])): ?>
                                <img src="<?= base_url($service['icon_image']); ?>" alt="<?= $service['title']; ?>" style="width: 40px; height: 40px;">
                            <?php else: ?>
                                <i class="fa fa-cogs fa-2x"></i>
                            <?php endif; ?>
                        </div>
                        <h3 class="mb-2">
                            <a href="<?= base_url('service/details/' . $service['id']); ?>" class="text-decoration-none text-dark">
                                <?= $service['title']; ?>
                            </a>
                        </h3>
                        <p class="mb-0 two-line"><?= strip_tags($service['description']); ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <!-- Shimmer / Loading Placeholder -->
            <?php for ($i = 0; $i < 6; $i++): ?>
                <div class="col-lg-4 col-md-6">
                    <div class="service-item bg-secondary text-center px-4 px-sm-5 py-4">
                        <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3 mb-md-4" style="width: 80px; height: 80px;">
                            <div class="bg-white rounded-circle" style="width: 40px; height: 40px;"></div>
                        </div>
                        <h3 class="mb-2 bg-secondary text-transparent rounded" style="width: 120px; height: 25px;">Loading</h3>
                        <p class="mb-0 bg-secondary text-transparent rounded" style="width: 100%; height: 50px;">Loading</p>
                    </div>
                </div>
            <?php endfor; ?>
        <?php endif; ?>
    </div>
</div>

<style>
/* Clamp description to 2 lines */
.two-line {
    font-size: 1rem;           
    line-height: 1.4em;        
    display: -webkit-box;       
    -webkit-line-clamp: 2;     
    -webkit-box-orient: vertical;
    overflow: hidden;           
    text-overflow: ellipsis;    
}

/* Responsive adjustments for mobile */
@media (max-width: 768px) {
    .service-item {
        px-3;
        padding-left: 1rem !important;
        padding-right: 1rem !important;
        padding-top: 1rem;
        padding-bottom: 1rem;
    }
    .service-item h3 {
        font-size: 1rem;
    }
    .service-item p {
        font-size: 0.875rem;
    }
    .service-item .rounded-circle {
        width: 60px !important;
        height: 60px !important;
    }
    .service-item .rounded-circle img {
        width: 30px !important;
        height: 30px !important;
    }
}
</style>
