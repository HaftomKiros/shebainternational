<!-- Experience Start -->
<div class="container-fluid pt-6 px-5 px-sm-3 px-xs-2">
    <div class="text-center mx-auto mb-5" style="max-width: 600px;">
        <h1 class="display-5 mb-0">Our Experience</h1>
        <hr class="w-25 mx-auto bg-primary">
    </div>

    <?php if (!empty($experiences)): ?>

        <?php if (count($experiences) == 1): ?>
            <!-- ONE Experience → Full -->
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="bg-secondary p-5 p-md-4 p-sm-3 rounded fs-4 lh-lg text-justify experience-text">
                        <?= $experiences[0]['description']; ?>
                    </div>
                </div>
            </div>

        <?php else: ?>
            <!-- MULTIPLE Experiences -->
            <div class="row g-5">
                <?php foreach ($experiences as $exp): ?>
                    <div class="col-lg-4 col-md-6">
                        <div class="bg-secondary p-4 p-md-3 p-sm-2 rounded h-100 text-justify experience-text">
                            <?= $exp['description']; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>

    <?php else: ?>
        <div class="text-center">
            <p>No experience data available.</p>
        </div>
    <?php endif; ?>
</div>
<!-- Experience End -->

<style>
/* Optional: fine-tune padding on extra small devices */
@media (max-width: 575px) {
    .container-fluid {
        padding-left: 10px !important;
        padding-right: 10px !important;
    }
}

/* Justify text inside experience cards */
.experience-text {
    text-align: justify;
    text-justify: inter-word; /* Makes last line spacing look better */
}
</style>
