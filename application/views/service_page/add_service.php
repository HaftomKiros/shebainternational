<!-- Add New Service Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-cogs"></i>
        </div>
        <div class="header-title">
            <h1>Services</h1>
            <small>Add Service</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Services</a></li>
                <li class="active">Add Service</li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alert Message -->
        <?php
            $message = $this->session->userdata('message');
            if (isset($message)) {
        ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $message ?>
        </div>
        <?php 
            $this->session->unset_userdata('message');
            }
            $error_message = $this->session->userdata('error_message');
            if (isset($error_message)) {
        ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $error_message ?>
        </div>
        <?php 
            $this->session->unset_userdata('error_message');
            }
        ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <a href="<?= base_url('Cservices/manage_services')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> Manage Services
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Add Service</h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('Cservices/insert_service', ['class' => 'form-vertical', 'id' => 'insert_service']) ?>
                    <div class="panel-body">

                        <!-- Service Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Title <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="title" type="text" required>
                            </div>
                        </div>

                        <!-- Service Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5" required></textarea>
                            </div>
                        </div>

                        <!-- Service Icon Upload -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Icon <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input type="file" class="form-control" name="icon_image" accept="image/*" required>
                                <small class="text-muted">
                                    Upload an icon image. Recommended size: 100×100 px, JPG or PNG format, max 200 KB.
                                </small>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Service</button>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Add New Service End -->

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
