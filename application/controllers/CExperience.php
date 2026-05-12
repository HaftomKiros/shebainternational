<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CExperience extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        // Load model
        $this->load->model('Experience_model');

        // Load helpers & libraries
        $this->load->helper(['form', 'url', 'text']);
        $this->load->library(['session', 'form_validation']);

        // OPTIONAL: if you have login protection
        // if (!$this->session->userdata('isAdmin')) {
        //     redirect('login');
        // }
    }

    /* ===============================
        ADD EXPERIENCE FORM
    =============================== */
    public function add_experience()
    {
        $data['title'] = 'Add Experience';
        $this->load->view('experience/add_experience', $data);
         $this->template->full_admin_html_view($content);
    }

    /* ===============================
        INSERT EXPERIENCE
    =============================== */
    public function insert_experience()
    {
        $this->form_validation->set_rules('description', 'Description', 'required|trim');

        if ($this->form_validation->run() == FALSE) {

            $this->session->set_flashdata('error_message', validation_errors());
            redirect('CExperience/add_experience');

        } else {

            $data = [
                'description' => $this->input->post('description', false), // CKEditor HTML
                'status'      => 1,
            ];

            if ($this->Experience_model->insert_experience($data)) {
                $this->session->set_flashdata('message', 'Experience added successfully');
            } else {
                $this->session->set_flashdata('error_message', 'Failed to add experience');
            }

            redirect('CExperience/manage_experience');
        }
    }

    /* ===============================
        MANAGE EXPERIENCE
    =============================== */
    public function manage_experience()
    {
        $data['title'] = 'Manage Experience';
        $data['experiences'] = $this->Experience_model->experience_list();

        $this->load->view('experience/manage_experience', $data);
         $this->template->full_admin_html_view($content);
    }

    /* ===============================
        EDIT EXPERIENCE FORM
    =============================== */
    public function edit($id = null)
    {
        if (!$id) {
            show_404();
        }

        $experience = $this->Experience_model->get_experience($id);

        if (!$experience) {
            show_404();
        }

        $data['experience'] = $experience;
        $data['title'] = 'Edit Experience';

        $this->load->view('experience/edit_experience', $data);
    }

    /* ===============================
        UPDATE EXPERIENCE
    =============================== */
    public function update_experience()
    {
        $id = $this->input->post('id');

        if (!$id) {
            show_404();
        }

        $this->form_validation->set_rules('description', 'Description', 'required|trim');
        $this->form_validation->set_rules('status', 'Status', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->session->set_flashdata('error_message', validation_errors());
            redirect('CExperience/edit/'.$id);

        } else {

            $data = [
                'description' => $this->input->post('description', false),
                'status'      => $this->input->post('status'),
            ];

            if ($this->Experience_model->update_experience($id, $data)) {
                $this->session->set_flashdata('message', 'Experience updated successfully');
            } else {
                $this->session->set_flashdata('error_message', 'Failed to update experience');
            }

            redirect('CExperience/manage_experience');
        }
    }

    /* ===============================
        DELETE EXPERIENCE
    =============================== */
    public function delete($id = null)
    {
        if (!$id) {
            show_404();
        }

        if ($this->Experience_model->delete_experience($id)) {
            $this->session->set_flashdata('message', 'Experience deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete experience');
        }

        redirect('CExperience/manage_experience');
    }
}
