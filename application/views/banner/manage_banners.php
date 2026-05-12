<style type="text/css">
.prints {
    background-color: #31B404;
    color: #fff;
}
.action {
    color: #fff;
}
.dropdown-menu > li > a {
    color: #fff;
}

/* SCROLLABLE TABLE */
.table-responsive {
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
}
.table-responsive table {
    min-width: 1200px;
    white-space: nowrap;
}

/* LOADING SPINNER */
#loadingSpinner {
    text-align: center;
    padding: 30px;
    display: none;
}
.status-active {
    color: green;
    font-weight: bold;
}
.status-inactive {
    color: red;
    font-weight: bold;
}
</style>

<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="fa fa-image"></i></div>
        <div class="header-title">
            <h1><?php echo display('banners') ?></h1>
            <small><?php echo display('manage_banners') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('banners') ?></a></li>
                <li class="active"><?php echo display('manage_banners') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alert Messages -->
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

        <!-- Add button -->
        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <a href="<?php echo base_url('Cbanners/add_banner'); ?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-plus"></i> <?php echo display('add_banner') ?>
                    </a>
                </div>
            </div>
        </div>

        <!-- TABLE -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4><?php echo display('manage_banners') ?></h4>
                    </div>

                    <div class="panel-body">

                        <!-- LOADING -->
                        <div id="loadingSpinner">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <div class="table-responsive">

                            <table id="bannerList" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th><?php echo display('id') ?></th>
                                        <th><?php echo display('banner_title') ?></th>
                                        <th><?php echo display('banner_subtitle') ?></th>
                                        <th><?php echo display('banner_image') ?></th>
                                        <th><?php echo display('status') ?></th>
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>

                                <tbody>
                                <?php 
                                if (!empty($banners)) {
                                    foreach ($banners as $banner) {
                                ?>
                                <tr>
                                    <td><?= $banner['id']; ?></td>
                                    <td><?= $banner['title']; ?></td>
                                    <td><?= $banner['subtitle']; ?></td>
                                    <td>
                                        <?php if(!empty($banner['image_url'])){ ?>
                                            <img src="<?= base_url($banner['image_url']); ?>" width="100" alt="Banner Image">
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php if($banner['status'] == 1){ ?>
                                            <span class="status-active">Active</span>
                                        <?php } else { ?>
                                            <span class="status-inactive">Inactive</span>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <a href="<?= base_url('Cbanners/edit/'.$banner['id']); ?>" class="btn btn-info btn-sm">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="<?= base_url('Cbanners/delete/'.$banner['id']); ?>" class="btn btn-danger btn-sm"
                                           onclick="return confirm('Are you sure you want to delete this banner?');">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                <?php 
                                    }
                                }
                                ?>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>
</div>

<script>
$(document).ready(function() {

    $("#loadingSpinner").show();

    $('#bannerList').DataTable({
        dom: 'Bfrtip',
        processing: true,

        buttons: [
            { extend: 'excelHtml5', title: 'Banner List', exportOptions: { columns: ':visible' }},
            { extend: 'csvHtml5', title: 'Banner List', exportOptions: { columns: ':visible' }},
            { extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'A4', title: 'Banner List',
              exportOptions: { columns: ':visible' }},
            { extend: 'print', title: 'Banner List', exportOptions: { columns: ':visible' }}
        ],

        columnDefs: [
            { targets: [5], exportable: false } // Action column
        ],

        pageLength: 50,
        lengthMenu: [
            [10, 25, 50, 100, -1],
            [10, 25, 50, 100, "Show All"]
        ],

        ordering: true,
        searching: true,

        initComplete: function () {
            $("#loadingSpinner").fadeOut();
        }
    });
});
</script>
