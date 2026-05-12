<?php
    $CI =& get_instance();
    $CI->load->model('Web_settings');
    $CI->load->model('Reports');
     $CI->load->model('Feedback_model');
    $CI->load->model('Users');
    $Web_settings = $CI->Web_settings->retrieve_setting_editdata();
    $users = $CI->Users->profile_edit_data();
    $out_of_stock = $CI->Reports->out_of_stock_count();
    $out_of_date  = $CI->Reports->out_of_date_count();
    // get 
     $unread_message  = $CI->Feedback_model->get_unread_count();
?>
<!-- Admin header end -->
<style type="text/css">
   .navbar .btn-success{
        margin: 13px 2px;
   }
</style>
<header class="main-header">
    <a href="<?php echo base_url()?>" class="logo"> <!-- Logo -->
        <span class="logo-mini">
            <!--<b>A</b>BD-->
            <img src="<?php if (isset($Web_settings[0]['favicon'])) {
               echo $Web_settings[0]['favicon']; }?>" alt="">
        </span>
        
          Sheba International, Inc.
       
    </a>
    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top text-center">

        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <!-- Sidebar toggle button-->
            <span class="sr-only"><?php echo display('toggle_navigation')?></span>

            <span class="pe-7s-keypad"></span>
        </a>

        <?php
          $urcolp = '0';
          if($this->uri->segment(2) =="gui_pos" ){
            $urcolp = "gui_pos";
          }
          if($this->uri->segment(2) =="pos_invoice" ){
            $urcolp = "pos_invoice";
          }

           if($this->uri->segment(2) != $urcolp ){
          if($this->permission1->method('manage_job','read')->access()){ ?>
           <a href="<?php echo base_url('Cbanners/manage_banners')?>" class="btn btn-success btn-outline" style=""><i class="fa fa-image"></i> Manage Banners</a>
         <?php } ?>

        <?php
        if($this->permission1->method('manage_candidate','read')->access()){ ?>
           <a href="<?php echo base_url('Cservices/manage_services')?>" class="btn btn-success btn-outline" style=""><i class="fa fa-cogs"></i> Manage Services</a>
        <?php } ?>

        <?php
        if($this->permission1->method('manage_employer','read')->access()){ ?>
          <a href="<?php echo base_url('CTeam/manage_members')?>" class="btn btn-success btn-outline" style=""><i class="fa fa-users" aria-hidden="true"></i> Manage Team Members</a>
        <?php } ?>

       

        <?php
        if($this->permission1->method('manage_educational_level','read')->access()){ ?>
          <a href="<?php echo base_url('CClient/manage_clients')?>" class="btn btn-success btn-outline" style=""><i class="fa fa-id-badge"></i> Manage Clients</a>
        <?php }} ?>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
          <li class="dropdown notifications-menu">
    <a href="<?php echo base_url('feedback') ?>" >
        <i class="pe-7s-chat" title="<?php echo display('feedback') ?>"></i>
        <span class="label label-danger"><?php echo $unread_message?></span>
    </a>
</li>


                <!-- settings -->
                <li class="dropdown dropdown-user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="pe-7s-settings"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="<?php echo base_url('Admin_dashboard/edit_profile')?>"><i class="pe-7s-users"></i><?php echo display('user_profile') ?></a></li>
                        <li><a href="<?php echo base_url('Admin_dashboard/change_password_form')?>"><i class="pe-7s-settings"></i><?php echo display('change_password') ?></a></li>
                        <li><a href="<?php echo base_url('Admin_dashboard/logout')?>"><i class="pe-7s-key"></i><?php echo display('logout') ?></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>

