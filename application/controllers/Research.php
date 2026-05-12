<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Research extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load required models
        $this->load->model('Research_model');
        $this->load->model('Web_settings');
    }

    // Display the Research page
    public function index() {
        // Get site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();

        // Get research items (latest 6)
        $research_all = $this->Research_model->research_list(100, 0); // limit 6, start 0
        $research = [];
        if (!empty($research_all)) {
            foreach ($research_all as $r) {
                if (!isset($r['status']) || $r['status'] == 1) { // only active items
                    $research[] = $r;
                }
            }
        }
        $data['research'] = $research;

        // Load the Research page view
        $this->load->view('frontend/research_page', $data);
    }
    

   // Research detail page
    public function details($id) {
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();
        $data['research'] = $this->Research_model->get_research_by_id($id);
        $data['other_research'] = $this->Research_model->get_other_research($id);

        if (empty($data['research'])) {
            show_404();
        }

        $this->load->view('frontend/research_detail_page', $data);
    }

    // AJAX search for research
    public function ajax_search() {
        $query = $this->input->get('q', true);

        if ($query) {
            $results = $this->Research_model->search_research($query);
            echo json_encode($results);
        } else {
            echo json_encode([]);
        }
    }


    
}
