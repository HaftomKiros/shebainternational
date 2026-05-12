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
        <div class="header-icon"><i class="fa fa-users"></i></div>
        <div class="header-title">
            <h1>Team Members</h1>
            <small>Manage Team Members</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Team</a></li>
                <li class="active">Manage Members</li>
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
                        <h4>Manage Team Members</h4>
                    </div>

                    <div class="panel-body">

                        <!-- LOADING -->
                        <div id="loadingSpinner">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <div class="table-responsive">

                            <table id="memberList" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Role/Position</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                <?php 
                                if (!empty($members)) {
                                    foreach ($members as $member) {
                                ?>
                                <tr>
                                    <td><?= $member['id']; ?></td>
                                    <td><?= $member['name']; ?></td>
                                    <td><?= $member['position']; ?></td>

                                    <td>
                                        <?php if ($member['status'] == 1) { ?>
                                            <span class="status-active">Active</span>
                                        <?php } else { ?>
                                            <span class="status-inactive">Inactive</span>
                                        <?php } ?>
                                    </td>

                                    <td>
                                        <a href="<?= base_url('CTeam/edit/'.$member['id']); ?>" class="btn btn-info btn-sm">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="<?= base_url('CTeam/delete/'.$member['id']); ?>" class="btn btn-danger btn-sm"
                                           onclick="return confirm('Are you sure you want to delete this member?');">
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

    $('#memberList').DataTable({
        dom: 'Bfrtip',
        processing: true,

        buttons: [
            { extend: 'excelHtml5', title: 'Team Members', exportOptions: { columns: ':visible' }},
            { extend: 'csvHtml5', title: 'Team Members', exportOptions: { columns: ':visible' }},
            { extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'A4', title: 'Team Members',
              exportOptions: { columns: ':visible' }},
            { extend: 'print', title: 'Team Members', exportOptions: { columns: ':visible' }}
        ],

        columnDefs: [
            { targets: [4], exportable: false } // Action column
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
