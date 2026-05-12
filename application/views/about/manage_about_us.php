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
        <div class="header-icon"><i class="fa fa-info-circle"></i></div>
        <div class="header-title">
            <h1>About Us</h1>
            <small>Manage About Us</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">About Us</a></li>
                <li class="active">Manage About Us</li>
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

       

        <!-- TABLE -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4>Manage About Us</h4>
                    </div>

                    <div class="panel-body">

                        <!-- LOADING -->
                        <div id="loadingSpinner">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <div class="table-responsive">

                            <table id="aboutList" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Description</th>
                                        <th>Mission</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                <?php 
                                if (!empty($about_list)) {
                                    foreach ($about_list as $about) {
                                ?>
                                <tr>
                                    <td><?= $about['id']; ?></td>

                                    <td><?= word_limiter(strip_tags($about['description']), 7); ?></td>
<td><?= word_limiter(strip_tags($about['mission']), 7); ?></td>

                                    <td>
                                        <?php if ($about['status'] == 1) { ?>
                                            <span class="status-active">Active</span>
                                        <?php } else { ?>
                                            <span class="status-inactive">Inactive</span>
                                        <?php } ?>
                                    </td>

                                    <td>
                                        <a href="<?= base_url('Cabout_us/edit/'.$about['id']); ?>" class="btn btn-info btn-sm">
                                            <i class="fa fa-edit"></i>
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

    $('#aboutList').DataTable({
        dom: 'Bfrtip',
        processing: true,

        buttons: [
            { extend: 'excelHtml5', title: 'About Us', exportOptions: { columns: ':visible' }},
            { extend: 'csvHtml5', title: 'About Us', exportOptions: { columns: ':visible' }},
            { extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'A4', title: 'About Us',
              exportOptions: { columns: ':visible' }},
            { extend: 'print', title: 'About Us', exportOptions: { columns: ':visible' }}
        ],

        columnDefs: [
            { targets: [4], exportable: false }
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
