<!-- Admin Home Start -->
 <div class="content-wrapper">
    <!-- Content Header(Page header)-->
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-world"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('dashboard')?></h1>
            <small><?php echo display('home')?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home')?></a></li>
                <li class="active"><?php echo display('dashboard')?></li>
            </ol>
        </div>
    </section>
    <!-- Main content -->
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
        <!-- First Counter -->
        <div class="row">

           <?php
            if($this->permission1->method('manage_employer','read')->access()){ ?>
               <div class="col-xs-12 col-sm-4 col-md-4 col-lg-2">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                              <a href="<?php echo base_url('Cbanners/manage_banners')?>" style="color:#000">
                            <h2><span class="count-number"><?php echo $total_banner ?></span> <span class="slight"><i class="fa fa-play fa-rotate-270 text-warning"> </i></span></h2></a>
                            <div class="small">Banners</div>
                            <div class="sparkline3 text-center"></div>
                        </div>
                    </div>
                </div>
               </div>
            <?php } ?>

             <?php
             if($this->permission1->method('manage_candidate','read')->access()) { ?>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-2">
                 <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                              <a href="<?php echo base_url('Cservices/manage_services')?>" style="color:#000">
                            <h2><span class="count-number"><?php echo $total_services ?></span> <span class="slight"><i class="fa fa-play fa-rotate-270 text-warning"> </i> </span></h2></a>
                            <div class="small">Services</div>
                            <div class="sparkline2 text-center"></div>
                        </div>
                    </div>
                 </div>
                </div>
             <?php } ?>

            <?php
            if($this->permission1->method('shortlisted_report','read')->access()){ ?>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-2">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                              <a href="<?php echo base_url('CTeam/manage_members')?>" style="color:#000">
                            <h2><span class="count-number"><?php echo $total_team?></span> <span class="slight"><i class="fa fa-play fa-rotate-270 text-warning"> </i></span></h2></a>
                            <div class="small">Team Members</div>
                            <div class="sparkline4 text-center"></div>
                        </div>
                    </div>
                </div>
            </div>
           <?php } ?>


          
                  <?php
                if($this->permission1->method('interviewed_report','read')->access()) { ?>
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-2">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('CResearch/manage_research')?>" style="color:#000">
                            <h2><span class="count-number"><?php echo $total_research; ?></span><span class="slight"> <i class="fa fa-play fa-rotate-270 text-warning"> </i> </span></h2></a>
                            <div class="small">Researchs</div>
                            <div class="sparkline2 text-center"></div>
                        </div>
                    </div>
                </div>
                </div>
                <?php } ?>
                      <?php
                if($this->permission1->method('hired_report','read')->access()) { ?>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-2">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('CClient/manage_clients')?>" style="color:#000">
                            <h2><span class="count-number"><?php echo $total_clients ?></span><span class="slight"> <i class="fa fa-play fa-rotate-270 text-warning"> </i> </span></h2></a>
                            <div class="small">Clients</div>
                            <div class="sparkline4 text-center"></div>
                        </div>
                    </div>
                </div>
                </div>
                <?php } ?>
                 <?php
                if($this->permission1->method('rejected_report','read')->access()) { ?>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-2">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <a href="<?php echo base_url('CWhyChooseUs/manage_features')?>" style="color:#000">
                            <h2><span class="count-number"><?php echo $total_rejected_list ?></span><span class="slight"> <i class="fa fa-play fa-rotate-270 text-warning"> </i> </span></h2></a>
                            <div class="small">Features</div>
                            <div class="sparkline4 text-center"></div>
                        </div>
                    </div>
                </div>
                </div>
                <?php } ?>

        </div>
        <hr>
        <!-- Second Counter -->
        <div class="row">

         <?php
         if($this->permission1->method('add_job','create')->access()) { ?>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                            <h2><span class="slight" style="margin-left: 70px;">
                                <img src="<?php echo base_url('my-assets/image/invoice.png');?>" height="40" width="40" >
                             </span></h2>
                            <div class="small" style="font-size: 17px;margin-top: 20px;text-align: center;"><a href="<?php echo base_url('Cbanners/add_banner')?>">Add Banners</a></div>
                        </div>
                    </div>
                </div>
            </div>
          <?php } ?>





                <?php
                if($this->permission1->method('add_candidate','create')->access()) { ?>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                         <h2><span class="slight" style="margin-left: 70px;"><img src="<?php echo base_url('my-assets/image/invoice.png');?>" height="40" width="40" > </span></h2>
                            <div class="small" style="font-size: 17px;margin-top: 20px;text-align: center;"><a href="<?php echo base_url('Cservices/add_services')?>">Add services</a></div>
                        </div>
                    </div>
                </div>
            </div>
                <?php } ?>


                <?php
                if($this->permission1->method('add_empployer','create')->access()) { ?>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                         <h2><span class="slight" style="margin-left: 70px;"><img src="<?php echo base_url('my-assets/image/invoice.png');?>" height="40" width="40" > </span></h2>
                            <div class="small" style="font-size: 17px;margin-top: 20px;text-align: center;"><a href="<?php echo base_url('CResearch/add_research')?>">Research and Evaluation</a></div>
                        </div>
                    </div>
                </div>
                </div>
                <?php } ?>


          <?php
           if($this->permission1->method('add_educational_level','create')->access()) { ?>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                <div class="panel panel-bd">
                    <div class="panel-body">
                        <div class="statistic-box">
                         <h2><span class="slight" style="margin-left: 70px;"><img src="<?php echo base_url('my-assets/image/invoice.png');?>" height="40" width="40" > </span></h2>
                            <div class="small" style="font-size: 17px;margin-top: 20px;text-align: center;"><a href="<?php echo base_url('CClient/add_client')?>">Add Clients</a></div>
                        </div>
                    </div>
                </div>
            </div>
         <?php } ?>

        </div>

        <!-- Third Counter -->
        <div class="row">

         
        </div>
        <hr>
        <!-- this is for chart-->

    </section> <!-- /.content -->

     <?php if ($this->session->userdata('user_type') == '1') { ?>
<div id="stockmodal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo display('out_of_stock_and_date_expired_medicine') ?></h4>
            </div>
            <div class="modal-body">
                <?php
                $date = date('Y-m-d');
                $this->db->select("b.*, b.expeire_date as expdate, a.product_name, a.strength,
                    ((SELECT IFNULL(SUM(quantity), 0) FROM product_purchase_details WHERE product_id = a.product_id) -
                     (SELECT IFNULL(SUM(quantity), 0) FROM invoice_details WHERE product_id = a.product_id)) AS stock");
                $this->db->from('product_information a');
                $this->db->join('product_purchase_details b', 'b.product_id = a.product_id', 'left');
                $this->db->where('b.expeire_date <=', $date);
                $this->db->having('stock > 0');
                $this->db->group_by(['b.batch_id', 'a.product_id']);
                $this->db->limit(20);
                $expired = $this->db->get()->result_array();
                ?>

                <table class="table table-bordered table-striped table-hover">
                    <caption><h4 class="text-center">Date Expired Medicine</h4></caption>
                    <thead>
                        <tr>
                            <th class="text-center"><?php echo display('product_name') ?></th>
                            <th class="text-center"><?php echo display('batch_id') ?></th>
                            <th class="text-center"><?php echo display('expeire_date') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($expired) {
                            foreach ($expired as $row) { ?>
                                <tr>
                                    <td class="text-center">
                                        <a href="<?= base_url('Cproduct/product_details/' . $row['product_id']); ?>">
                                            <?= $row['product_name']; ?>
                                        </a>
                                    </td>
                                    <td class="text-center"><?= $row['batch_id']; ?></td>
                                    <td class="text-center"><?= $row['expdate']; ?></td>
                                </tr>
                        <?php }
                        } ?>
                    </tbody>
                </table>

                <?php
                $this->db->select("a.*, b.manufacturer_name, a.product_name, a.generic_name, a.strength,
                    ((SELECT IFNULL(SUM(quantity), 0) FROM product_purchase_details WHERE product_id = a.product_id) -
                     (SELECT IFNULL(SUM(quantity), 0) FROM invoice_details WHERE product_id = a.product_id)) AS stock");
                $this->db->from('product_information a');
                $this->db->join('manufacturer_information b', 'b.manufacturer_id = a.manufacturer_id', 'left');
                $this->db->having('stock < 10');
                $this->db->group_by('a.product_id');
                $this->db->order_by('a.product_name', 'asc');
                $this->db->limit(20);
                $out_of_stock = $this->db->get()->result_array();
                ?>

                <table class="table table-bordered table-striped table-hover">
                    <caption><h4 class="text-center">Out of Stock Medicine</h4></caption>
                    <thead>
                        <tr>
                            <th class="text-center"><?php echo display('product_name') ?></th>
                            <th class="text-center"><?php echo display('product_type') ?></th>
                            <th class="text-center"><?php echo display('unit') ?></th>
                            <th class="text-center"><?php echo display('stock') ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($out_of_stock) {
                            foreach ($out_of_stock as $row) { ?>
                                <tr>
                                    <td class="text-center">
                                        <a href="<?= base_url('Cproduct/product_details/' . $row['product_id']); ?>">
                                            <?= $row['product_name']; ?>
                                        </a>
                                    </td>
                                    <td class="text-center"><?= $row['product_model']; ?></td>
                                    <td class="text-center"><?= $row['unit']; ?></td>
                                    <td class="text-center">
                                        <span style="color:red"><?= $row['stock']; ?></span>
                                    </td>
                                </tr>
                        <?php }
                        } ?>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:green; color:white;">
                    <?= display('close'); ?>
                </button>
            </div>
        </div>
    </div>
</div>
<?php } ?>


</div> <!-- /.content-wrapper -->
<!-- Admin Home end -->
 
<!-- ChartJs JavaScript -->
<script src="<?php echo base_url()?>assets/plugins/chartJs/Chart.min.js" type="text/javascript"></script>

<script type="text/javascript"> 
    //line chart
    var ctx = document.getElementById("lineChart");
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July","August","September","October","November","December"],
            datasets: [
                {
                    label: "Sales",
                    borderColor: "#2C3136",
                    borderWidth: "1",
                    backgroundColor: "rgba(0,0,0,.07)",
                    pointHighlightStroke: "rgba(26,179,148,1)",
                    data: [<?php foreach ($inv_jan as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_feb as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_mar as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_apr as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_may as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_jun as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_jul as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_aug as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_sep as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_oct as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_nov as  $value){echo $value['invoice_id'];} ?>,<?php foreach ($inv_dec as  $value){echo $value['invoice_id'];} ?>
                    ]
                },
                {
                    label: "Purchase",
                    borderColor: "#73BC4D",
                    borderWidth: "1",
                    backgroundColor: "#73BC4D",
                    pointHighlightStroke: "rgba(26,179,148,1)",
                    data: [<?php foreach ($pur_jan as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_feb as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_mar as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_apr as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_may as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_jun as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_jul as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_aug as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_sep as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_oct as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_nov as  $value){echo $value['purchase_id'];} ?>,<?php foreach ($pur_dec as  $value){echo $value['purchase_id'];} ?>
                    ]
                }
            ]
        },
        options: {
            responsive: true,
            tooltips: {
                mode: 'index',
                intersect: false
            },
            hover: {
                mode: 'nearest',
                intersect: true
            }

        }
    }); 
 var  dismodl=$('#is_modal_shown').val();
 var  stockqt=$('#stpcount').val();
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();

if(dd<10) {
    dd = '0'+dd
} 

if(mm<10) {
    mm = '0'+mm
} 
today = yyyy + '-' + mm + '-' + dd;

 var  expdate=$('#expdate').val();
 var is_modal_shown = 1;
 if (dismodl == '' && stockqt > 0 || dismodl == '' && new Date(expdate) < new Date(today)){
     $(window).load(function(){        
     $('#stockmodal').modal('show');
    });
   $.ajax({
    type: "POST",
    url: '<?php echo base_url('user/modaldisplay'); ?>',
    data: { is_modal_shown: 1 },
    success: function (response) {
        console.log('Modal display flag set.');
    },
    error: function (jqXHR, textStatus, errorThrown) {
        console.error('AJAX error:', textStatus, errorThrown);
        alert('An error occurred while setting modal display flag: ' + errorThrown);
    },
    complete: function(jqXHR, textStatus) {
        console.log('AJAX request finished with status: ' + textStatus);
    }
});


     }


</script>