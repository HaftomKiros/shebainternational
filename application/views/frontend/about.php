<!-- About Start -->
<div class="container-fluid bg-secondary p-0">
   
    <div class="row g-0">
        <!-- Left Column -->
        <div class="col-lg-6 py-6 px-lg-5 px-md-4 px-3">
              <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">About Us</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>
            <?php if (!empty($about)): ?>
                <?php $a = $about[0]; ?>
                
                <h5 class="mb-4" style="font-size: 1rem; font-weight: 400; line-height: 1.5; text-align: justify;">
                    <?= $a['description']; ?>
                </h5>
                <h5 class="mb-4" style="color: #000; font-size: 0.95rem;"><?= $a['mission']; ?></h5>
            <?php else: ?>
                <!-- Shimmer Placeholder -->
                <h1 class="display-5 mb-4 bg-secondary text-transparent rounded" style="width: 300px; height: 40px;">Loading</h1>
                <h4 class="mb-4 bg-secondary text-transparent rounded" style="width: 500px; height: 30px;">Loading</h4>
                <h4 class="mb-4 bg-secondary text-transparent rounded" style="width: 100%; height: 100px;">Loading</h4>
            <?php endif; ?>

            <!-- Button -->
            <a href="<?= base_url('about'); ?>" class="btn bg-primary text-white py-2 px-4 rounded-pill w-100 w-md-auto">View Detail</a>
        </div>

        <!-- Right Column -->
        <div class="col-lg-6">
            <div class="h-100 d-flex flex-column justify-content-center bg-primary p-lg-5 p-md-4 p-3">
                <?php if (!empty($features)): ?>
                    <?php foreach ($features as $feature): ?>
                        <div class="d-flex flex-column flex-md-row text-white mb-4 mb-md-5 align-items-center align-items-md-start">
                            <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white text-primary rounded-circle mb-3 mb-md-0" style="width: 50px; height: 50px;">
                                <img src="<?= base_url($feature['icon_image']); ?>" alt="<?= $feature['title']; ?>" style="width: 25px; height: 25px;">
                            </div>
                            <div class="ps-md-3 text-center text-md-start">
                                <h3 class="text-white mb-1" style="font-size: 1.1rem;"><?= $feature['title']; ?></h3>
                                <h5 class="mb-0" style="color: #d7dccdff; font-size: 0.9rem;"><?= strip_tags($feature['description']); ?></h5>
                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <!-- Shimmer Placeholder -->
                    <?php for($i=0; $i<3; $i++): ?>
                        <div class="d-flex flex-column flex-md-row text-white mb-4 align-items-center align-items-md-start">
                            <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-secondary rounded-circle mb-3 mb-md-0" style="width: 50px; height: 50px;">
                                <span class="text-transparent">icon</span>
                            </div>
                            <div class="ps-md-3 w-100 text-center text-md-start">
                                <h3 class="bg-secondary text-transparent rounded" style="width: 150px; height: 25px;"></h3>
                                <p class="bg-secondary text-transparent rounded" style="width: 100%; height: 50px; margin-top: 5px;"></p>
                            </div>
                        </div>
                    <?php endfor; ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
