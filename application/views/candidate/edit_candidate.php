<!-- Edit Candidate Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon"><i class="pe-7s-user"></i></div>

        <div class="header-title">
            <h1><?php echo display('edit_candidate'); ?></h1>
            <small><?php echo display('update_candidate_information'); ?></small>

            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home'); ?></a></li>
                <li><a href="#"><?php echo display('candidate'); ?></a></li>
                <li class="active"><?php echo display('edit_candidate'); ?></li>
            </ol>
        </div>
    </section>

    <section class="content">

        <!-- Alerts -->
        <?php if ($this->session->userdata('message')) { ?>
            <div class="alert alert-info alert-dismissable">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <?= $this->session->userdata('message'); ?>
            </div>
        <?php $this->session->unset_userdata('message'); } ?>

        <?php if ($this->session->userdata('error_message')) { ?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <?= $this->session->userdata('error_message'); ?>
            </div>
        <?php $this->session->unset_userdata('error_message'); } ?>

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                    <?php if ($this->permission1->method('manage_candidate','read')->access()) { ?>
                        <a href="<?= base_url('Ccandidate/manage_candidate'); ?>" class="btn btn-info m-b-5">
                            <i class="ti-align-justify"></i> Manage Candidate
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>

        <!-- Edit Form -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading"><h4>Edit Candidate</h4></div>

                    <?= form_open_multipart('Ccandidate/update', ['class' => 'form-vertical', 'id' => 'update_candidate']) ?>
                    <div class="panel-body">

                        <input type="hidden" name="id" value="<?= $candidate['id'] ?>">

                        <!-- Seeker ID -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Seeker ID</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="seeker_id" type="text"
                                       value="<?= isset($candidate['seeker_id']) ? $candidate['seeker_id'] : '' ?>" readonly>
                            </div>
                        </div>

                        <!-- Full Name -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Full Name *</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="full_name" type="text"
                                       value="<?= $candidate['full_name'] ?>" required>
                            </div>
                        </div>

                        <!-- Sex -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Sex *</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="sex" required>
                                    <option value="Male"   <?= (isset($candidate['sex']) && $candidate['sex']=='Male')?'selected':'' ?>>Male</option>
                                    <option value="Female" <?= (isset($candidate['sex']) && $candidate['sex']=='Female')?'selected':'' ?>>Female</option>
                                    <option value="Other"  <?= (isset($candidate['sex']) && $candidate['sex']=='Other')?'selected':'' ?>>Other</option>
                                </select>
                            </div>
                        </div>

                        <!-- DOB Ethiopian -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">DOB (Ethiopian)</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="dob_ethiopian" type="text"
                                       value="<?= isset($candidate['dob_ethiopian']) ? $candidate['dob_ethiopian'] : '' ?>">
                            </div>
                        </div>

                        <!-- Age -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Age *</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="age" type="number"
                                       value="<?= isset($candidate['age']) ? $candidate['age'] : '' ?>" required>
                            </div>
                        </div>

                        <!-- Total Family Size -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Total Family Size</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="total_family_size" type="number"
                                       value="<?= isset($candidate['total_family_size']) ? $candidate['total_family_size'] : '' ?>">
                            </div>
                        </div>

                        <!-- HH Male -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Household Male</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="hh_male" type="number"
                                       value="<?= isset($candidate['hh_male']) ? $candidate['hh_male'] : '' ?>">
                            </div>
                        </div>

                        <!-- HH Female -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Household Female</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="hh_female" type="number"
                                       value="<?= isset($candidate['hh_female']) ? $candidate['hh_female'] : '' ?>">
                            </div>
                        </div>

                        <!-- Household Type -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Household Type</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="household_type" type="text"
                                       value="<?= isset($candidate['household_type']) ? $candidate['household_type'] : '' ?>">
                            </div>
                        </div>

                        <!-- Disability Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Disability Status</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="disability_status">
                                    <option value="No"  <?= (isset($candidate['disability_status']) && $candidate['disability_status']=='No')?'selected':'' ?>>No</option>
                                    <option value="Yes" <?= (isset($candidate['disability_status']) && $candidate['disability_status']=='Yes')?'selected':'' ?>>Yes</option>
                                </select>
                            </div>
                        </div>

                        <!-- Disability Male -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Disabled Male</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="disability_male" type="number"
                                       value="<?= isset($candidate['disability_male']) ? $candidate['disability_male'] : '' ?>">
                            </div>
                        </div>

                        <!-- Disability Female -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Disabled Female</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="disability_female" type="number"
                                       value="<?= isset($candidate['disability_female']) ? $candidate['disability_female'] : '' ?>">
                            </div>
                        </div>

                        <!-- Phone -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Phone *</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="phone_number"
                                       value="<?= isset($candidate['phone_number']) ? $candidate['phone_number'] : '' ?>" required>
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Email</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="email" type="email"
                                       value="<?= isset($candidate['email']) ? $candidate['email'] : '' ?>">
                            </div>
                        </div>

                        <!-- Location -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Location *</label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="location" required>
                                    <?php foreach ($zones as $z): ?>
                                        <option value="<?= $z['id']; ?>"
                                            <?= (isset($candidate['location_id']) && $candidate['location_id'] == $z['id']) ? 'selected' : '' ?>>
                                            <?= $z['zone_name']; ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- Woreda -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Woreda</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="woreda" type="text"
                                       value="<?= isset($candidate['woreda']) ? $candidate['woreda'] : '' ?>">
                            </div>
                        </div>

                        <!-- Tabia -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Tabia</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="tabia" type="text"
                                       value="<?= isset($candidate['tabia']) ? $candidate['tabia'] : '' ?>">
                            </div>
                        </div>

                        <!-- Education Level -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Education Level *</label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="education_level" required>
                                    <?php foreach ($educational_levels as $lvl): ?>
                                        <option value="<?= $lvl['id']; ?>"
                                            <?= (isset($candidate['education_level_id']) && $candidate['education_level_id'] == $lvl['id']) ? 'selected' : '' ?>>
                                            <?= $lvl['level']; ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- Field of Study -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Field of Study *</label>
                            <div class="col-sm-6">
                                <select class="form-control select2" name="field_of_study" required>
                                    <?php foreach ($fields_of_study as $fs): ?>
                                        <option value="<?= $fs['id']; ?>"
                                            <?= (isset($candidate['field_of_study_id']) && $candidate['field_of_study_id'] == $fs['id']) ? 'selected' : '' ?>>
                                            <?= $fs['field']; ?>
                                        </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <!-- GPA -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">GPA *</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="gpa" type="number" step="0.01"
                                       value="<?= isset($candidate['gpa']) ? $candidate['gpa'] : '' ?>" required>
                            </div>
                        </div>

                        <!-- Qualification / Skills -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Qualification / Skills</label>
                            <div class="col-sm-6">
                                <textarea class="form-control" name="qualification_skills" rows="3"><?= isset($candidate['qualification_skills']) ? $candidate['qualification_skills'] : '' ?></textarea>
                            </div>
                        </div>

                        <!-- Graduated Year -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Graduated Year</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="graduated_year" type="text"
                                       value="<?= isset($candidate['graduated_year']) ? $candidate['graduated_year'] : '' ?>">
                            </div>
                        </div>

                        <!-- Experience -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Experience *</label>
                            <div class="col-sm-6">
                                <input class="form-control" name="experience" type="number"
                                       value="<?= isset($candidate['experience']) ? $candidate['experience'] : '' ?>" required>
                            </div>
                        </div>

                        <!-- Status -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Status *</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="status" required>
                                    <option value="0" <?= (isset($candidate['status']) && $candidate['status']==0)?'selected':'' ?>>Job Seeker</option>
                                    <option value="1" <?= (isset($candidate['status']) && $candidate['status']==1)?'selected':'' ?>>Fetched</option>
                                    <option value="2" <?= (isset($candidate['status']) && $candidate['status']==2)?'selected':'' ?>>Applied</option>
                                    <option value="3" <?= (isset($candidate['status']) && $candidate['status']==3)?'selected':'' ?>>Shortlisted</option>
                                    <option value="4" <?= (isset($candidate['status']) && $candidate['status']==4)?'selected':'' ?>>Interviewed</option>
                                    <option value="5" <?= (isset($candidate['status']) && $candidate['status']==5)?'selected':'' ?>>Selected</option>
                                    <option value="6" <?= (isset($candidate['status']) && $candidate['status']==6)?'selected':'' ?>>Rejected</option>
                                    <option value="7" <?= (isset($candidate['status']) && $candidate['status']==7)?'selected':'' ?>>Hired</option>
                                </select>
                            </div>
                        </div>

                        <!-- Resume -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Resume</label>
                            <div class="col-sm-6">
                                <?php if (!empty($candidate['resume'])) { ?>
                                    <a href="<?= base_url('uploads/candidate_resumes/' . $candidate['resume']); ?>" download class="btn btn-success btn-sm">Download Current Resume</a>
                                    <br><br>
                                <?php } ?>
                                <input class="form-control" name="resume" type="file" accept="application/pdf">
                            </div>
                        </div>

                        <!-- Created At (Read-only) -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Created At</label>
                            <div class="col-sm-6">
                                <input class="form-control" type="text" value="<?= isset($candidate['created_at']) ? $candidate['created_at'] : '' ?>" readonly>
                            </div>
                        </div>

                        <!-- Submit -->
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label"></label>
                            <div class="col-sm-6">
                                <input type="submit" class="btn btn-primary" value="Update Candidate">
                            </div>
                        </div>

                    </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>

    </section>
</div>
<!-- Edit Candidate End -->
