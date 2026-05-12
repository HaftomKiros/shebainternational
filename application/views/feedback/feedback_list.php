<style type="text/css">
/* BUTTONS */
.btn-sm {
    padding: .25rem .5rem;
    font-size: .875rem;
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

/* STATUS BADGES */
.badge-unread {
    background-color: #f0ad4e;
    color: #fff;
    font-weight: bold;
}
.badge-read {
    background-color: #5cb85c;
    color: #fff;
    font-weight: bold;
}

/* HIGHLIGHT UNREAD ROW */
tr.unread td {
    background-color: #f9f9a9 !important;
}
</style>

<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-chat"></i></div>
        <div class="header-title">
            <h1>Feedback</h1>
            <small>All user feedback messages</small>
            <ol class="breadcrumb">
                <li><a href="<?php echo base_url('Admin_dashboard') ?>"><i class="pe-7s-home"></i> Home</a></li>
                <li class="active">Feedback</li>
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

        <!-- Feedback Table -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4>Feedback Messages</h4>
                    </div>

                    <div class="panel-body">

                        <!-- LOADING SPINNER -->
                        <div id="loadingSpinner">
                            <i class="fa fa-spinner fa-spin" style="font-size:40px;"></i>
                            <p><b>Loading data, please wait...</b></p>
                        </div>

                        <div class="table-responsive">
                            <table id="feedbackList" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Message</th>
                                        <th>Status</th>
                                        <th>Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                if(!empty($feedback_list)) {
                                    $sl = 1;
                                    foreach($feedback_list as $feedback) { ?>
                                    <tr class="<?= ($feedback->status == 0) ? 'unread' : '' ?>">
                                        <td><?= $sl++; ?></td>
                                        <td><?= htmlspecialchars($feedback->name); ?></td>
                                        <td><?= htmlspecialchars($feedback->email); ?></td>
                                        <td><?= word_limiter(strip_tags($feedback->message), 20); ?></td>
                                        <td>
                                            <?php if($feedback->status == 0) { ?>
                                                <span class="badge badge-unread">Unread</span>
                                            <?php } else { ?>
                                                <span class="badge badge-read">Read</span>
                                            <?php } ?>
                                        </td>
                                        <td><?= date('d M Y', strtotime($feedback->created_at)); ?></td>
                                        <td>
                                            <!-- Modal Trigger -->
                                            <button 
                                                class="btn btn-info btn-sm viewFeedbackBtn" 
                                                data-id="<?= $feedback->id ?>"
                                                data-name="<?= htmlspecialchars($feedback->name) ?>" 
                                                data-email="<?= htmlspecialchars($feedback->email) ?>" 
                                                data-date="<?= date('d M Y', strtotime($feedback->created_at)) ?>" 
                                                data-message="<?= htmlspecialchars($feedback->message) ?>">
                                                <i class="fa fa-eye"></i> View
                                            </button>
                                            <a href="<?= base_url('feedback/delete/'.$feedback->id); ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this feedback?');">
                                                <i class="fa fa-trash"></i> Delete
                                            </a>
                                        </td>
                                    </tr>
                                <?php 
                                    }
                                } else { ?>
                                    <tr>
                                        <td colspan="7" class="text-center">No feedback found</td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>
</div>

<!-- Feedback Modal -->
<div class="modal fade" id="feedbackModal" tabindex="-1" role="dialog" aria-labelledby="feedbackModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Feedback Details</h5>
        <button type="button" class="close modalCloseBtn" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p><strong>Name:</strong> <span id="fbName"></span></p>
        <p><strong>Email:</strong> <span id="fbEmail"></span></p>
        <p><strong>Date:</strong> <span id="fbDate"></span></p>
        <p><strong>Message:</strong></p>
        <p id="fbMessage"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary modalCloseBtn">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function() {

    $("#loadingSpinner").show();

    var table = $('#feedbackList').DataTable({
        dom: 'Bfrtip',
        processing: true,
        buttons: [
            { extend: 'excelHtml5', title: 'Feedback List', exportOptions: { columns: ':visible' }},
            { extend: 'csvHtml5', title: 'Feedback List', exportOptions: { columns: ':visible' }},
            { extend: 'pdfHtml5', orientation: 'landscape', pageSize: 'A4', title: 'Feedback List', exportOptions: { columns: ':visible' }},
            { extend: 'print', title: 'Feedback List', exportOptions: { columns: ':visible' }}
        ],
        columnDefs: [
            { targets: [6], orderable: false } // Action column
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

    // View feedback in modal & mark as read
    $('.viewFeedbackBtn').on('click', function() {
        var row = $(this).closest('tr');
        var feedbackId = $(this).data('id');
        $('#fbName').text($(this).data('name'));
        $('#fbEmail').text($(this).data('email'));
        $('#fbDate').text($(this).data('date'));
        $('#fbMessage').text($(this).data('message'));

        // Show modal (static backdrop, cannot close by clicking outside)
        $('#feedbackModal').modal('show');

        // Mark as read via AJAX if unread
        if(row.hasClass('unread')) {
            $.ajax({
                url: "<?= base_url('feedback/mark_as_read') ?>",
                method: "POST",
                data: { id: feedbackId },
                success: function() {
                    row.removeClass('unread');
                    row.find('.badge-unread').removeClass('badge-unread').addClass('badge-read').text('Read');
                }
            });
        }
    });

    // Close button refreshes page
    $('.modalCloseBtn').on('click', function() {
        location.reload();
    });

});
</script>
