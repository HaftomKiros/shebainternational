<!-- Edit Banner Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-image"></i>
        </div>

        <div class="header-title">
            <h1><?php echo display('banners') ?></h1>
            <small><?php echo display('edit_banner') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('banners') ?></a></li>
                <li class="active"><?php echo display('edit_banner') ?></li>
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
                    <?php if($this->permission1->method('manage_banners','read')->access()) { ?>
                        <a href="<?php echo base_url('Cbanners/manage_banners')?>" class="btn btn-info m-b-5 m-r-2">
                            <i class="ti-align-justify"></i> <?php echo display('manage_banners') ?>
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>

        <?php if($this->permission1->method('edit_banner','update')->access()) { ?>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('edit_banner') ?></h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('Cbanners/update_banner', ['class' => 'form-vertical', 'id' => 'edit_banner']) ?>
                    <input type="hidden" name="id" value="<?= $banner['id']; ?>">
                    <div class="panel-body">

                        <!-- Banner Title -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('banner_title') ?> <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="banner_title" type="text" value="<?= $banner['title']; ?>" required>
                            </div>
                        </div>

                        <!-- Banner Subtitle -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('banner_subtitle') ?> <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="banner_subtitle" type="text" value="<?= $banner['subtitle']; ?>" required>
                            </div>
                        </div>

                        <!-- Banner Cover Image -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('banner_image') ?></label>
                            <div class="col-sm-6">
                                <input type="file" class="form-control" name="banner_image" accept="image/*">
                                <?php if(!empty($banner['image_url'])): ?>
                                    <img src="<?= base_url($banner['image_url']); ?>" width="200" class="mt-2">
                                <?php endif; ?>
                                <small class="text-muted">
                                    Upload a high-quality image for the banner. <br>
                                    Recommended: 1920 × 1080 px, aspect ratio 16:9, JPG or WebP format, max 600 KB.
                                </small>
                            </div>
                        </div>

                        <!-- Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"><?php echo display('status') ?></label>
                            <div class="col-sm-6">
                                <select name="status" class="form-control">
                                    <option value="1" <?= $banner['status'] == 1 ? 'selected' : '' ?>>Active</option>
                                    <option value="0" <?= $banner['status'] == 0 ? 'selected' : '' ?>>Inactive</option>
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-success">Update Banner</button>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close() ?>

                </div>
            </div>
        </div>

        <?php } else { ?>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4><?php echo display('You do not have permission to access. Please contact administrator.');?></h4>
                    </div>
                </div>
            </div>
        </div>

        <?php } ?>
    </section>
</div>
<!-- Edit Banner End -->
