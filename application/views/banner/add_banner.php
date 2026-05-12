<!-- Add new candidate start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="fa fa-image"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('banners') ?></h1>
            <small><?php echo display('add_banner') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('banners') ?></a></li>
                <li class="active"><?php echo display('add_banner') ?></li>
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

        <?php if($this->permission1->method('add_banner','create')->access()) { ?>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_banner') ?></h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('Cbanners/insert_banner', ['class' => 'form-vertical', 'id' => 'insert_banner']) ?>
<div class="panel-body">



<!-- Banner Title -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label"><?php echo display('banner_title') ?> <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input class="form-control" name="banner_title" type="text" required>
    </div>
</div>
<!-- Banner Subtitle -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label"><?php echo display('banner_subtitle') ?> <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input class="form-control" name="banner_subtitle" type="text" required>
    </div>
</div>
<!-- Banner Cover Image -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label"><?php echo display('banner_image') ?> <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input type="file" class="form-control" name="banner_image" accept="image/*" required>
        <small class="text-muted">
            Upload a high-quality image for the banner. <br>
            Recommended: 1920 × 1080 px, aspect ratio 16:9, JPG or WebP format, max 300 KB.
        </small>
    </div>
</div>


<!-- Submit Button -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label"></label>
    <div class="col-sm-6">
        <button type="submit" class="btn btn-primary">Save</button>
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
<!-- Add new candidate end -->
