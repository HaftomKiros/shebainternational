<!-- Add New Experience Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-briefcase"></i>
        </div>
        <div class="header-title">
            <h1>Experience</h1>
            <small>Add Experience</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Experience</a></li>
                <li class="active">Add Experience</li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alert Message -->
        <?php
            if ($message = $this->session->userdata('message')) {
        ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?= $message ?>
        </div>
        <?php $this->session->unset_userdata('message'); } ?>

        <?php
            if ($error_message = $this->session->userdata('error_message')) {
        ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?= $error_message ?>
        </div>
        <?php $this->session->unset_userdata('error_message'); } ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <a href="<?= base_url('CExperience/manage_experience')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> Manage Experience
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Add Experience</h4>
                        </div>
                    </div>

                    <?php echo form_open('CExperience/insert_experience', ['class' => 'form-vertical', 'id' => 'insert_experience']) ?>
                    <div class="panel-body">

                        <!-- Experience Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5" required></textarea>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Experience</button>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Add New Experience End -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- CKEditor for Description -->
<script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
<script>
    // Replace textarea with CKEditor
    CKEDITOR.replace('description');

    // Optional: hide CKEditor warnings
    CKEDITOR.on('instanceReady', function(ev) {
        ev.editor.on('notificationShow', function(evt) {
            evt.data.cancel();
        });
    });
</script>
