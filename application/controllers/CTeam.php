<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class CTeam extends CI_Controller
{
    public $menu;

    public function __construct()
    {
        parent::__construct();
        $this->load->library('auth');
        $this->load->library('session');
        $this->load->library('lteam'); // Optional: if you have a layout library
        $this->auth->check_admin_auth();
        $this->load->model('Team_model'); // Load your Team model
        $this->load->model('Web_settings');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }

    // Show add member form
    public function add_member()
    {
        $content = $this->lteam->team_add_form(); // If you have a layout library
        $this->template->full_admin_html_view($content);
    }

    // Insert team member into database
    public function insert_member()
{
     // Match the input names
    $this->form_validation->set_rules('name', 'Name', 'required');
    $this->form_validation->set_rules('role', 'Role/Position', 'required');

    if ($this->form_validation->run() === FALSE) {
        // Validation failed, reload form
        $this->session->set_flashdata('error', validation_errors());
        $this->add_member(); // load the add_member form method
        return;
    }

    // Handle photo upload
    $photo_path = null;
    if (!empty($_FILES['photo']['name'])) {
        $config['upload_path']   = './uploads/team_members/';
        $config['allowed_types'] = 'jpg|jpeg|png|webp|svg';
        $config['max_size']      = 500; // KB
        $config['file_name']     = time().'_'.$_FILES['photo']['name'];

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('photo')) {
            // Upload failed, reload form with error
            $this->session->set_flashdata('error', $this->upload->display_errors());
            $this->add_member();
            return;
        } else {
            $upload_data = $this->upload->data();
            $photo_path = 'uploads/team_members/' . $upload_data['file_name'];
        }
    }

    // Prepare data
    $data = [
        'name'        => $this->input->post('name', true),
        'position' => $this->input->post('role', true),
        'description' => $this->input->post('description', true),
        'photo'       => $photo_path,
        'status'      => 1,
        'created_at'  => date('Y-m-d H:i:s'),
        'updated_at'  => date('Y-m-d H:i:s')
    ];

    // Insert into database
    if ($this->Team_model->insert_member($data)) {
        $this->session->set_flashdata('message', 'Team member added successfully!');
        redirect('CTeam/manage_members');
    } else {
        // Insertion failed, reload form with error
        $this->session->set_flashdata('error', 'Failed to add team member.');
        $this->add_member();
    }
}


    // Manage members with pagination
    public function manage_members($page = 0)
    {
        $this->load->library('pagination');

        $config['base_url'] = base_url('CTeam/manage_members');
        $config['total_rows'] = $this->Team_model->member_count();
        $config['per_page'] = 10;
        $config['uri_segment'] = 3;
        $this->pagination->initialize($config);

        $data['title'] = display('manage_members');
        $data['members'] = $this->Team_model->member_list($config['per_page'], $page);
        $data['links'] = $this->pagination->create_links();

        $content = $this->load->view('team_page/manage_members', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Edit member form
    public function edit($id = null)
    {
        if ($id === null) redirect('CTeam/manage_members');

        $data['member'] = $this->Team_model->get_member_by_id($id);
        if (!$data['member']) {
            $this->session->set_flashdata('error_message', 'Member not found');
            redirect('CTeam/manage_members');
        }

        $content = $this->load->view('team_page/edit_member', $data, true);
        $this->template->full_admin_html_view($content);
    }

    // Update member
    public function update_member()
    {
        $id = $this->input->post('id', true);

        $data = [
            'name'        => $this->input->post('name', true),
            'position'    => $this->input->post('role', true),
            'description' => $this->input->post('description', true),
            'status'      => $this->input->post('status', true),
            'updated_at'  => date('Y-m-d H:i:s')
        ];

        if (!empty($_FILES['photo']['name'])) {
            $config['upload_path']   = './uploads/team_members/';
            $config['allowed_types'] = 'jpg|jpeg|png|webp';
            $config['max_size']      = 500;
            $config['file_name']     = time().'_'.$_FILES['photo']['name'];

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('photo')) {
                $upload_data = $this->upload->data();
                $data['photo'] = 'uploads/team_members/'.$upload_data['file_name'];

                // Remove old photo
                $member = $this->Team_model->get_member_by_id($id);
                if ($member && !empty($member['photo']) && file_exists($member['photo'])) {
                    unlink($member['photo']);
                }
            } else {
                $this->session->set_flashdata('error_message', 'Photo upload failed: '.$this->upload->display_errors());
                redirect('CTeam/edit/'.$id);
            }
        }

        if ($this->Team_model->update_member($id, $data)) {
            $this->session->set_flashdata('message', 'Member updated successfully');
        } else {
            $error = $this->db->error();
            $this->session->set_flashdata('error_message', 'Failed to update member: '.$error['message']);
        }

        redirect('CTeam/manage_members');
    }

    // Delete member
    public function delete($id = null)
    {
        if ($id === null) {
            $this->session->set_flashdata('error_message', 'Invalid member ID');
            redirect('CTeam/manage_members');
        }

        $member = $this->Team_model->get_member_by_id($id);
        if ($member && !empty($member['photo']) && file_exists($member['photo'])) {
            unlink($member['photo']);
        }

        if ($this->Team_model->delete_member($id)) {
            $this->session->set_flashdata('message', 'Member deleted successfully');
        } else {
            $this->session->set_flashdata('error_message', 'Failed to delete member');
        }

        redirect('CTeam/manage_members');
    }
}
