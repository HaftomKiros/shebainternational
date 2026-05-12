<!-- Add New Feature Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-star"></i>
        </div>
        <div class="header-title">
            <h1>Why Choose Us</h1>
            <small>Add Feature</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Why Choose Us</a></li>
                <li class="active">Add Feature</li>
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
                    <a href="<?= base_url('CWhyChooseUs/manage_features')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> Manage Features
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Add Feature</h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('CWhyChooseUs/insert_feature', ['class' => 'form-vertical', 'id' => 'insert_feature']) ?>
                    <div class="panel-body">

                        <!-- Feature Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Title <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="title" type="text" required>
                            </div>
                        </div>

                        <!-- Feature Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5" required></textarea>
                            </div>
                        </div>

                        <!-- Feature Icon Upload -->
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
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Feature</button>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Add New Feature End -->

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
