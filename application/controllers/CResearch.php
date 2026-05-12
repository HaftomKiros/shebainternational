<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CResearch extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library(array('auth','session','form_validation'));
        $this->load->helper(array('form','url'));
        $this->auth->check_admin_auth();
        $this->load->model('Research_model');
    }

    // Add Research form
   public function add_research() {
    $data = [
        'title' => 'Add New Research' // <-- set your page title here
    ];
    $content = $this->load->view('research/add_research', $data, true);
    $this->template->full_admin_html_view($content);
}


    // Insert research
    public function insert_research() {
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('error_message', validation_errors());
            redirect('CResearch/add_research');
        }

        // Handle photo upload
        $photo_path = null;
        if(!empty($_FILES['photo']['name'])) {
            $config['upload_path']   = './uploads/research/';
            $config['allowed_types'] = 'jpg|jpeg|png|webp|svg';
            $config['max_size']      = 500;
            $config['file_name']     = time().'_'.$_FILES['photo']['name'];
            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('photo')) {
                $this->session->set_flashdata('error_message', $this->upload->display_errors());
                redirect('CResearch/add_research');
            } else {
                $upload_data = $this->upload->data();
                $photo_path = 'uploads/research/'.$upload_data['file_name'];
            }
        }

        $data = [
            'title'       => $this->input->post('title', true),
            'description' => $this->input->post('description', true),
            'photo'       => $photo_path,
            'status'      => 1,
            'created_at'  => date('Y-m-d H:i:s'),
            'updated_at'  => date('Y-m-d H:i:s')
        ];

        if($this->Research_model->insert_research($data)) {
            $this->session->set_flashdata('message', 'Research added successfully!');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to add research');
        }

        redirect('CResearch/manage_research');
    }

    // Manage research
    public function manage_research($page = 0) {
    $this->load->library('pagination');

    $config['base_url'] = base_url('CResearch/manage_research');
    $config['total_rows'] = $this->Research_model->research_count();
    $config['per_page'] = 10;
    $config['uri_segment'] = 3;
    $this->pagination->initialize($config);

    $data = [
        'title' => 'Manage Research', // <-- set your page title here
        'research_list' => $this->Research_model->research_list($config['per_page'], $page),
        'links' => $this->pagination->create_links()
    ];

    $content = $this->load->view('research/manage_research', $data, true);
    $this->template->full_admin_html_view($content);
}


    // Edit research
    public function edit($id = null) {
        if(!$id) redirect('CResearch/manage_research');

        $data['research'] = $this->Research_model->get_research_by_id($id);
        $content = $this->load->view('research/edit_research', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Update research
    public function update_research() {
        $id = $this->input->post('id', true);

        $data = [
            'title'       => $this->input->post('title', true),
            'description' => $this->input->post('description', true),
            'status'      => $this->input->post('status', true),
            'updated_at'  => date('Y-m-d H:i:s')
        ];

        if(!empty($_FILES['photo']['name'])) {
            $config['upload_path']   = './uploads/research/';
            $config['allowed_types'] = 'jpg|jpeg|png|webp|svg';
            $config['max_size']      = 500;
            $config['file_name']     = time().'_'.$_FILES['photo']['name'];
            $this->load->library('upload', $config);

            if($this->upload->do_upload('photo')) {
                $upload_data = $this->upload->data();
                $data['photo'] = 'uploads/research/'.$upload_data['file_name'];

                // Delete old photo
                $research = $this->Research_model->get_research_by_id($id);
                if($research && !empty($research['photo']) && file_exists($research['photo'])) {
                    unlink($research['photo']);
                }
            } else {
                $this->session->set_flashdata('error_message', $this->upload->display_errors());
                redirect('CResearch/edit/'.$id);
            }
        }

        if($this->Research_model->update_research($id, $data)) {
            $this->session->set_flashdata('message', 'Research updated successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to update research');
        }
        redirect('CResearch/manage_research');
    }

    // Delete research
    public function delete($id = null) {
        if(!$id) redirect('CResearch/manage_research');

        $research = $this->Research_model->get_research_by_id($id);
        if($research && !empty($research['photo']) && file_exists($research['photo'])) unlink($research['photo']);

        if($this->Research_model->delete_research($id)) {
            $this->session->set_flashdata('message', 'Research deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete research');
        }

        redirect('CResearch/manage_research');
    }
}
