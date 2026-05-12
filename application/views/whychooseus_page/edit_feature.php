<!-- Edit Feature Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-star"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('why_choose_us'); ?></h1>
            <small><?php echo display('edit_feature'); ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home'); ?></a></li>
                <li><a href="#"><?php echo display('why_choose_us'); ?></a></li>
                <li class="active"><?php echo display('edit_feature'); ?></li>
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
                    <a href="<?= base_url('CWhyChooseUs/manage_features')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> <?php echo display('manage_features'); ?>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('edit_feature'); ?></h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('CWhyChooseUs/update_feature', ['class' => 'form-vertical', 'id' => 'edit_feature']) ?>
                    <input type="hidden" name="id" value="<?= $feature['id']; ?>">
                    <div class="panel-body">

                        <!-- Feature Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('title'); ?> <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="title" type="text" value="<?= set_value('title', $feature['title']); ?>" required>
                            </div>
                        </div>

                        <!-- Feature Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('description'); ?> <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5" required><?= set_value('description', $feature['description']); ?></textarea>
                            </div>
                        </div>

                        <!-- Feature Icon Upload -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('icon'); ?></label>
                            <div class="col-sm-6">
                                <input type="file" class="form-control" name="icon_image" accept="image/*">
                                <?php if(!empty($feature['icon_image'])): ?>
                                    <img src="<?= base_url($feature['icon_image']); ?>" width="100" class="mt-2">
                                <?php endif; ?>
                                <small class="text-muted">
                                    Upload a new icon to replace the current one. Recommended size: 100×100 px, JPG or PNG format, max 200 KB.
                                </small>
                            </div>
                        </div>

                        <!-- Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('status'); ?></label>
                            <div class="col-sm-6">
                                <select name="status" class="form-control">
                                    <option value="1" <?= $feature['status'] == 1 ? 'selected' : '' ?>><?php echo display('active'); ?></option>
                                    <option value="0" <?= $feature['status'] == 0 ? 'selected' : '' ?>><?php echo display('inactive'); ?></option>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Update Feature</button>
                                <a href="<?= base_url('CWhyChooseUs/manage_features'); ?>" class="btn btn-danger"><?php echo display('cancel'); ?></a>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Edit Feature End -->

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