<aside class="main-sidebar">
    <!-- sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel text-center">
            <div class="image">
                <img src="<?php echo $users[0]['logo']?>" class="img-circle" alt="User Image">
            </div>
            <div class="info">
                <p><?php echo $this->session->userdata('user_name')?></p>
                <a href="#"><i class="fa fa-circle text-success"></i> <?php echo display('online') ?></a>
            </div>
        </div>
        <!-- sidebar menu -->
        <ul class="sidebar-menu">

            <li class="<?php if ($this->uri->segment('1') == ("")) { echo "active";}else{ echo " ";}?>">
                <a href="<?php echo base_url()?>"><i class="ti-dashboard"></i> <span><?php echo display('dashboard') ?></span>
                    <span class="pull-right-container">
                        <span class="label label-success pull-right"></span>
                    </span>
                </a>
            </li>
             <!-- slider-->
              <?php
             if($this->permission1->module('add_banner')->access() || $this->permission1->module('manage_banners')->access()) { ?>
                <li class="treeview <?php if ($this->uri->segment('1') == ("Cbanners")) { echo "active";}else{ echo " ";}?>">
                    <a href="#">
                        <i class="fa fa-image"></i><span><?php echo display('banners') ?></span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <?php
                          if($this->permission1->method('add_banner','create')->access()) { ?>
                            <li  class="treeview <?php if ($this->uri->segment('1') == ("Cbanners") && $this->uri->segment('2') == ("add_banner")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Cbanners/add_banner')?>"><?php echo display('add_banner') ?></a></li>
                        <?php } ?>

                        <?php
                          if($this->permission1->method('manage_banners','read')->access() || $this->permission1->method('manage_banners','update')->access() || $this->permission1->method('manage_banners','delete')->access()) { ?>
                            <li class="treeview <?php if ($this->uri->segment('2') == ("manage_banners")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Cbanners/manage_banners')?>"><?php echo display('manage_banners') ?></a></li>
                        <?php } ?>

                        
                    </ul>
                </li>
            <?php } ?>

             
             <!-- end of slider-->

            <!-- about us-->
             <?php
             if($this->permission1->module('manage_about_us')->access()) { ?>
                <li class="treeview <?php if ($this->uri->segment('1') == ("Cabout_us")) { echo "active";}else{ echo " ";}?>">
                    <a href="#">
                        <i class="fa fa-info-circle"></i><span><?php echo display('about_us') ?></span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">

                        <?php
                          if($this->permission1->method('manage_about_us','read')->access() || $this->permission1->method('manage_about_us','update')->access() || $this->permission1->method('manage_about_us','delete')->access()) { ?>
                            <li class="treeview <?php if ($this->uri->segment('2') == ("manage_about_us")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Cabout_us/manage_about_us')?>"><?php echo display('manage_about_us') ?></a></li>
                        <?php } ?>

                        
                    </ul>
                </li>
            <?php } ?>

             <!-- end of about us-->
              
              <!-- our services -->
               <?php
             if($this->permission1->module('add_services')->access() || $this->permission1->module('manage_services')->access()) { ?>
                <li class="treeview <?php if ($this->uri->segment('1') == ("Cservices")) { echo "active";}else{ echo " ";}?>">
                    <a href="#">
                        <i class="fa fa-cogs"></i><span><?php echo display('services') ?></span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <?php
                          if($this->permission1->method('add_services','create')->access()) { ?>
                            <li  class="treeview <?php if ($this->uri->segment('1') == ("Cservices") && $this->uri->segment('2') == ("add_services")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Cservices/add_services')?>"><?php echo display('add_services') ?></a></li>
                        <?php } ?>

                        <?php
                          if($this->permission1->method('manage_services','read')->access() || $this->permission1->method('manage_services','update')->access() || $this->permission1->method('manage_services','delete')->access()) { ?>
                            <li class="treeview <?php if ($this->uri->segment('2') == ("manage_services")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Cservices/manage_services')?>"><?php echo display('manage_services') ?></a></li>
                        <?php } ?>

                        
                    </ul>
                </li>
            <?php } ?>

               <!-- end of our services-->

               <!-- why choose us-->
                <?php
if($this->permission1->module('add_why_choose_us')->access() || $this->permission1->module('manage_why_choose_us')->access()) { ?>
    <li class="treeview <?php if ($this->uri->segment(1) == "CWhyChooseUs") { echo "active"; } else { echo ""; } ?>">
        <a href="#">
            <i class="fa fa-star"></i>
            <span><?php echo display('why_choose_us'); ?></span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <?php if($this->permission1->method('add_why_choose_us','create')->access()) { ?>
                <li class="<?php if ($this->uri->segment(1) == "CWhyChooseUs" && $this->uri->segment(2) == "add_feature") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CWhyChooseUs/add_feature'); ?>"><?php echo display('add_feature'); ?></a>
                </li>
            <?php } ?>

            <?php
            if($this->permission1->method('manage_why_choose_us','read')->access() || 
               $this->permission1->method('manage_why_choose_us','update')->access() || 
               $this->permission1->method('manage_why_choose_us','delete')->access()) { ?>
                <li class="<?php if ($this->uri->segment(2) == "manage_features") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CWhyChooseUs/manage_features'); ?>"><?php echo display('manage_features'); ?></a>
                </li>
            <?php } ?>
        </ul>
    </li>
<?php } ?>


                <!-- why choose us -->
           <!-- team members-->
            <?php
