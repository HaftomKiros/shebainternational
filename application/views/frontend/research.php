<!-- Blog Start -->
<div class="container-fluid pb-6 px-lg-5 px-md-4 px-3" id="research-section">

    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Research & Evaluations</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>

    <!-- Spinner loader while content loads -->
    <div id="research-loader" class="text-center py-5">
        <div class="spinner-border text-primary"></div>
    </div>

    <?php if (!empty($research)): ?>
        <div class="row g-4 g-lg-5" id="research-list" style="display:none;">
            <?php foreach ($research as $item):
                $date = strtotime($item['created_at']);
                $image = !empty($item['photo']) ? base_url($item['photo']) : '';
            ?>
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-item">

                        <?php if($image): ?>
                        <div class="position-relative overflow-hidden" style="height: 250px; width: 100%;">
                            <img class="img-fluid w-100 h-100" loading="lazy" src="<?= $image; ?>" alt="<?= html_escape($item['title']); ?>" style="object-fit: cover;">
                        </div>
                        <?php endif; ?>

                        <div class="bg-secondary d-flex flex-column flex-md-row">
                            <div class="flex-shrink-0 d-flex flex-column justify-content-center text-center bg-primary text-white px-3 px-md-4 py-2">
                                <span><?= date('d', $date); ?></span>
                                <h5 class="text-uppercase m-0"><?= date('M', $date); ?></h5>
                                <span><?= date('Y', $date); ?></span>
                            </div>

                            <div class="d-flex flex-column justify-content-center py-3 px-3 px-md-4">
                                <div class="d-flex mb-2">
                                    <small class="text-uppercase me-3">
                                        <i class="bi bi-bookmarks me-2"></i>Research & Evaluation
                                    </small>
                                </div>

                                <a class="h4" href="<?= base_url('research/details/'.$item['id']); ?>">
                                    <?= html_escape($item['title']); ?>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php else: ?>
        <!-- No data message -->
        <div class="row" id="research-no-data" style="display:none;">
            <div class="col-12 text-center py-5">
                <i class="bi bi-info-circle fs-1 text-muted mb-3"></i>
                <h4 class="text-muted">There is no data</h4>
                <p class="text-muted mb-0">Research & evaluations will appear here once available.</p>
            </div>
        </div>
    <?php endif; ?>
</div>

<!-- JS to hide spinner and show content -->
<script>
document.addEventListener('DOMContentLoaded', function() {
    var loader = document.getElementById('research-loader');
    var researchList = document.getElementById('research-list');
    var noData = document.getElementById('research-no-data');

    loader.style.display = 'none';

    <?php if (!empty($research)): ?>
        researchList.style.display = 'flex';
    <?php else: ?>
        noData.style.display = 'block';
    <?php endif; ?>
});
</script>

<style>
/* Optional: make research cards stack better on mobile */
@media(max-width: 767px) {
    #research-list .blog-item .d-flex {
        flex-direction: column !important;
    }
    #research-list .blog-item .bg-primary {
        width: 100%;
        margin-bottom: 10px;
    }
}
</style>
<!-- Blog End -->
