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

    /* Make table scrollable on small devices */
    @media (max-width: 768px) {
        .panel-body-scroll {
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
            width: 100%;
        }

        .panel-body-scroll table {
            min-width: 900px;
            white-space: nowrap;
        }
    }
</style>

<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-note2"></i></div>
        <div class="header-title">
            <h1><?php echo display('hired_report'); ?></h1> <!-- Title updated -->
            <small><?php echo display('show_hired_report'); ?></small> <!-- Updated sub-title -->
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home'); ?></a></li>
                <li><a href="#"><?php echo display('hired_report'); ?></a></li>
                <li class="active"><?php echo display('show_hired_report'); ?></li> <!-- Updated breadcrumb -->
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

        <!-- Action Buttons -->
        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <!-- Add any action buttons if needed -->
                </div>
            </div>
        </div>

        <!-- Hired Report Table -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('hired_report'); ?></h4> <!-- Title updated -->
                        </div>
                    </div>

                    <div class="panel-body panel-body-scroll">
                        <table id="hiredList" class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th><?php echo display('sno'); ?></th>
                                    <th><?php echo display('company_id'); ?></th>
                                    <th><?php echo display('company_name'); ?></th>
                                    <th><?php echo display('total_hired'); ?></th> <!-- Updated column for hired candidates -->
                                    <th><?php echo display('total_jobs_posted'); ?></th> <!-- New column -->
                                </tr>
                            </thead>
                            <tbody>
                            <?php 
                            $sl = 1;
                            if (!empty($hired_report)) { // Use $hired_report here instead of $interviewed_report
                                foreach ($hired_report as $data) {
                                    // Assuming $data contains company_id, company_name, hired count, and total jobs posted
                            ?>
                                <tr>
                                    <td><?php echo $sl++; ?></td>
                                    <td><?php echo html_escape($data['id']); ?></td>
                                    <td><?php echo html_escape($data['company_name']); ?></td>
                                    <td><?php echo html_escape($data['total_hired']); ?></td> <!-- New cell for hired candidates -->
                                    <td><?php echo html_escape($data['total_jobs_posted']); ?></td> <!-- New cell for total jobs posted -->
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

    </section>
</div>

<script>
$(document).ready(function() {
    $('#hiredList').DataTable({
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'excelHtml5',
                title: 'Hired Report',
                exportOptions: { columns: [0, 1, 2, 3, 4] } // Include new column index (4)
            },
            {
                extend: 'csvHtml5',
                title: 'Hired Report',
                exportOptions: { columns: [0, 1, 2, 3, 4] }
            },
            {
                extend: 'pdfHtml5',
                orientation: 'portrait',
                title: 'Hired Report',
                exportOptions: { columns: [0, 1, 2, 3, 4] }
            },
            {
                extend: 'print',
                title: 'Hired Report',
                exportOptions: { columns: [0, 1, 2, 3, 4] }
            }
        ],
        pageLength: 10,
        lengthMenu: [5, 10, 25, 50, 100],
        ordering: true,
        searching: true,

        language: {
            emptyTable: "No hired candidates found"
        }
    });
});
</script>
