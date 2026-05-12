<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class CWhyChooseUs extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('session');
        $this->load->library('lwhychooseus');
        $this->auth->check_admin_auth();
        $this->load->model('WhyChooseUs_model'); // Correct model
        $this->load->model('Web_settings');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }

    // Show add feature form
    public function add_feature()
    {
        $content = $this->lwhychooseus->whychooseus_add_form();
        $this->template->full_admin_html_view($content);
    }

    // Insert feature into database
    public function insert_feature()
    {
        // Form validation
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('error', validation_errors());
            redirect('whychooseus_page/add_feature');
        } else {
            // Handle file upload
            $icon_image = null;
            if (!empty($_FILES['icon_image']['name'])) {
                $config['upload_path']   = './uploads/why_choose_us_icon/';
                $config['allowed_types'] = 'jpg|jpeg|png|webp|svg';
                $config['max_size']      = 500; // KB
                $config['file_name']     = time().'_'.$_FILES['icon_image']['name'];

                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('icon_image')) {
                    $this->session->set_flashdata('error', $this->upload->display_errors());
                    redirect('CWhyChooseUs/add_feature');
                } else {
                    $icon_data = $this->upload->data();
                    $icon_image = 'uploads/why_choose_us_icon/' . $icon_data['file_name'];
                }
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
            if ($this->WhyChooseUs_model->insert_feature($data)) {
                $this->session->set_flashdata('message', 'Feature added successfully!');
            } else {
                $this->session->set_flashdata('error', 'Failed to add feature.');
            }

            redirect('CWhyChooseUs/manage_features');
        }
    }

    // Manage features
    public function manage_features($page = 0)
    {
        // Pagination
        $this->load->library('pagination');
        $config['base_url'] = base_url('whychooseus_page/manage_features');
        $config['total_rows'] = $this->WhyChooseUs_model->feature_count();
        $config['per_page'] = 10;
        $config['uri_segment'] = 3;
        $this->pagination->initialize($config);

        $data['features'] = $this->WhyChooseUs_model->feature_list($config['per_page'], $page);
        $data['links'] = $this->pagination->create_links();

        $content = $this->load->view('whychooseus_page/manage_features', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Edit feature form
    public function edit($id = null)
    {
        if ($id === null) redirect('CWhyChooseUs/manage_features');

        $data['feature'] = $this->WhyChooseUs_model->get_feature_by_id($id);
        if (!$data['feature']) {
            $this->session->set_flashdata('error_message', 'Feature not found');
            redirect('CWhyChooseUs/manage_features');
        }

        $content = $this->load->view('whychooseus_page/edit_feature', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Update feature
    public function update_feature()
    {
        $id = $this->input->post('id', true);

        $data = [
            'title'       => $this->input->post('title', true),
            'description' => $this->input->post('description', true),
            'status'      => $this->input->post('status', true),
            'updated_at'  => date('Y-m-d H:i:s')
        ];

        // Handle icon upload
        if (!empty($_FILES['icon_image']['name'])) {
            $config['upload_path']   = './uploads/why_choose_us_icon/';
            $config['allowed_types'] = 'png|jpg|jpeg|webp|svg';
            $config['max_size']      = 500;
            $config['file_name']     = time().'_'.$_FILES['icon_image']['name'];

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('icon_image')) {
                $upload_data = $this->upload->data();
                $data['icon_image'] = 'uploads/why_choose_us_icon/'.$upload_data['file_name'];

                // Remove old icon
                $feature = $this->WhyChooseUs_model->get_feature_by_id($id);
                if ($feature && !empty($feature['icon_image']) && file_exists($feature['icon_image'])) {
                    unlink($feature['icon_image']);
                }

            } else {
                $this->session->set_flashdata('error_message', 'Icon upload failed: '.$this->upload->display_errors());
                redirect('CWhyChooseUs/edit/'.$id);
            }
        }

        if ($this->WhyChooseUs_model->update_feature($id, $data)) {
            $this->session->set_flashdata('message', 'Feature updated successfully');
        } else {
            $error = $this->db->error();
            $this->session->set_flashdata('error_message', 'Failed to update feature: '.$error['message']);
        }

        redirect('CWhyChooseUs/manage_features');
    }

    // Delete feature
    public function delete($id = null)
    {
        if ($id === null) {
            $this->session->set_flashdata('error_message', 'Invalid feature ID');
            redirect('CWhyChooseUs/manage_features');
        }

        $feature = $this->WhyChooseUs_model->get_feature_by_id($id);
        if ($feature && !empty($feature['icon_image']) && file_exists($feature['icon_image'])) {
            unlink($feature['icon_image']);
        }

        if ($this->WhyChooseUs_model->delete_feature($id)) {
            $this->session->set_flashdata('message', 'Feature deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete feature');
        }

        redirect('CWhyChooseUs/manage_features');
    }
}
