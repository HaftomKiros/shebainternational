<div class="container-fluid pt-6 px-lg-5 px-3">

    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Our Clients</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>

    <?php if (!empty($clients)): ?>
        <div class="d-block d-md-none overflow-auto">
            <!-- Mobile: scrollable row -->
            <div class="d-flex gap-3 pb-2">
                <?php foreach ($clients as $client): ?>
                    <div class="client-item p-3 border border-3 rounded bg-white text-center flex-shrink-0" style="width: 200px;">
                        <?php if (!empty($client['logo']) && file_exists(FCPATH . $client['logo'])): ?>
                            <img src="<?= base_url($client['logo']); ?>" alt="<?= $client['client_name']; ?>" class="img-fluid mb-2" style="max-height: 120px; width:auto;">
                        <?php else: ?>
                            <div class="bg-secondary rounded-circle mb-2" style="width: 120px; height: 120px;"></div>
                        <?php endif; ?>

                        <?php if (!empty($client['website'])): ?>
                            <a href="<?= $client['website']; ?>" target="_blank" class="text-decoration-none fw-bold"><?= $client['client_name']; ?></a>
                        <?php else: ?>
                            <p class="fw-bold"><?= $client['client_name']; ?></p>
                        <?php endif; ?>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- Desktop: carousel with 4 per slide -->
        <div id="clientsCarousel" class="carousel slide d-none d-md-block" data-bs-ride="carousel">
            <div class="carousel-inner">
                <?php 
                $chunks = array_chunk($clients, 4); // 4 clients per slide
                foreach ($chunks as $index => $chunk): ?>
                    <div class="carousel-item <?= $index === 0 ? 'active' : ''; ?>">
                        <div class="row justify-content-center">
                            <?php foreach ($chunk as $client): ?>
                                <div class="col-lg-3 col-md-4 text-center">
                                    <div class="client-item p-3 border border-3 rounded bg-white h-100 d-flex flex-column align-items-center justify-content-center">
                                        <?php if (!empty($client['logo']) && file_exists(FCPATH . $client['logo'])): ?>
                                            <img src="<?= base_url($client['logo']); ?>" alt="<?= $client['client_name']; ?>" class="img-fluid mb-2" style="max-height: 120px; width:auto;">
                                        <?php else: ?>
                                            <div class="bg-secondary rounded-circle mb-2" style="width: 120px; height: 120px;"></div>
                                        <?php endif; ?>

                                        <?php if (!empty($client['website'])): ?>
                                            <a href="<?= $client['website']; ?>" target="_blank" class="text-decoration-none fw-bold"><?= $client['client_name']; ?></a>
                                        <?php else: ?>
                                            <p class="fw-bold"><?= $client['client_name']; ?></p>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <!-- Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#clientsCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#clientsCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    <?php else: ?>
        <p class="text-center">No clients to show.</p>
    <?php endif; ?>
</div>

<style>
.client-item {
    transition: transform 0.3s ease;
    text-align: center;
    border-color: #23548f !important; /* Bootstrap primary color */
}
.client-item:hover {
    transform: scale(1.05);
}
.client-item a {
    color: #000;
}
.client-item a:hover {
    color: #23548f; /* Bootstrap primary */
}
</style>
