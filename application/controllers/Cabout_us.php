<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cabout_us extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->load->library('auth');
        //$this->load->library('lbanner');
        $this->load->model('About_model');
        $this->load->library('session');
        $this->auth->check_admin_auth();
       // $this->load->model('Banner_model'); // Load your banner model
        $this->load->model('Web_settings');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }
    
   public function manage_about_us($page = 0)
{
    $this->load->model('About_model');
    $this->load->library('pagination');

    // Pagination config (same as banners)
    $config['base_url']    = base_url('Cabout/manage_about_us');
    $config['total_rows']  = $this->About_model->about_count();
    $config['per_page']    = 10;
    $config['uri_segment'] = 3;

    $this->pagination->initialize($config);

    // Fetch about us list
    $data['title']      = 'Manage About Us';
    $data['about_list'] = $this->About_model->about_list($config['per_page'], $page);
    $data['links']      = $this->pagination->create_links();

    // Load view
    $content = $this->load->view('about/manage_about_us', $data, true);
    $this->template->full_admin_html_view($content);
}
public function edit($id)
{
    $this->load->model('About_model');

    // Get record
    $data['about'] = $this->About_model->get_about_by_id($id);

    if (empty($data['about'])) {
        $this->session->set_flashdata('error_message', 'Record not found');
        redirect('Cabout_us/manage_about_us');
    }

    // Validation
    $this->form_validation->set_rules('description', 'Description', 'required');
    $this->form_validation->set_rules('mission', 'Mission', 'required');
    if ($this->form_validation->run() === TRUE) {
        $updateData = [
            'description' => $this->input->post('description', true),
            'mission'     => $this->input->post('mission', true),
            'status'      => $this->input->post('status', true),
        ];

        $this->About_model->update_about($id, $updateData);

        $this->session->set_flashdata('message', 'About Us updated successfully');
        redirect('Cabout_us/manage_about_us');
    }

    $data['title'] = 'Edit About Us';
    $content = $this->load->view('about/edit_about', $data, true);
    $this->template->full_admin_html_view($content);
}






}
