<!-- Edit About Us Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-info-circle"></i>
        </div>
        <div class="header-title">
            <h1>About Us</h1>
            <small>Edit About Us</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">About Us</a></li>
                <li class="active">Edit About Us</li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alert Message -->
        <?php
        $message = $this->session->userdata('message');
        if ($message) {
            echo '<div class="alert alert-info alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert">×</button>'
                    .$message.
                 '</div>';
            $this->session->unset_userdata('message');
        }

        $error_message = $this->session->userdata('error_message');
        if ($error_message) {
            echo '<div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert">×</button>'
                    .$error_message.
                 '</div>';
            $this->session->unset_userdata('error_message');
        }
        ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <a href="<?= base_url('Cabout/manage_about_us') ?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> Manage About Us
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Edit About Us</h4>
                        </div>
                    </div>

                    <?php echo form_open('Cabout_us/edit/'.$about['id'], ['class' => 'form-vertical', 'id' => 'edit_about']) ?>
                    <input type="hidden" name="id" value="<?= $about['id']; ?>">
                    <div class="panel-body">

                        <!-- Description -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="description" id="description" class="form-control" rows="10" required><?= set_value('description', $about['description']); ?></textarea>
                            </div>
                        </div>

                        <!-- Mission -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Mission <span style="color:red">*</span></label>
                            <div class="col-sm-9">
                                <textarea name="mission" id="mission" class="form-control" rows="10" required><?= set_value('mission', $about['mission']); ?></textarea>
                            </div>
                        </div>

                        <!-- Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-9">
                                <select name="status" class="form-control">
                                    <option value="1" <?= $about['status'] == 1 ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= $about['status'] == 0 ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Buttons -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-9">
                                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Update About Us</button>
                                <a href="<?= base_url('Cabout_us/manage_about_us'); ?>" class="btn btn-danger">Cancel</a>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close(); ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Edit About Us End -->

<!-- CKEditor 4.21.0 -->
<script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
<script>
    // Replace textarea with CKEditor
    CKEDITOR.replace('description');
    CKEDITOR.replace('mission');

    // Optional: hide CKEditor warnings
    CKEDITOR.on('instanceReady', function(ev) {
        ev.editor.on('notificationShow', function(evt) {
            evt.data.cancel();
        });
    });
</script>
