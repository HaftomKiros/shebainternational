<?php $settings = isset($settings) ? $settings : []; ?>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<?php if(!empty($settings) && isset($settings[0]['captcha']) && $settings[0]['captcha'] == 0 && !empty($settings[0]['site_key'])): ?>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<?php endif; ?>

<div class="container-fluid bg-secondary px-lg-5 px-md-4 px-3">
    <div class="row g-0">

        <!-- Contact Form -->
        <div class="col-lg-6 py-6 d-flex flex-column">
            <h1 class="display-5 mb-4">You can connect with us when need help!</h1>
            <h4 class="lh-base mb-4">
                Please send any specific information about your request so we can direct it to the appropriate people:
            </h4>

            <form id="contact-form">
                <!-- Feedback message -->
                <div id="contact-feedback" class="mt-3"></div>

                <div class="row g-3">
                    <div class="col-12 col-md-6">
                        <div class="form-floating">
                            <input type="text" name="name" class="form-control" id="form-floating-1" placeholder="John Doe" required>
                            <label for="form-floating-1">Full Name</label>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="form-floating">
                            <input type="email" name="email" class="form-control" id="form-floating-2" placeholder="name@example.com" required>
                            <label for="form-floating-2">Email address</label>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="form-floating">
                            <input type="tel" name="phone" class="form-control" id="form-floating-5" placeholder="+251 900 000 000">
                            <label for="form-floating-5">Phone Number</label>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="form-floating">
                            <input type="text" name="subject" class="form-control" id="form-floating-3" placeholder="Subject" required>
                            <label for="form-floating-3">Subject</label>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="form-floating">
                            <textarea class="form-control" name="message" placeholder="Message" id="form-floating-4" style="height: 150px" required></textarea>
                            <label for="form-floating-4">Message</label>
                        </div>
                    </div>

                    <!-- Conditional Google reCAPTCHA -->
                    <?php if(!empty($settings) && isset($settings[0]['captcha']) && $settings[0]['captcha'] == 0 && !empty($settings[0]['site_key']) && !empty($settings[0]['secret_key'])): ?>
                    <div class="col-12 mb-3">
                        <div class="g-recaptcha" data-sitekey="<?= $settings[0]['site_key'] ?>"></div>
                    </div>
                    <?php endif; ?>

                    <div class="col-12">
                        <button class="btn bg-primary text-white w-100 py-3" type="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- Google Map -->
        <div class="col-lg-6 d-flex align-items-stretch mt-4 mt-lg-0">
            <iframe class="w-100 h-100"
                src="<?= isset($settings[0]['address']) ? $settings[0]['address'] : ''; ?>"
                frameborder="0" style="border:0; min-height: 100%;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
    </div>
</div>

<style>
/* Map responsive height */
.col-lg-6 iframe {
    width: 100%;
    height: 100%;
    min-height: 500px;
    border: 0;
}
@media (max-width: 992px) {
    .col-lg-6 iframe { height: 400px; }
}
</style>

<script>
$(document).ready(function() {
    $('#contact-form').on('submit', function(e) {
        e.preventDefault();

        $.ajax({
            url: '<?= base_url("contact/send"); ?>',
            type: 'POST',
            data: $(this).serialize(),
            dataType: 'json',
            beforeSend: function() {
                $('#contact-feedback').html('<div class="alert alert-info">Sending...</div>');
                $('#contact-form button[type="submit"]').prop('disabled', true);
            },
            success: function(response) {
                if(response.status === 'success') {
                    $('#contact-feedback').html('<div class="alert alert-success">' + response.message + '</div>');
                    $('#contact-form')[0].reset();
                    if(typeof grecaptcha !== 'undefined') grecaptcha.reset();
                } else {
                    $('#contact-feedback').html('<div class="alert alert-danger">' + response.message + '</div>');
                }
            },
            error: function() {
                $('#contact-feedback').html('<div class="alert alert-danger">An unexpected error occurred.</div>');
            },
            complete: function() {
                $('#contact-form button[type="submit"]').prop('disabled', false);
            }
        });
    });
});
</script>
