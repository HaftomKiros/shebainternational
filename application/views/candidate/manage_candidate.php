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
</style>

<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-users"></i></div>
        <div class="header-title">
            <h1>Candidate</h1>
            <small>Manage Candidate</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> Home</a></li>
                <li><a href="#">Candidate</a></li>
                <li class="active">Manage Candidate</li>
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

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <?php if($this->permission1->method('add_candidate','create')->access()){ ?>
                        <a href="<?php echo base_url('Ccandidate'); ?>" class="btn btn-info m-b-5 m-r-2">
                            <i class="ti-plus"></i> Add Candidate
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4>Manage Candidate</h4>
                    </div>

                    <div class="panel-body">

                        <!-- LOADING SPINNER -->
                        <div id="loadingSpinner">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <!-- SCROLLABLE WRAPPER -->
                        <div class="table-responsive">

                            <table id="candidateList" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
    <tr>
        <th>SL</th>
        <th>Seeker ID</th>
        <th>Full Name</th>
        <th>Sex</th>
        <th>DOB (Ethiopian)</th>
        <th>Age</th>
        <th>Family Size</th>
        <th>HH Male</th>
        <th>HH Female</th>
        <th>Household Type</th>
        <th>Disability Status</th>
        <th>Disability Male</th>
        <th>Disability Female</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Location</th>
        <th>Woreda</th>
        <th>Tabia</th>
        <th>Education</th>
        <th>Field of Study</th>
        <th>GPA</th>
        <th>Qualification / Skills</th>
        <th>Graduated Year</th>
        <th>Experience</th>
        <th>Resume</th>
        <th>Created At</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
</thead>

<tbody>
<?php 
$sl = 1;
if (!empty($candidates)) {
    foreach ($candidates as $c) {
?>
<tr>
    <td><?= $sl++; ?></td>
    <td><?= $c['seeker_id']; ?></td>
    <td><?= html_escape($c['full_name']); ?></td>
    <td><?= $c['sex']; ?></td>
    <td><?= $c['dob_ethiopian']; ?></td>
    <td><?= $c['age']; ?></td>
    <td><?= $c['total_family_size']; ?></td>
    <td><?= $c['hh_male']; ?></td>
    <td><?= $c['hh_female']; ?></td>
    <td><?= $c['household_type']; ?></td>
    <td><?= $c['disability_status']; ?></td>
    <td><?= $c['disability_male']; ?></td>
    <td><?= $c['disability_female']; ?></td>
    <td><?= $c['phone_number']; ?></td>
    <td><?= $c['email']; ?></td>
    <td><?= $c['location']; ?></td>
    <td><?= $c['woreda']; ?></td>
    <td><?= $c['tabia']; ?></td>
    <td><?= $c['education_level']; ?></td>
    <td><?= $c['field_of_study']; ?></td>
    <td><?= $c['gpa']; ?></td>
    <td><?= $c['qualification_skills']; ?></td>
    <td><?= $c['graduated_year']; ?></td>
    <td><?= $c['experience']; ?> Years</td>

    <td>
        <?php if (!empty($c['resume'])) { ?>
            <a href="<?= base_url('Ccandidate/download_resume/'.$c['id']); ?>" 
               class="btn btn-success btn-sm">Download</a>
        <?php } else { ?>
            <span class="label label-warning">No File</span>
        <?php } ?>
    </td>

    <td><?= $c['created_at']; ?></td>

    <td>
        <?php
        $status = $c['status'];
        $status_labels = [
            0 => ['Job Seeker', 'label-default'],
            1 => ['Fetched', 'label-info'],
            2 => ['Applied', 'label-primary'],
            3 => ['Shortlisted', 'label-warning'],
            4 => ['Interview', 'label-success'],
            5 => ['Hired', 'label-success'],
            6 => ['Rejected', 'label-danger'],
        ];
        if (isset($status_labels[$status])) {
            echo '<span class="label '.$status_labels[$status][1].'">'.$status_labels[$status][0].'</span>';
        } else {
            echo '<span class="label label-default">Unknown</span>';
        }
        ?>
    </td>

    <td>
        <?php if ($this->permission1->method('manage_candidate','update')->access()) { ?>
            <a href="<?= base_url('Ccandidate/edit/'.$c['id']); ?>" 
               class="btn btn-info btn-sm">
               <i class="fa fa-edit"></i>
            </a>
        <?php } ?>

        <?php if ($this->permission1->method('manage_candidate','delete')->access()) { ?>
            <a href="<?= base_url('Ccandidate/delete/'.$c['id']); ?>" 
               class="btn btn-danger btn-sm"
               onclick="return confirm('Are you sure you want to delete this?');">
               <i class="fa fa-trash"></i>
            </a>
        <?php } ?>
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

    $('#candidateList').DataTable({
        dom: 'Bfrtip',
        processing: true,

        buttons: [
            {
                extend: 'excelHtml5',
                title: 'Candidate List',
                exportOptions: { columns: ':visible' }
            },
            {
                extend: 'csvHtml5',
                title: 'Candidate List',
                exportOptions: { columns: ':visible' }
            },
            {
                extend: 'pdfHtml5',
                orientation: 'landscape',
                pageSize: 'A4',
                title: 'Candidate List',
                exportOptions: { columns: ':visible' }
            },
            {
                extend: 'print',
                title: 'Candidate List',
                exportOptions: { columns: ':visible' }
            }
        ],

        columnDefs: [
            {
                targets: [9],
                render: function(data, type) {
                    if (type === 'export') {
                        return "Downloaded File";
                    }
                    return data;
                }
            },
            {
                targets: [10],
                render: function(data, type) {
                    if (type === 'export') {
                        return $(data).text();
                    }
                    return data;
                }
            },
            {
                targets: [11],
                exportable: false
            }
        ],

        pageLength: 5000,
        lengthMenu: [
            [10, 25, 50, 100, 500, 1000, 5000, -1],
            [10, 25, 50, 100, 500, 1000, 5000, "Show All"]
        ],

        ordering: true,
        searching: true,

        initComplete: function () {
            $("#loadingSpinner").fadeOut();
        }
    });
});
</script>
