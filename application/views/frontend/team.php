<!-- Team Start -->
<div class="container-fluid py-6 px-lg-5 px-3">
    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Personnel</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>

    <?php if (!empty($team_members)): ?>
        <!-- Mobile: scrollable row -->
        <div class="d-block d-md-none overflow-auto">
            <div class="d-flex gap-3 pb-2">
                <?php foreach ($team_members as $member): ?>
                    <div class="team-item flex-shrink-0 text-center" style="width: 250px; height: 400px; background:#f8f9fa; position: relative;">
                        <?php $has_photo = !empty($member['photo']) && file_exists(FCPATH . $member['photo']); ?>
                        <?php if ($has_photo): ?>
                            <img class="team-img" src="<?= base_url($member['photo']); ?>" alt="<?= $member['name']; ?>">
                        <?php else: ?>
                            <div class="fallback-icon">
                                <i class="fa fa-user"></i>
                            </div>
                        <?php endif; ?>

                        <div class="team-text position-absolute text-center">
                            <h3 class="text-white"><?= $member['name']; ?></h3>
                            <p class="text-white text-uppercase mb-0"><?= $member['position']; ?></p>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- Desktop & Tablet: original carousel -->
        <div id="teamCarousel" class="carousel slide d-none d-md-block" data-bs-ride="carousel">
            <div class="carousel-inner">
                <?php 
                $chunks = array_chunk($team_members, 3); // 3 per slide
                foreach ($chunks as $index => $chunk): ?>
                    <div class="carousel-item <?= $index === 0 ? 'active' : ''; ?>">
                        <div class="row justify-content-center">
                            <?php foreach ($chunk as $member): ?>
                                <div class="col-lg-4 col-md-6 col-12 mb-4">
                                    <a href="#" class="team-link text-decoration-none">
                                        <div class="team-item d-flex align-items-center justify-content-center position-relative">
                                            <?php $has_photo = !empty($member['photo']) && file_exists(FCPATH . $member['photo']); ?>
                                            <?php if ($has_photo): ?>
                                                <img class="team-img" src="<?= base_url($member['photo']); ?>" alt="<?= $member['name']; ?>">
                                            <?php else: ?>
                                                <div class="fallback-icon">
                                                    <i class="fa fa-user"></i>
                                                </div>
                                            <?php endif; ?>

                                            <div class="team-text position-absolute text-center">
                                                <h3 class="text-white"><?= $member['name']; ?></h3>
                                                <p class="text-white text-uppercase mb-0"><?= $member['position']; ?></p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <!-- Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#teamCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#teamCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    <?php else: ?>
        <p class="text-center">No team members to show.</p>
    <?php endif; ?>
</div>

<style>
.team-item {
    height: 400px; /* Fixed height for both desktop & mobile */
    overflow: hidden;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: transform 0.3s ease;
    background: #f8f9fa;
}
.team-img { 
    max-width: 100%; 
    max-height: 100%; 
    object-fit: contain; 
}
.fallback-icon i { font-size: 5rem; color: #6c757d; }
.team-text {
    bottom: 0;
    left: 0;
    width: 100%;
    background: rgba(13, 110, 253, 0.9);
    padding: 1rem;
    position: absolute;
}
.team-link:hover .team-text { background: rgba(13,110,253,1); }
.team-item:hover .team-img,
.team-item:hover .fallback-icon i { transform: scale(1.05); }
</style>

<script>
var teamCarousel = document.querySelector('#teamCarousel');
new bootstrap.Carousel(teamCarousel, {
    interval: 4000,
    ride: 'carousel'
});
</script>
