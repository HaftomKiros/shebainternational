<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Load required models
        $this->load->model('Web_settings');     // site settings (email, phone, address)
        $this->load->model('Contact_model');    // contact messages model
    }

    // Display Contact Us page
    public function index() {

        // Get site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();

        // Optional: contact page content (address, map, description)

        // Load the Contact page view
        $this->load->view('frontend/contact_us_page', $data);
    }

    // Handle contact form submission
   public function send() {

    $settings = $this->Web_settings->retrieve_setting_editdata();

    // reCAPTCHA validation
    if(!empty($settings) && $settings[0]['captcha'] == 0 && !empty($settings[0]['site_key']) && !empty($settings[0]['secret_key'])) {
        $recaptcha_response = $this->input->post('g-recaptcha-response');
        if(empty($recaptcha_response)) {
            echo json_encode(['status'=>'error','message'=>'Please check the captcha.']);
            return;
        }
        $secret = $settings[0]['secret_key'];
        $verify = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$recaptcha_response}");
        $captcha_success = json_decode($verify);

        if(!$captcha_success->success) {
            echo json_encode(['status'=>'error','message'=>'Captcha verification failed.']);
            return;
        }
    }

    // Save message (your existing code)
    $data = [
        'name'       => $this->input->post('name', TRUE),
        'email'      => $this->input->post('email', TRUE),
        'phone'      => $this->input->post('phone', TRUE),
        'subject'    => $this->input->post('subject', TRUE),
        'message'    => $this->input->post('message', TRUE),
        'status'     => 0, // unread
        'created_at' => date('Y-m-d H:i:s')
    ];

    $insert_id = $this->Contact_model->insert_message($data);

    if($this->input->is_ajax_request()) {
        if($insert_id) {
            echo json_encode(['status'=>'success','message'=>'Message sent successfully!']);
        } else {
            echo json_encode(['status'=>'error','message'=>'Failed to send message. Please try again.']);
        }
    } else {
        if($insert_id) {
            $this->session->set_flashdata('success','Message sent successfully!');
        } else {
            $this->session->set_flashdata('error','Failed to send message.');
        }
        redirect('contact');
    }
}


}
