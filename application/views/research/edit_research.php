<!-- Edit Research & Evaluation Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-flask"></i>
        </div>
        <div class="header-title">
            <h1>Research & Evaluation</h1>
            <small>Edit Research</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Research & Evaluation</a></li>
                <li class="active">Edit Research</li>
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
                            <h4>Edit Research & Evaluation</h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('CResearch/update_research', ['class' => 'form-vertical', 'id' => 'edit_research']) ?>
                    <input type="hidden" name="id" value="<?= $research['id']; ?>">
                    <div class="panel-body">

                        <!-- Research Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Title <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="title" type="text" 
                                       value="<?= set_value('title', $research['title']); ?>" required>
                            </div>
                        </div>

                        <!-- Research Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description</label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="5"><?= set_value('description', $research['description']); ?></textarea>
                            </div>
                        </div>

                        <!-- Research Photo Upload -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Photo</label>
                            <div class="col-sm-6">
                                <input type="file" class="form-control" name="photo" accept="image/*">
                                <?php if(!empty($research['photo'])): ?>
                                    <img src="<?= base_url($research['photo']); ?>" width="150" class="mt-2">
                                <?php endif; ?>
                                <small class="text-muted">
                                    Upload a new image to replace the current one. Recommended size: 800×600 px, JPG or PNG, max 500 KB.
                                </small>
                            </div>
                        </div>

                        <!-- Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-6">
                                <select name="status" class="form-control">
                                    <option value="1" <?= $research['status'] == 1 ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= $research['status'] == 0 ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Update Research</button>
                                <a href="<?= base_url('CResearch/manage_research'); ?>" class="btn btn-danger">Cancel</a>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Edit Research & Evaluation End -->

<!-- CKEditor for Description -->
<script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('description');
    CKEDITOR.on('instanceReady', function(ev) {
        ev.editor.on('notificationShow', function(evt) {
            evt.data.cancel();
        });
    });
</script>