if($this->permission1->module('add_team_member')->access() || $this->permission1->module('manage_team_member')->access()) { ?>
    <li class="treeview <?php if ($this->uri->segment(1) == "CTeam") { echo "active"; } else { echo ""; } ?>">
        <a href="#">
            <i class="fa fa-users"></i>
            <span><?php echo display('team_members'); ?></span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <?php if($this->permission1->method('add_team_member','create')->access()) { ?>
                <li class="<?php if ($this->uri->segment(1) == "CTeam" && $this->uri->segment(2) == "add_member") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CTeam/add_member'); ?>"><?php echo display('add_member'); ?></a>
                </li>
            <?php } ?>

            <?php
            if($this->permission1->method('manage_team_member','read')->access() || 
               $this->permission1->method('manage_team_member','update')->access() || 
               $this->permission1->method('manage_team_member','delete')->access()) { ?>
                <li class="<?php if ($this->uri->segment(2) == "manage_members") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CTeam/manage_members'); ?>"><?php echo display('manage_members'); ?></a>
                </li>
            <?php } ?>
        </ul>
    </li>
<?php } ?>


           <!-- team members-->
            <!-- Research and Evaluation -->
<?php
if($this->permission1->module('add_research')->access() || $this->permission1->module('manage_research')->access()) { ?>
    <li class="treeview <?php if ($this->uri->segment(1) == "CResearch") { echo "active"; } else { echo ""; } ?>">
        <a href="#">
            <i class="fa fa-flask"></i>
            <span><?php echo display('research_and_evaluation'); ?></span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <?php if($this->permission1->method('add_research','create')->access()) { ?>
                <li class="<?php if ($this->uri->segment(1) == "CResearch" && $this->uri->segment(2) == "add_research") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CResearch/add_research'); ?>"><?php echo display('add_research'); ?></a>
                </li>
            <?php } ?>

            <?php
            if($this->permission1->method('manage_research','read')->access() || 
               $this->permission1->method('manage_research','update')->access() || 
               $this->permission1->method('manage_research','delete')->access()) { ?>
                <li class="<?php if ($this->uri->segment(2) == "manage_research") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CResearch/manage_research'); ?>"><?php echo display('manage_research'); ?></a>
                </li>
            <?php } ?>
        </ul>
    </li>
<?php } ?>
<!-- End Research and Evaluation -->
 <!-- Experience -->
<?php
if($this->permission1->module('add_experience')->access() || $this->permission1->module('manage_experience')->access()) { ?>
    <li class="treeview <?php if ($this->uri->segment(1) == "CExperience") { echo "active"; } else { echo ""; } ?>">
        <a href="#">
            <i class="fa fa-briefcase"></i>
            <span><?php echo display('experience'); ?></span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <?php if($this->permission1->method('add_experience','create')->access()) { ?>
                <li class="<?php if ($this->uri->segment(1) == "CExperience" && $this->uri->segment(2) == "add_experience") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CExperience/add_experience'); ?>"><?php echo display('add_experience'); ?></a>
                </li>
            <?php } ?>

            <?php
            if($this->permission1->method('manage_experience','read')->access() || 
               $this->permission1->method('manage_experience','update')->access() || 
               $this->permission1->method('manage_experience','delete')->access()) { ?>
                <li class="<?php if ($this->uri->segment(2) == "manage_experience") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CExperience/manage_experience'); ?>"><?php echo display('manage_experience'); ?></a>
                </li>
            <?php } ?>
        </ul>
    </li>
<?php } ?>
<!-- End Experience -->


