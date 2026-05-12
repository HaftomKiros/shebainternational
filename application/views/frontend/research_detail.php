<!-- Research Detail Start -->
<div class="container-fluid pt-6 px-3 px-sm-4 px-md-5">
    <div class="row g-4 g-lg-5">

        <!-- Main Research Content -->
        <div class="col-lg-9">
            <div class="research-card bg-secondary text-center px-3 px-md-5 py-4 py-md-5 shadow-sm rounded-4">

                <!-- Research Image -->
                <?php if (!empty($research['photo']) && file_exists(FCPATH . $research['photo'])): ?>
                    <div class="mb-4">
                        <img src="<?= base_url($research['photo']); ?>" alt="<?= $research['title']; ?>" class="img-fluid rounded shadow">
                    </div>
                <?php endif; ?>

                <!-- Title -->
                <h2 class="mb-3 fw-bold text-dark"><?= $research['title']; ?></h2>

                <!-- Full Description -->
                <div class="mb-4 text-muted fs-5">
                    <?= nl2br(strip_tags($research['description'])); ?>
                </div>

                <!-- Why Choose Us Features -->
                <?php if (!empty($features)): ?>
                    <div class="mt-5">
                        <div class="text-center mx-auto mb-5" style="max-width: 600px;">
                            <h1 class="display-5 mb-0">Why Choose Us</h1>
                            <hr class="w-25 mx-auto bg-primary">
                        </div>

                        <div class="row g-4 g-md-5">
                            <?php foreach ($features as $f): ?>
                                <div class="col-lg-4 col-md-6">
                                    <div class="why-card bg-secondary text-center px-3 px-md-4 py-4 py-md-5 rounded-4 shadow-sm">
                                        <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-3 mb-md-4" style="width: 90px; height: 90px;">
                                            <?php if (!empty($f['icon']) && file_exists(FCPATH . $f['icon'])): ?>
                                                <img src="<?= base_url($f['icon']); ?>" alt="<?= $f['title']; ?>" style="width: 40px; height: 40px;">
                                            <?php else: ?>
                                                <i class="fa fa-cogs fa-2x"></i>
                                            <?php endif; ?>
                                        </div>
                                        <h4 class="mb-2 mb-md-3"><?= $f['title']; ?></h4>
                                        <p class="mb-0 two-line"><?= nl2br(strip_tags($f['description'])); ?></p>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endif; ?>

            </div>
        </div>

        <!-- Sidebar Right -->
        <div class="col-lg-3">
            <div class="sidebar bg-light p-3 p-md-4 rounded-4 shadow-sm position-sticky" style="top: 20px;">

                <!-- Search Research -->
                <div class="mb-4">
                    <h5 class="fw-semibold">Search Research</h5>
                    <input type="text" id="search-research" class="form-control" placeholder="Type to search..." />
                    <ul id="search-results-research" class="list-group mt-2"></ul>
                </div>

                <!-- Other Research -->
                <div>
                    <h5 class="fw-semibold mb-3">Other Research</h5>
                    <ul class="list-group list-group-flush">
                        <?php if (!empty($other_research)): ?>
                            <?php foreach ($other_research as $r): ?>
                                <li class="list-group-item d-flex align-items-center">
                                    <?php if(!empty($r['photo']) && file_exists(FCPATH . $r['photo'])): ?>
                                        <img src="<?= base_url($r['photo']); ?>" alt="<?= $r['title']; ?>" class="me-2 rounded" style="width:40px;height:40px;object-fit:cover;">
                                    <?php endif; ?>
                                    <a href="<?= base_url('research/details/' . $r['id']); ?>" class="text-decoration-none text-dark"><?= $r['title']; ?></a>
                                </li>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <li class="list-group-item text-muted">No other research available</li>
                        <?php endif; ?>
                    </ul>
                </div>

            </div>
        </div>

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
.why-card:hover, .research-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    transition: all 0.3s;
}

/* Responsive adjustments for mobile */
@media (max-width: 767px) {
    .research-card, .why-card {
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
        font-size: 1.1rem;
    }

    .sidebar {
        padding: 1rem !important;
        margin-top: 30px;
    }
}
</style>

<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script>
$(document).ready(function() {
    $('#search-research').on('keyup', function() {
        var query = $(this).val();
        if (query.length > 1) {
            $.ajax({
                url: '<?= base_url("research/ajax_search"); ?>',
                method: 'GET',
                data: { q: query },
                dataType: 'json',
                success: function(data) {
                    var html = '';
                    if (data.length > 0) {
                        $.each(data, function(i, research) {
                            html += '<li class="list-group-item d-flex align-items-center">';
                            if(research.photo) {
                                html += '<img src="<?= base_url(""); ?>'+ research.photo +'" class="me-2 rounded" style="width:40px;height:40px;object-fit:cover;">';
                            }
                            html += '<a href="<?= base_url("research/details/"); ?>' + research.id + '" class="text-decoration-none text-dark">' + research.title + '</a>';
                            html += '</li>';
                        });
                    } else {
                        html = '<li class="list-group-item text-muted">No research found</li>';
                    }
                    $('#search-results-research').html(html);
                },
                error: function(err) {
                    console.error(err);
                }
            });
        } else {
            $('#search-results-research').html('');
        }
    });
});
</script>
<!-- Research Detail End -->
