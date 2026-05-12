<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Feedback extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Feedback_model'); // Make sure you have this model
        $this->load->model('Web_settings');
        $this->load->library('auth');
        $this->load->library('session');
        $this->auth->check_admin_auth();
    }

    // Feedback list page
    public function index() {
        $data['feedback_list'] = $this->Feedback_model->get_all_feedback();
        $data['title'] = 'Feedback';
        $data['unread_feedback'] = $this->Feedback_model->get_unread_count(); // For badge
        
        // Load view
        $content = $this->load->view('feedback/feedback_list', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Mark feedback as read (AJAX)
    public function mark_as_read() {
        $id = $this->input->post('id', true);
        if($id) {
            $this->db->where('id', $id);
            $this->db->update('contact_message', ['status' => 1]);
            echo json_encode(['status' => 'success']);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Invalid ID']);
        }
    }

    // Delete feedback
    public function delete($id = null) {
        if($id) {
            $this->db->where('id', $id);
            $this->db->delete('contact_message');
            $this->session->set_flashdata('message', 'Feedback deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Invalid feedback ID');
        }
        redirect('feedback');
    }

    // Optional: View single feedback (if you want separate page, not modal)
    public function view($id = null) {
        if($id) {
            $data['feedback'] = $this->Feedback_model->get_feedback_by_id($id);
            $this->load->view('feedback/view_feedback', $data);
        } else {
            redirect('feedback');
        }
    }
}
