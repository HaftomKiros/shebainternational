<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Service extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load required models
        $this->load->model('Services_model'); // Your services model
        $this->load->model('Web_settings');
         $this->load->model('WhyChooseUs_model');
    }

    // Display the Services page
    public function index() {
        // Get site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();

        // Get all active services
        $services_all = $this->Services_model->service_list(); // adjust method if needed
        $services = [];
        if (!empty($services_all)) {
            foreach ($services_all as $service) {
                if ($service['status'] == 1) {
                    $services[] = $service;
                }
            }
        }
        $data['services'] = $services;

        // Optional: get categories or features if your services have them
        // $data['categories'] = $this->Services_model->get_categories();

        // Load the Services page view
        $this->load->view('frontend/services_page', $data);
    }
     public function details($id) {
        // Site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();
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
     $data['features']=$features;

        // Get current service
        $data['service'] = $this->Services_model->get_service_by_id($id);

        if (!$data['service']) {
            show_404(); // service not found
        }

        // Get all other services except current
        $data['other_services'] = $this->Services_model->get_other_services($id);

        // Load view
        $this->load->view('frontend/service_detail', $data);
    }
   public function ajax_search() {
    header('Content-Type: application/json'); // Add this
    $query = $this->input->get('q');
    $results = [];

    if (!empty($query)) {
        $results = $this->Services_model->search_services($query);
    }

    echo json_encode($results);
}



   
}
