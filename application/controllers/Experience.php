<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Experience extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load required models
        $this->load->model('Web_settings'); // for site info like email, phone, etc.
        $this->load->model('Experience_model'); // your experience model
         $this->load->model('Client_model');
    }

    // Display the Experience page
    public function index() {
        // Get site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();

        // Get all experiences (latest or all)
        $experience_all = $this->Experience_model->experience_list(); 
        $experiences = [];
        if (!empty($experience_all)) {
            foreach ($experience_all as $exp) {
                if (!isset($exp['status']) || $exp['status'] == 1) { // only active experiences
                    $experiences[] = $exp;
                }
            }
        }
        $data['experiences'] = $experiences;
         // Get all clients and filter active ones
    $clients_all = $this->Client_model->client_list();
    $clients = [];
    if ($clients_all) {
        foreach ($clients_all as $c) {
            if ($c['status'] == 1) {
                $clients[] = $c;
            }
        }
    }
    $data['clients'] = $clients;

        // Load the Experience page view
        $this->load->view('frontend/experience_page', $data);
    }

}
