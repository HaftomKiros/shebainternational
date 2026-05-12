<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function index() {
        $data['settings'] = $this->Settings_model->get_settings();
        $data['banners'] = $this->Banner_model->get_all();
        $data['services'] = $this->Service_model->get_all();
        $data['team_members'] = $this->Team_model->get_all();
        $data['clients'] = $this->Client_model->get_all();
        $data['research'] = $this->Research_model->get_latest();

        // Load views
        $this->load->view('frontend/header', $data);
        $this->load->view('frontend/home_content', $data);
        $this->load->view('frontend/footer', $data);
    }
}
