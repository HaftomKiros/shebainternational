<!-- Add New Research & Evaluation Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-flask"></i>
        </div>
        <div class="header-title">
            <h1>Research & Evaluation</h1>
            <small>Add Research</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Research & Evaluation</a></li>
                <li class="active">Add Research</li>
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
            <?php echo $message ?>
        </div>
        <?php 
            $this->session->unset_userdata('message');
            }
            if ($error_message = $this->session->userdata('error_message')) {
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
                    <a href="<?= base_url('CResearch/manage_research')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> Manage Research
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Add Research & Evaluation</h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('CResearch/insert_research', ['class' => 'form-vertical', 'id' => 'insert_research']) ?>
                    <div class="panel-body">

                        <!-- Research Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Title <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="title" type="text" required>
                            </div>
                        </div>

                        <!-- Research Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description</label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5"></textarea>
                            </div>
                        </div>

                        <!-- Research Photo Upload -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Photo</label>
                            <div class="col-sm-6">
                                <input type="file" class="form-control" name="photo" accept="image/*">
                                <small class="text-muted">
                                    Upload an image related to the research. Recommended size: 800×600 px, JPG or PNG format, max 500 KB.
                                </small>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Research</button>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Add New Research & Evaluation End -->

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
