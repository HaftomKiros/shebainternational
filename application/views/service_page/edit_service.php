<!-- Edit Service Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-cogs"></i>
        </div>
        <div class="header-title">
            <h1>Services</h1>
            <small>Edit Service</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Services</a></li>
                <li class="active">Edit Service</li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alert Message -->
        <?php
            if ($message = $this->session->userdata('message')) {
                echo '<div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert">×</button>'.$message.'</div>';
                $this->session->unset_userdata('message');
            }
            if ($error_message = $this->session->userdata('error_message')) {
                echo '<div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert">×</button>'.$error_message.'</div>';
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
                            <h4>Edit Service</h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('Cservices/update_service', ['class' => 'form-vertical', 'id' => 'edit_service']) ?>
                    <input type="hidden" name="id" value="<?= $service['id']; ?>">
                    <div class="panel-body">

                        <!-- Service Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Title <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="title" type="text" value="<?= set_value('title', $service['title']); ?>" required>
                            </div>
                        </div>

                        <!-- Service Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5" required><?= set_value('description', $service['description']); ?></textarea>
                            </div>
                        </div>

                        <!-- Service Icon Upload -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Icon</label>
                            <div class="col-sm-6">
                                <input type="file" class="form-control" name="icon_image" accept="image/*">
                                <?php if(!empty($service['icon_image'])): ?>
                                    <img src="<?= base_url($service['icon_image']); ?>" width="100" class="mt-2">
                                <?php endif; ?>
                                <small class="text-muted">
                                    Upload a new icon to replace the current one. Recommended size: 100×100 px, JPG or PNG format, max 200 KB.
                                </small>
                            </div>
                        </div>

                        <!-- Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-6">
                                <select name="status" class="form-control">
                                    <option value="1" <?= $service['status'] == 1 ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= $service['status'] == 0 ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Update Service</button>
                                <a href="<?= base_url('Cservices/manage_services'); ?>" class="btn btn-danger">Cancel</a>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Edit Service End -->

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
