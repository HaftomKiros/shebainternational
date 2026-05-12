<!-- Add new candidate start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-portfolio"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('job') ?></h1>
            <small><?php echo display('add_job') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('job') ?></a></li>
                <li class="active"><?php echo display('add_job') ?></li>
            </ol>
        </div>
    </section>

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

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <?php if($this->permission1->method('manage_job','read')->access()) { ?>
                        <a href="<?php echo base_url('Cjob/manage_job')?>" class="btn btn-info m-b-5 m-r-2">
                            <i class="ti-align-justify"></i> <?php echo display('manage_job') ?>
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>

        <?php if($this->permission1->method('add_job','create')->access()) { ?>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('add_job') ?></h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('Cjob/insert_job', ['class' => 'form-vertical', 'id' => 'insert_job']) ?>
<div class="panel-body">

<!-- =========================
        COMPANY
========================= -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Company/Employer <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select class="form-control select2" name="company_id" required>
            <option value="">Select Company</option>
            <?php foreach ($companies as $company): ?>
                <option value="<?= $company['id']; ?>">
                    <?= $company['company_name']; ?>
                </option>
            <?php endforeach; ?>
        </select>
    </div>
</div>

<!-- Job Title -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Job Title <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input class="form-control" name="job_title" type="text" required>
    </div>
</div>

<!-- Number of Positions -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Number of Positions <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input class="form-control" name="positions" type="number" min="1" required>
    </div>
</div>

<!-- Sex -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Sex <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select class="form-control" name="sex" required>
            <option value="">Select</option>
            <option value="Both">Both</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>
    </div>
</div>

<!-- Age Requirement -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Age Requirement <span style="color:red">*</span></label>

    <div class="col-sm-3">
        <select name="age_operator" class="form-control" required>
            <option value=">=">>=</option>
            <option value="<="><=</option>
            <option value=">">></option>
            <option value="<"><</option>
            <option value="=">=</option>
        </select>
    </div>

    <div class="col-sm-3">
        <input class="form-control" name="age_value" type="number" required>
    </div>
</div>

<!-- Location -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Location <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select class="form-control select2" name="location[]" multiple="multiple" required>
            <?php foreach ($zones as $zone): ?>
                <option value="<?= $zone['id']; ?>"><?= $zone['zone_name']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
</div>

<!-- Education Level -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Education Level <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select class="form-control select2" name="education_level" required>
            <option value="">Select Education Level</option>
            <?php foreach ($educational_levels as $level): ?>
                <option value="<?= $level['id']; ?>"><?= $level['level']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
</div>

<!-- Field of Study -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Field of Study <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select class="form-control select2" name="field_of_study[]" multiple="multiple" required>
            <?php foreach ($fields_of_study as $field): ?>
                <option value="<?= $field['id']; ?>"><?= $field['field']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
</div>

<!-- GPA -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">GPA <span style="color:red">*</span></label>

    <div class="col-sm-3">
        <select name="gpa_operator" class="form-control" required>
            <option value=">=">>=</option>
            <option value="<="><=</option>
            <option value=">">></option>
            <option value="<"><</option>
            <option value="=">=</option>
        </select>
    </div>

    <div class="col-sm-3">
        <input class="form-control" name="gpa_value" type="number" step="0.01" required>
    </div>
</div>

<!-- Experience -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Experience (Years) <span style="color:red">*</span></label>

    <div class="col-sm-3">
        <select name="experience_operator" class="form-control" required>
            <option value=">=">>=</option>
            <option value="<="><=</option>
            <option value=">">></option>
            <option value="<"><</option>
            <option value="=">=</option>
        </select>
    </div>

    <div class="col-sm-3">
        <input class="form-control" name="experience_value" type="number" required>
    </div>
</div>

<!-- =========================
   NEW FIELDS YOU REQUESTED
========================= -->

<!-- Skills (comma-separated) -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Skills (comma-separated) <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input type="text" name="skills" class="form-control" placeholder="e.g. Communication, Java, Excel" required>
    </div>
</div>

<!-- Employment Type -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Employment Type <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select name="employment_type" class="form-control" required>
            <option value="">Select</option>
            <option value="Full-time">Full-time</option>
            <option value="Part-time">Part-time</option>
            <option value="Contract">Contract</option>
            <option value="Internship">Internship</option>
            <option value="Casual Labor">Casual Labor</option>
        </select>
    </div>
</div>

<!-- Employment Period -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Employment Period</label>
    <div class="col-sm-6">
        <input type="text" name="employment_period" class="form-control" placeholder="e.g. 6 months, 1 year, indefinite">
    </div>
</div>

<!-- Salary Range -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Salary Range</label>
    <div class="col-sm-6">
        <input type="text" name="salary" class="form-control" placeholder="e.g. 5,000 - 8,000 ETB">
    </div>
</div>

<!-- Work Location -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Work Location <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <select name="work_location" class="form-control" required>
            <option value="">Select</option>
            <option value="Office">Office</option>
            <option value="Site">Site</option>
            <option value="Remote">Remote</option>
            <option value="Hybrid">Hybrid</option>
        </select>
    </div>
</div>

<!-- Special Skill / Software -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Special Skill / Software</label>
    <div class="col-sm-6">
        <input type="text" name="special_skill" class="form-control" placeholder="AutoCAD, Photoshop, SPSS, etc">
    </div>
</div>

<!-- Job Start Date -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Post Date <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input type="date" name="job_start_date" class="form-control" required>
    </div>
</div>

<!-- Job End Date -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label">Application deadline <span style="color:red">*</span></label>
    <div class="col-sm-6">
        <input type="date" name="job_end_date" class="form-control" required>
    </div>
</div>

<!-- Submit Button -->
<div class="form-group row">
    <label class="col-sm-3 col-form-label"></label>
    <div class="col-sm-6">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</div>

</div>
<?php echo form_close() ?>

                </div>
            </div>
        </div>

        <?php } else { ?>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4><?php echo display('You do not have permission to access. Please contact administrator.');?></h4>
                    </div>
                </div>
            </div>
        </div>

        <?php } ?>
    </section>
</div>
<!-- Add new candidate end -->
