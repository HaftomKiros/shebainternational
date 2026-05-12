<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="fa fa-id-badge"></i></div>
        <div class="header-title">
            <h1>Clients</h1>
            <small>Add Client</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Clients</a></li>
                <li class="active">Add Client</li>
            </ol>
        </div>
    </section>

    <section class="content">
        <!-- Alert Messages -->
        <?php if ($message = $this->session->userdata('message')): ?>
            <div class="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <?= $message ?>
            </div>
            <?php $this->session->unset_userdata('message'); ?>
        <?php endif; ?>

        <?php if ($error_message = $this->session->userdata('error_message')): ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <?= $error_message ?>
            </div>
            <?php $this->session->unset_userdata('error_message'); ?>
        <?php endif; ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <a href="<?= base_url('Cclient/manage_clients')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> Manage Clients
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4>Add Client</h4>
                        </div>
                    </div>

                    <?= form_open_multipart('Cclient/insert_client', ['class'=>'form-vertical', 'id'=>'insert_client']) ?>
                    <div class="panel-body">

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Client Name <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" name="client_name" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Website</label>
                            <div class="col-sm-6">
                                <input type="url" name="website" class="form-control" placeholder="https://example.com">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Logo</label>
                            <div class="col-sm-6">
                                <input type="file" name="logo" class="form-control" accept="image/*">
                                <small class="text-muted">Recommended size: 200x200 px, max 500 KB</small>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save Client</button>
                            </div>
                        </div>

                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </section>
</div>
