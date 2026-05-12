<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Cclient extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('session');
        $this->load->library('lclient');
        $this->auth->check_admin_auth();
        $this->load->model('Client_model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }

    // Show add client form
    public function add_client() {
        $content = $this->lclient->client_add_form();
        $this->template->full_admin_html_view($content);
    }

    // Insert client
    public function insert_client() {
        $this->form_validation->set_rules('client_name', 'Client Name', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('error', validation_errors());
            redirect('Cclient/add_client');
        } else {
            // File upload
            if (!empty($_FILES['logo']['name'])) {
                $config['upload_path']   = './uploads/client_logo/';
                $config['allowed_types'] = 'jpg|jpeg|png|webp';
                $config['max_size']      = 500; // KB
                $config['file_name']     = time().'_'.$_FILES['logo']['name'];

                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('logo')) {
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                    redirect('Cclient/add_client');
                } else {
                    $upload_data = $this->upload->data();
                    $logo = 'uploads/client_logo/' . $upload_data['file_name'];
                }
            } else {
                $logo = null;
            }

            $data = array(
                'client_name' => $this->input->post('client_name', true),
                'website'     => $this->input->post('website', true),
                'logo'        => $logo,
                'status'      => 1,
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            );

            if ($this->Client_model->insert_client($data)) {
                $this->session->set_flashdata('message', 'Client added successfully!');
            } else {
                $this->session->set_flashdata('error', 'Failed to add client.');
            }

            redirect('Cclient/manage_clients');
        }
    }

    // Manage clients
    public function manage_clients($page = 0) {
        $this->load->library('pagination');

        $config['base_url'] = base_url('Cclient/manage_clients');
        $config['total_rows'] = $this->Client_model->client_count();
        $config['per_page'] = 10;
        $config['uri_segment'] = 3;

        $this->pagination->initialize($config);

        $data['clients'] = $this->Client_model->client_list($config['per_page'], $page);
        $data['links'] = $this->pagination->create_links();
        $data['title'] = 'Manage Clients';

        $content = $this->load->view('client_page/manage_clients', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Edit client
    public function edit($id = null) {
        if ($id === null) redirect('Cclient/manage_clients');

        $data['client'] = $this->Client_model->get_client_by_id($id);
        if (!$data['client']) {
            $this->session->set_flashdata('error', 'Client not found');
            redirect('Cclient/manage_clients');
        }

        $content = $this->load->view('client_page/edit_client', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Update client
    public function update_client() {
        $id = $this->input->post('id', true);

        $data = [
            'client_name' => $this->input->post('client_name', true),
            'website'     => $this->input->post('website', true),
            'status'      => $this->input->post('status', true),
            'updated_at'  => date('Y-m-d H:i:s')
        ];

        if (!empty($_FILES['logo']['name'])) {
            $config['upload_path']   = './uploads/client_logo/';
            $config['allowed_types'] = 'jpg|jpeg|png|webp';
            $config['max_size']      = 500;
            $config['file_name']     = time().'_'.$_FILES['logo']['name'];

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('logo')) {
                $upload_data = $this->upload->data();
                $data['logo'] = 'uploads/client_logo/'.$upload_data['file_name'];

                // Remove old logo
                $client = $this->Client_model->get_client_by_id($id);
                if ($client && !empty($client['logo']) && file_exists($client['logo'])) {
                    unlink($client['logo']);
                }
            } else {
                $this->session->set_flashdata('error', $this->upload->display_errors());
                redirect('Cclient/edit/'.$id);
            }
        }

        if ($this->Client_model->update_client($id, $data)) {
            $this->session->set_flashdata('message', 'Client updated successfully');
        } else {
            $this->session->set_flashdata('error', 'Failed to update client');
        }

        redirect('Cclient/manage_clients');
    }

    // Delete client
    public function delete($id = null) {
        if ($id === null) redirect('Cclient/manage_clients');

        $client = $this->Client_model->get_client_by_id($id);
        if ($client && !empty($client['logo']) && file_exists($client['logo'])) {
            unlink($client['logo']);
        }

        if ($this->Client_model->delete_client($id)) {
            $this->session->set_flashdata('message', 'Client deleted successfully');
        } else {
            $this->session->set_flashdata('error', 'Failed to delete client');
        }

        redirect('Cclient/manage_clients');
    }
}
