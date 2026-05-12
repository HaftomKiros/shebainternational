<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="fa fa-id-badge"></i></div>
        <div class="header-title">
            <h1>Clients</h1>
            <small>Manage Clients</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Clients</a></li>
                <li class="active">Manage Clients</li>
            </ol>
        </div>
    </section>

    <section class="content">

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
                    <a href="<?= base_url('Cclient/add_client')?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-plus"></i> Add Client
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading"><h4>Manage Clients</h4></div>
                    <div class="panel-body">

                        <div id="loadingSpinner" style="display:none;text-align:center;padding:30px;">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <div class="table-responsive">
                            <table id="clientList" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Client Name</th>
                                        <th>Website</th>
                                        <th>Logo</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(!empty($clients)): foreach($clients as $client): ?>
                                    <tr>
                                        <td><?= $client['id'] ?></td>
                                        <td><?= $client['client_name'] ?></td>
                                        <td><?= $client['website'] ?></td>
                                        <td>
                                            <?php if(!empty($client['logo'])): ?>
                                                <img src="<?= base_url($client['logo']) ?>" width="50">
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <?= $client['status'] == 1 ? '<span class="text-success">Active</span>' : '<span class="text-danger">Inactive</span>' ?>
                                        </td>
                                        <td>
                                            <a href="<?= base_url('Cclient/edit/'.$client['id']) ?>" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                            <a href="<?= base_url('Cclient/delete/'.$client['id']) ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    <?php endforeach; endif; ?>
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
    $('#clientList').DataTable({
        dom: 'Bfrtip',
        buttons: [
            { extend: 'excelHtml5', title: 'Client List', exportOptions: { columns: ':visible' }},
            { extend: 'csvHtml5', title: 'Client List', exportOptions: { columns: ':visible' }},
            { extend: 'pdfHtml5', title: 'Client List', exportOptions: { columns: ':visible' }},
            { extend: 'print', title: 'Client List', exportOptions: { columns: ':visible' }}
        ],
        columnDefs: [{ targets: [5], exportable: false }],
        pageLength: 50,
        lengthMenu: [[10,25,50,-1],[10,25,50,"All"]],
        ordering: true,
        searching: true,
        initComplete: function () { $("#loadingSpinner").fadeOut(); }
    });
});
</script>
