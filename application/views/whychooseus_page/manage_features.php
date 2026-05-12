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
        <div class="header-icon"><i class="fa fa-star"></i></div>
        <div class="header-title">
            <h1><?php echo display('why_choose_us') ?></h1>
            <small><?php echo display('manage_features') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('why_choose_us') ?></a></li>
                <li class="active"><?php echo display('manage_features') ?></li>
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
                    <a href="<?php echo base_url('CWhyChooseUs/add_feature'); ?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-plus"></i> <?php echo display('add_feature') ?>
                    </a>
                </div>
            </div>
        </div>

        <!-- TABLE -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4><?php echo display('manage_features') ?></h4>
                    </div>

                    <div class="panel-body">

                        <!-- LOADING -->
                        <div id="loadingSpinner">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <div class="table-responsive">

                            <table id="featureList" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th><?php echo display('id') ?></th>
                                        <th><?php echo display('title') ?></th>
                                        <th><?php echo display('description') ?></th>
                                        <th><?php echo display('icon') ?></th>
                                        <th><?php echo display('status') ?></th>
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>

                                <tbody>
                                <?php 
                                if (!empty($features)) {
                                    foreach ($features as $feature) {
                                ?>
                                <tr>
                                    <td><?= $feature['id']; ?></td>
                                    <td><?= $feature['title']; ?></td>
                                    <td><?= word_limiter(strip_tags($feature['description']), 15); ?></td>
                                    <td>
                                        <?php if(!empty($feature['icon_image'])){ ?>
                                            <img src="<?= base_url($feature['icon_image']); ?>" width="50" alt="Feature Icon">
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php if($feature['status'] == 1){ ?>
                                            <span class="status-active">Active</span>
                                        <?php } else { ?>
                                            <span class="status-inactive">Inactive</span>
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <a href="<?= base_url('CWhyChooseUs/edit/'.$feature['id']); ?>" class="btn btn-info btn-sm">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="<?= base_url('CWhyChooseUs/delete/'.$feature['id']); ?>" class="btn btn-danger btn-sm"
                                           onclick="return confirm('Are you sure you want to delete this feature?');">
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

    $('#featureList').DataTable({
        dom: 'Bfrtip',
        processing: true,

        buttons: [
            { extend: 'excelHtml5', title: 'Feature List', exportOptions: { columns: ':visible' }},
            { extend: 'csvHtml5', title: 'Feature List', exportOptions: { columns: ':visible' }},
            { extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'A4', title: 'Feature List',
              exportOptions: { columns: ':visible' }},
            { extend: 'print', title: 'Feature List', exportOptions: { columns: ':visible' }}
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
