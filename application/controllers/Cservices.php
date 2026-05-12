<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Cservices extends CI_Controller
{
    public $menu;

    public function __construct()
    {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('session');
         $this->load->library('lservices');
        $this->auth->check_admin_auth();
        $this->load->model('Services_model'); // Load your services model
        $this->load->model('Web_settings');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }
    // Show add service form
    public function add_services()
    {
         $content = $this->lservices->service_add_form();
        $this->template->full_admin_html_view($content);
    }

    // Insert service into database
    public function insert_service() {

    // Form validation
    $this->form_validation->set_rules('title', 'Title', 'required');
    $this->form_validation->set_rules('description', 'Description', 'required');

    if ($this->form_validation->run() === FALSE) {
        $this->session->set_flashdata('error', validation_errors());
        redirect('Cservices/add_service'); // Redirect back to add form
    } else {

        // Handle file upload
        if (!empty($_FILES['icon_image']['name'])) {
            $config['upload_path']   = './uploads/services_icon/';
            $config['allowed_types'] = 'jpg|jpeg|png|webp|svg';
            $config['max_size']      = 500; // KB
            $config['file_name']     = time().'_'.$_FILES['icon_image']['name'];

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('icon_image')) {
                $this->session->set_flashdata('error', $this->upload->display_errors());
                redirect('Cservices/add_service');
            } else {
                $icon_data = $this->upload->data();
                $icon_image = 'uploads/services_icon/' . $icon_data['file_name'];
            }
        } else {
            $icon_image = null; // optional: you can make it required if needed
        }

        // Prepare data
        $data = array(
            'title'       => $this->input->post('title', true),
            'description' => $this->input->post('description', true),
            'icon_image'  => $icon_image,
            'status'      => 1,
            'created_at'  => date('Y-m-d H:i:s'),
            'updated_at'  => date('Y-m-d H:i:s')
        );

        // Insert into database
        $this->load->model('Services_model'); // Load your model
        if ($this->Services_model->insert_service($data)) {
            $this->session->set_flashdata('message', 'Service added successfully!');
        } else {
            $this->session->set_flashdata('error', 'Failed to add service.');
        }

        redirect('Cservices/manage_services');
    }
}
public function manage_services($page = 0) {
    $this->load->model('Services_model');

    // Pagination settings
    $this->load->library('pagination');
    $config['base_url'] = base_url('Cservices/manage_services');
    $config['total_rows'] = $this->Services_model->service_count();
    $config['per_page'] = 10;
    $config['uri_segment'] = 3;
    $this->pagination->initialize($config);

    // Fetch services
    $data['title'] = display('manage_services');
    $data['services'] = $this->Services_model->service_list($config['per_page'], $page);
    $data['links'] = $this->pagination->create_links();

    // Load view
    $content = $this->load->view('service_page/manage_services', $data, true);
    $this->template->full_admin_html_view($content);
}
// Edit service form
    public function edit($id = null) {
        if ($id === null) redirect('Cservices/manage_services');

        $data['service'] = $this->Services_model->get_service_by_id($id);
        if (!$data['service']) {
            $this->session->set_flashdata('error_message', 'Service not found');
            redirect('Cservices/manage_services');
        }

        $content = $this->load->view('service_page/edit_service', $data, true);
        $this->template->full_admin_html_view($content);
    }
    public function update_service() {
    $id = $this->input->post('id', true);

    // Prepare data from form
    $data = [
        'title'       => $this->input->post('title', true),
        'description' => $this->input->post('description', true),
        'status'      => $this->input->post('status', true),
        'updated_at'  => date('Y-m-d H:i:s')
    ];

    // Handle icon upload if new file is provided
    if (!empty($_FILES['icon_image']['name'])) {
        $config['upload_path']   = './uploads/services_icon/';
        $config['allowed_types'] = 'png|jpg|jpeg|webp|svg';
        $config['max_size']      = 500; // KB
        $config['file_name']     = time().'_'.$_FILES['icon_image']['name'];

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('icon_image')) {
            $upload_data = $this->upload->data();
            $data['icon_image'] = 'uploads/services_icon/'.$upload_data['file_name'];

            // Remove old icon
            $service = $this->Services_model->get_service_by_id($id);
            if ($service && !empty($service['icon_image']) && file_exists($service['icon_image'])) {
                unlink($service['icon_image']);
            }

        } else {
            $this->session->set_flashdata('error_message', 'Icon upload failed: '.$this->upload->display_errors());
            redirect('Cservices/edit/'.$id);
        }
    }

    // Update database
    if ($this->Services_model->update_service($id, $data)) {
        $this->session->set_flashdata('message', 'Service updated successfully');
    } else {
        $error = $this->db->error(); // Debug SQL error
        $this->session->set_flashdata('error_message', 'Failed to update service: '.$error['message']);
    }

    redirect('Cservices/manage_services');
}

    // Delete service
    public function delete($id = null) {
        if ($id === null) {
            $this->session->set_flashdata('error_message', 'Invalid service ID');
            redirect('Cservices/manage_services');
        }

        $service = $this->Services_model->get_service_by_id($id);
        if ($service && !empty($service['icon_url']) && file_exists($service['icon_url'])) {
            unlink($service['icon_url']);
        }

        if ($this->Services_model->delete_service($id)) {
            $this->session->set_flashdata('message', 'Service deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete service');
        }

        redirect('Cservices/manage_services');
    }



}
