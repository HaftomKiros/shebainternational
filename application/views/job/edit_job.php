<!-- Edit Job Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-portfolio"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('job') ?></h1>
            <small><?php echo display('edit_job') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('job') ?></a></li>
                <li class="active"><?php echo display('edit_job') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alerts -->
        <?php if($this->session->userdata('message')) { ?>
            <div class="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <?php echo $this->session->userdata('message'); ?>
            </div>
            <?php $this->session->unset_userdata('message'); ?>
        <?php } ?>

        <?php if($this->session->userdata('error_message')) { ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <?php echo $this->session->userdata('error_message'); ?>
            </div>
            <?php $this->session->unset_userdata('error_message'); ?>
        <?php } ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <a href="<?php echo base_url('Cjob/manage_job') ?>" class="btn btn-info m-b-5 m-r-2">
                        <i class="ti-align-justify"></i> <?php echo display('manage_job') ?>
                    </a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('edit_job') ?></h4>
                        </div>
                    </div>

                    <?php echo form_open_multipart('Cjob/update_job/'.$job['id'], ['class'=>'form-vertical']); ?>
                    <div class="panel-body">

                        <!-- COMPANY -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Company/Employer <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="company_id" required>
                                    <option value="">Select Company</option>
                                    <?php foreach($companies as $company): ?>
                                        <option value="<?= $company['id'] ?>"
                                            <?= ($company['id'] == $job['company_id']) ? 'selected' : '' ?>>
                                            <?= $company['company_name'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- JOB TITLE -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Job Title <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input class="form-control" name="job_title" required
                                       value="<?= $job['job_title'] ?>">
                            </div>
                        </div>

                        <!-- SEX -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Sex <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <select class="form-control" name="sex" required>
                                    <option value="">Select</option>
                                    <option value="Both"   <?= ($job['sex']=='Both')?'selected':'' ?>>Both</option>
                                    <option value="Male"   <?= ($job['sex']=='Male')?'selected':'' ?>>Male</option>
                                    <option value="Female" <?= ($job['sex']=='Female')?'selected':'' ?>>Female</option>
                                    <option value="Other"  <?= ($job['sex']=='Other')?'selected':'' ?>>Other</option>
                                </select>
                            </div>
                        </div>

                        <!-- AGE -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Age Requirement <span style="color:red">*</span></label>

                            <div class="col-sm-3">
                                <select name="age_operator" class="form-control" required>
                                    <?php 
                                    $ops = ['>=','<=','>','<','='];
                                    foreach($ops as $op): ?>
                                        <option value="<?= $op ?>" 
                                            <?= ($job['age_operator']==$op)?'selected':'' ?>><?= $op ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="col-sm-3">
                                <input class="form-control" name="age_value" type="number"
                                       required value="<?= $job['age_value'] ?>">
                            </div>
                        </div>

                        <!-- LOCATION (MULTIPLE) -->
                        <?php $selected_locations = json_decode($job['location'], true); ?>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Location <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="location[]" multiple required>
                                    <?php foreach ($zones as $z): ?>
                                        <option value="<?= $z['id'] ?>"
                                            <?= (in_array($z['id'], $selected_locations))?'selected':'' ?>>
                                            <?= $z['zone_name'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- EDUCATION -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Education Level <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="education_level" required>
                                    <option value="">Select Education Level</option>
                                    <?php foreach ($educational_levels as $level): ?>
                                        <option value="<?= $level['id'] ?>"
                                            <?= ($level['id']==$job['education_level'])?'selected':'' ?>>
                                            <?= $level['level'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- FIELD OF STUDY -->
                        <?php $selected_fields = json_decode($job['field_of_study'], true); ?>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Field of Study <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="field_of_study[]" multiple required>
                                    <?php foreach ($fields_of_study as $field): ?>
                                        <option value="<?= $field['id'] ?>"
                                            <?= (in_array($field['id'], $selected_fields))?'selected':'' ?>>
                                            <?= $field['field'] ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- GPA -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">GPA <span style="color:red">*</span></label>

                            <div class="col-sm-3">
                                <select name="gpa_operator" class="form-control" required>
                                    <?php foreach($ops as $op): ?>
                                        <option value="<?= $op ?>"
                                            <?= ($job['gpa_operator']==$op)?'selected':'' ?>><?= $op ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="col-sm-3">
                                <input class="form-control" name="gpa_value" type="number" step="0.01"
                                       required value="<?= $job['gpa_value'] ?>">
                            </div>
                        </div>

                        <!-- EXPERIENCE -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Experience (Years) <span style="color:red">*</span></label>

                            <div class="col-sm-3">
                                <select name="experience_operator" class="form-control" required>
                                    <?php foreach($ops as $op): ?>
                                        <option value="<?= $op ?>" 
                                            <?= ($job['experience_operator']==$op)?'selected':'' ?>><?= $op ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>

                            <div class="col-sm-3">
                                <input class="form-control" name="experience_value" type="number"
                                       required value="<?= $job['experience_value'] ?>">
                            </div>
                        </div>

                        <!-- START DATE -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Job Start Date <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input type="date" name="job_start_date" class="form-control"
                                       value="<?= $job['job_start_date'] ?>" required>
                            </div>
                        </div>

                        <!-- END DATE -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Job End Date <span style="color:red">*</span></label>
                            <div class="col-sm-6">
                                <input type="date" name="job_end_date" class="form-control"
                                       value="<?= $job['job_end_date'] ?>" required>
                            </div>
                        </div>

                        <!-- SUBMIT -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary">Update Job</button>
                            </div>
                        </div>

                    </div>
                    <?php echo form_close(); ?>

                </div>
            </div>
        </div>

    </section>
</div>
<!-- Edit Job End -->
