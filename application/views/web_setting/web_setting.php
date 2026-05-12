<!-- Add new customer start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('update_setting') ?></h1>
            <small><?php echo display('update_your_web_setting') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('web_settings') ?></a></li>
                <li class="active"><?php echo display('update_setting') ?></li>
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

        <?php
        if($this->permission1->method('soft_setting','read')->access() || $this->permission1->method('soft_setting','update')->access()){ ?>
            <!-- New customer -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('update_setting') ?> </h4>
                        </div>
                    </div>
                  <?php echo form_open_multipart('Cweb_setting/update_setting', array('class' => 'form-vertical','id' => 'insert_customer'))?>
<div class="panel-body">

    <!-- Logo -->
    <div class="form-group row">
        <label for="logo" class="col-sm-3 col-form-label"><?php echo display('logo') ?> <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="logo" id="logo" type="file" tabindex="1">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label"></label>
        <div class="col-sm-6">
            <img src="{logo}" class="img img-responsive" height="100" width="100">
            <input name="old_logo" type="hidden" value="{logo}">
        </div>
    </div>

    <!-- Favicon -->
    <div class="form-group row">
        <label for="favicon" class="col-sm-3 col-form-label"><?php echo display('favicon') ?> <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="favicon" id="favicon" type="file" tabindex="2">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label"></label>
        <div class="col-sm-6">
            <img src="{favicon}" class="img img-responsive" height="100" width="100">
            <input name="old_favicon" type="hidden" value="{favicon}" tabindex="3">
        </div>
    </div>

    <!-- Company Name -->
    <div class="form-group row">
        <label for="company_name" class="col-sm-3 col-form-label">Company Name <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="company_name" id="company_name" type="text" value="{company_name}" placeholder="Company Name" tabindex="4">
        </div>
    </div>
    <!-- Phone -->
    <div class="form-group row">
        <label for="phone" class="col-sm-3 col-form-label">Phone <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="phone" id="phone" type="text" value="{phone}" placeholder="Phone Number" tabindex="5">
        </div>
    </div>

    <!-- Email -->
    <div class="form-group row">
        <label for="email" class="col-sm-3 col-form-label">Email <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="email" id="email" type="email" value="{email}" placeholder="Email" tabindex="6">
        </div>
    </div>

    <!-- Address (for map) -->
    <div class="form-group row">
        <label for="address" class="col-sm-3 col-form-label">Address <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <textarea class="form-control" name="address" id="address" rows="3" placeholder="Address for map" tabindex="7">{address}</textarea>
        </div>
    </div>

    <!-- Footer Text -->
    <div class="form-group row">
        <label for="footer_text" class="col-sm-3 col-form-label"><?php echo display('footer_text') ?> <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="footer_text" id="footer_text" type="text" placeholder="Footer Text" value="{footer_text}" tabindex="8">
        </div>
    </div>

    <!-- Hidden fields -->
    <div style="display:none">
        <input type="hidden" name="invoice_logo" value="{invoice_logo}">
        <input type="hidden" name="timezone" value="<?= $timezone ?>">
        <input type="hidden" name="currency" value="<?= $currency ?>">
        <input type="hidden" name="currency_position" value="<?= $currency_position ?>">
        <input type="hidden" name="language" value="<?= $language ?>">
        <input type="hidden" name="rtr" value="<?= $rtr ?>">
        <input type="hidden" name="discount_type" value="<?= $discount_type ?>">
    </div>

    <!-- Captcha -->
    <div class="form-group row">
        <label for="captcha" class="col-sm-3 col-form-label"><?php echo display('captcha') ?> <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <select class="form-control" name="captcha" id="captcha" tabindex="9">
                <option value=""><?php echo display('select_one') ?></option>
                <option value="0" <?php if ($captcha == 0) {echo "selected";}?>><?php echo display('active') ?></option>
                <option value="1" <?php if ($captcha == 1) {echo "selected";}?>><?php echo display('inactive') ?></option>
            </select>
        </div>
    </div>

    <!-- Site Key -->
    <div class="form-group row">
        <label for="site_key" class="col-sm-3 col-form-label"><?php echo display('site_key') ?> <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="site_key" id="site_key" type="text" placeholder="<?php echo display('site_key') ?>" value="{site_key}" tabindex="10">
        </div>
    </div>    

    <!-- Secret Key -->
    <div class="form-group row">
        <label for="secret_key" class="col-sm-3 col-form-label"><?php echo display('secret_key') ?> <i class="text-danger">*</i></label>
        <div class="col-sm-6">
            <input class="form-control" name="secret_key" id="secret_key" type="text" placeholder="<?php echo display('secret_key') ?>" value="{secret_key}" tabindex="11">
        </div>
    </div>

    <!-- Submit -->
    <?php if($this->permission1->method('language','update')->access()){ ?>
    <div class="form-group row">
        <label class="col-sm-4 col-form-label"></label>
        <div class="col-sm-6">
            <input type="submit" id="add-customer" class="btn btn-success btn-large" name="add-customer" value="<?php echo display('save_changes') ?>" tabindex="12"/>
        </div>
    </div>
    <?php } ?>

</div>
<?php echo form_close()?>

                </div>
            </div>
        </div>
        <?php }
        else{
        ?>
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <h4><?php echo display('You do not have permission to access. Please contact with administrator.');?></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        }?>


    </section>
</div>
<!-- Add new customer end -->