<!-- Clients -->
<?php
if($this->permission1->module('add_client')->access() || $this->permission1->module('manage_client')->access()) { ?>
    <li class="treeview <?php if ($this->uri->segment(1) == "CClient") { echo "active"; } else { echo ""; } ?>">
  <a href="#">
    <i class="fa fa-id-badge"></i>
    <span><?php echo display('client'); ?></span>
    <span class="pull-right-container">
        <i class="fa fa-angle-left pull-right"></i>
    </span>
</a>



        <ul class="treeview-menu">
            <?php if($this->permission1->method('add_client','create')->access()) { ?>
                <li class="<?php if ($this->uri->segment(1) == "CClient" && $this->uri->segment(2) == "add_client") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CClient/add_client'); ?>"><?php echo display('add_client'); ?></a>
                </li>
            <?php } ?>

            <?php
            if($this->permission1->method('manage_client','read')->access() || 
               $this->permission1->method('manage_client','update')->access() || 
               $this->permission1->method('manage_client','delete')->access()) { ?>
                <li class="<?php if ($this->uri->segment(2) == "manage_client") { echo "active"; } ?>">
                    <a href="<?php echo base_url('CClient/manage_clients'); ?>"><?php echo display('manage_clients'); ?></a>
                </li>
            <?php } ?>
        </ul>
    </li>
<?php } ?>
<!-- clients -->

            <!-- Software Settings menu start -->
            <?php
            if($this->permission1->module('manage_company')->access() || $this->permission1->module('add_user')->access() || $this->permission1->module('manage_users')->access() || $this->permission1->module('language')->access() || $this->permission1->module('setting')->access() || $this->permission1->module('user_assign_role')->access() || $this->permission1->module('permission')->access() || $this->permission1->module('add_role')->access() || $this->permission1->module('role_list')->access() || $this->permission1->method('configure_sms','create')->access() || $this->permission1->method('configure_sms','update')->access() || $this->permission1->module('data_setting')->access() || $this->permission1->module('synchronize')->access() || $this->permission1->module('backup_and_restore')->access()){ ?>

                 <li class="treeview <?php if ($this->uri->segment('1') == ("Company_setup") || $this->uri->segment('1') == ("User") || $this->uri->segment('1') == ("Cweb_setting") || $this->uri->segment('1') == ("Language")|| $this->uri->segment('1') == ("Currency") || $this->uri->segment('1') == ("Permission") || $this->uri->segment('1') == ("Csms") || $this->uri->segment('1') == ("Backup_restore")) { echo "active";}else{ echo " ";}?>">
                <a href="#">
                    <i class="ti-settings"></i><span><?php echo display('settings') ?></span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                               <li class="treeview <?php if ($this->uri->segment('1') == ("Company_setup") || $this->uri->segment('1') == ("User") || $this->uri->segment('1') == ("Cweb_setting") || $this->uri->segment('1') == ("Language")|| $this->uri->segment('1') == ("Currency") ) { echo "active";}else{ echo " ";}?>">
                <a href="#">
                    <span><?php echo display('web_settings') ?></span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">

                   

                   
                   
                    <?php
                    if($this->permission1->method('soft_setting','read')->access() || $this->permission1->method('soft_setting','update')->access()){ ?>
                        <li  class="treeview <?php  if ($this->uri->segment('1') == ("Cweb_setting") && $this->uri->segment('2') == ("")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Cweb_setting')?>"><?php echo display('setting') ?> </a></li>
                    <?php } ?>


                </ul>
            </li>

            <!-- Synchronizer setting start -->
            <?php
            if($this->permission1->module('data_setting')->access() || $this->permission1->module('synchronize')->access() || $this->permission1->module('backup_and_restore')->access()){ ?>
                <li class="treeview <?php if ($this->uri->segment('2') == ("form") || $this->uri->segment('2') == ("synchronize") || $this->uri->segment('1') == ("Backup_restore")) { echo "active";}else{ echo " ";}?>">
                <a href="#">
                    <span><?php echo display('data_synchronizer') ?></span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php
                        $localhost=false;
                        if (in_array($_SERVER['REMOTE_ADDR'], array('127.0.0.1', '::1', 'localhost'))) {
                    ?>
                    <?php
                        if($this->permission1->method('data_setting','read')->access() || $this->permission1->method('data_setting','update')->access()){ ?>
                           <li  class="treeview <?php  if ($this->uri->segment('1') == ("data_synchronizer") && $this->uri->segment('2') == ("form")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('data_synchronizer/form')?>"><?php echo display('setting') ?></a></li>
                        <?php } ?>
                    <?php } ?>


                    <?php
                    if($this->permission1->method('synchronize','read')->access() || $this->permission1->method('synchronize','update')->access()){ ?>
                    <!--  <li><a href="<?php echo base_url('data_synchronizer/synchronize')?>"><?php echo display('synchronize') ?></a></li>-->
                    <!--<?php } ?>-->

                    <?php
                    if($this->permission1->method('backup_and_restore','read')->access() || $this->permission1->method('backup_and_restore','update')->access() || $this->permission1->method('backup_and_restore','delete')->access()){ ?>
                        <li class="treeview <?php  if ($this->uri->segment('1') == ("Backup_restore") && $this->uri->segment('2') == ("")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Backup_restore')?>"><?php echo display('backup') ?></a></li>
                    <?php } ?>
                      <li class="treeview <?php  if ($this->uri->segment('1') == ("Backup_restore") && $this->uri->segment('2') == ("import")){
                        echo "active";
                    } else {
                        echo " ";
                    }?>"><a href="<?php echo base_url('Backup_restore/import_form') ?>"><?php echo display('import') ?></a></li>

                </ul>
            </li>
            <?php } ?>
          
            </li>
 
            <?php } ?>
            <!-- Software Settings menu end -->

        
        
        </ul>
    </div> <!-- /.sidebar -->
</aside>