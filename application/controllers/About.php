<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load required models
        $this->load->model('About_model');
        $this->load->model('Web_settings');
        $this->load->model('Team_model');
        $this->load->model('WhyChooseUs_model');
    }

    // Display the About page
    public function index() {
        // Get site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();

        // Get About info (latest record)
        $about_all = $this->About_model->about_list(1, 0); // limit 1, start 0
        $data['about'] = $about_all;

        // Get all team members (only active ones)
        $team_all = $this->Team_model->member_list();
        $team_members = [];
        if (!empty($team_all)) {
            foreach ($team_all as $member) {
                if ($member['status'] == 1) {
                    $team_members[] = $member;
                }
            }
        }
        // Get all Why Choose Us features and filter active ones
    $features_all = $this->WhyChooseUs_model->feature_list();
    $features = [];
    if ($features_all) {
        foreach ($features_all as $f) {
            if ($f['status'] == 1) {
                $features[] = $f;
            }
        }
    }
        $data['team_members'] = $team_members;
        $data['features'] = $features;

        // Load the About page view with settings, about info, and team members
        $this->load->view('frontend/about_page', $data);
    }
}
