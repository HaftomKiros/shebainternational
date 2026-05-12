<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cbanners extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('lbanner');
        $this->load->library('session');
        $this->auth->check_admin_auth();
        $this->load->model('Banner_model'); // Load your banner model
        $this->load->model('Web_settings');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }

    // Show add banner form
    public function add_banner() {
        $content = $this->lbanner->banner_add_form();
        $this->template->full_admin_html_view($content);
    }

    // Insert banner into database
    public function insert_banner() {

        // Form validation
        $this->form_validation->set_rules('banner_title', 'Banner Title', 'required');
        $this->form_validation->set_rules('banner_subtitle', 'Banner Subtitle', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('error', validation_errors());
            redirect('Cbanners/add_banner');
        } else {

            // Handle file upload
            if (!empty($_FILES['banner_image']['name'])) {
                $config['upload_path']   = './uploads/banners/';
                $config['allowed_types'] = 'jpg|jpeg|png|webp';
                $config['max_size']      = 700; // KB
                $config['file_name']     = time().'_'.$_FILES['banner_image']['name'];

                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('banner_image')) {
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                    redirect('Cbanners/add_banner');
                } else {
                    $image_data = $this->upload->data();
                    $banner_image = 'uploads/banners/' . $image_data['file_name'];
                }
            } else {
                $banner_image = null;
            }

            // Prepare data
            $data = array(
                'title'       => $this->input->post('banner_title', true),
                'subtitle'    => $this->input->post('banner_subtitle', true),
                'image_url'   => $banner_image,
                'status'      => 1,
                'created_at'  => date('Y-m-d H:i:s'),
                'updated_at'  => date('Y-m-d H:i:s')
            );

            // Insert into database
            if ($this->Banner_model->insert_banner($data)) {
                $this->session->set_flashdata('message', 'Banner added successfully!');
            } else {
                $this->session->set_flashdata('error', 'Failed to add banner.');
            }

            redirect('Cbanners/manage_banners');
        }
    }
    public function manage_banners($page = 0) {
    $this->load->model('Banner_model');

    // Pagination settings
    $this->load->library('pagination');
    $config['base_url'] = base_url('Cbanners/manage_banners');
    $config['total_rows'] = $this->Banner_model->banner_count();
    $config['per_page'] = 10;
    $config['uri_segment'] = 3;
    $this->pagination->initialize($config);

    // Fetch banners
    $data['title'] = display('manage_banners');
    $data['banners'] = $this->Banner_model->banner_list($config['per_page'], $page);
    $data['links'] = $this->pagination->create_links();

    // Load view
    $content = $this->load->view('banner/manage_banners', $data, true);
    $this->template->full_admin_html_view($content);
}
// Edit banner form
public function edit($id = null)
{
    if ($id == null) {
        redirect('Cbanners/manage_banners');
    }

    $this->load->model('Banner_model');

    $data['banner'] = $this->Banner_model->get_banner_by_id($id);
    if (!$data['banner']) {
        $this->session->set_flashdata('error_message', 'Banner not found');
        redirect('Cbanners/manage_banners');
    }

    $data['content'] = $this->load->view('banner/edit_banner', $data, true);
    $this->template->full_admin_html_view($data['content']);
}

// Update banner
public function update_banner()
{
    $id = $this->input->post('id');

    $data = [
        'title'       => $this->input->post('banner_title', true),
        'subtitle'    => $this->input->post('banner_subtitle', true),
        'status'      => $this->input->post('status', true),
        'updated_at'  => date('Y-m-d H:i:s')
    ];

    // Handle image upload
    if (!empty($_FILES['banner_image']['name'])) {
        $config['upload_path']   = './uploads/banners/';
        $config['allowed_types'] = 'jpg|jpeg|png|webp';
        $config['max_size']      = 600; // KB
        $config['file_name']     = time().'_'.$_FILES['banner_image']['name'];

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('banner_image')) {
            $upload_data = $this->upload->data();
            $data['image_url'] = 'uploads/banners/'.$upload_data['file_name']; // corrected column name
        } else {
            $this->session->set_flashdata('error_message', $this->upload->display_errors());
            redirect('Cbanners/edit/'.$id);
        }
    }

    // Update in database
    if ($this->Banner_model->update_banner($id, $data)) {
        $this->session->set_flashdata('message', 'Banner updated successfully');
    } else {
        $this->session->set_flashdata('error_message', 'Failed to update banner');
    }

    redirect('Cbanners/manage_banners');
}
// Delete banner
public function delete($id = null)
{
    if ($id == null) {
        $this->session->set_flashdata('error_message', 'Invalid banner ID');
        redirect('Cbanners/manage_banners');
    }

    $this->load->model('Banner_model');

    // Get banner to remove image file
    $banner = $this->Banner_model->get_banner_by_id($id);
    if ($banner && !empty($banner['image_url']) && file_exists($banner['image_url'])) {
        unlink($banner['image_url']); // delete the file
    }

    // Delete from database
    if ($this->Banner_model->delete_banner($id)) {
        $this->session->set_flashdata('message', 'Banner deleted successfully');
    } else {
        $this->session->set_flashdata('error_message', 'Failed to delete banner');
    }

    redirect('Cbanners/manage_banners');
}




}
