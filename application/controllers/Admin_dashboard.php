<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin_dashboard extends CI_Controller {
	
	function __construct() {
      	parent::__construct();
	  	$this->template->current_menu = 'home';
	  	$this->load->model('Web_settings');
    }
    public function dashboard()
{
    // Check if admin is logged in
    if (!$this->auth->is_logged()) {
        // Not logged in, redirect to login page
        redirect('Admin_dashboard/login');
    }

    $this->auth->check_admin_auth();

    $CI =& get_instance();
    //$CI->load->library('lreport');
    $CI->load->library('occational');

    // Load models
    //$CI->load->model('Customers');
    $CI->load->model('Banner_model');
    $CI->load->model('Services_model');
    $CI->load->model('Team_model');
    $CI->load->model('Research_model');
    $CI->load->model('Client_model');
    $CI->load->model('WhyChooseUs_model');
    $CI->load->model('Web_settings');

    // Dashboard totals
    $data = [
        'title'            => display('dashboard'),
        'total_banner'     => $CI->Banner_model->banner_count(),
        'total_services'   => $CI->Services_model->service_count(),
        'total_team'       => $CI->Team_model->member_count(),
        'total_research'   => $CI->Research_model->research_count(),
        'total_clients'    => $CI->Client_model->client_count(),
        'total_features'   => $CI->WhyChooseUs_model->feature_count(),
    ];

    $content = $CI->parser->parse('include/admin_home', $data, true);
    $this->template->full_admin_html_view($content);
}


public function index()
{
    // Check if admin is logged in
    if ($this->auth->is_logged()) {
        // Already logged in, redirect to dashboard
        redirect('Admin_dashboard/dashboard'); // or 'Admin_dashboard/index' if that's the dashboard
    } else {
    // Not logged in, load front-end home page
    $this->load->model('Web_settings');
    $this->load->model('Banner_model');
    $this->load->model('About_model');
    $this->load->model('WhyChooseUs_model');
    $this->load->model('Services_model');
    $this->load->model('Client_model');
    $this->load->model('Team_model');
    $this->load->model('Research_model'); // ✅ Added research model

    // Get site settings
    $settings = $this->Web_settings->retrieve_setting_editdata();

    // Get all banners and filter active ones
    $banners_all = $this->Banner_model->banner_list();
    $banners = [];
    if ($banners_all) {
        foreach ($banners_all as $banner) {
            if ($banner['status'] == 1) {
                $banners[] = $banner;
            }
        }
    }

    // Get About Us data (latest record)
    $about = $this->About_model->about_list(1, 0);

    // Get all Why Choose Us features and filter active ones
    $features_all = $this->WhyChooseUs_model->feature_list();
    $features = [];
    if ($features_all) {
        foreach ($features_all as $f) {
            if ($f['status'] == 1) {
                $features[] = $f;
            }
        }
    }

    // Get all Services and filter active ones
    $services_all = $this->Services_model->service_list();
    $services = [];
    if ($services_all) {
        foreach ($services_all as $s) {
            if ($s['status'] == 1) {
                $services[] = $s;
            }
        }
    }

    // Get all clients and filter active ones
    $clients_all = $this->Client_model->client_list();
    $clients = [];
    if ($clients_all) {
        foreach ($clients_all as $c) {
            if ($c['status'] == 1) {
                $clients[] = $c;
            }
        }
    }

    // Get all team members and filter active ones
    $team_all = $this->Team_model->member_list();
    $team_members = [];
    if ($team_all) {
        foreach ($team_all as $m) {
            if ($m['status'] == 1) {
                $team_members[] = $m;
            }
        }
    }

    // ✅ Get research items (latest 6)
    $research_all = $this->Research_model->research_list(6, 0);
    $research = [];
    if ($research_all) {
        foreach ($research_all as $r) {
            if (!isset($r['status']) || $r['status'] == 1) {
                $research[] = $r;
            }
        }
    }

    // Pass all data to the view
    $data = [
        'title'        => display('welcome_to_site'),
        'settings'     => $settings,
        'banners'      => $banners,
        'about'        => $about,
        'features'     => $features,
        'services'     => $services,
        'clients'      => $clients,
        'team_members' => $team_members,
        'research'     => $research // ✅ Added research data
    ];

    $this->load->view('frontend/index', $data);
}


}


	#============User login=========#
	public function login()
	{	
		if ($this->auth->is_logged() )
		{
			$this->output->set_header("Location: ".base_url().'Admin_dashboard', TRUE, 302);
		}
		$data['title'] = display('admin_login_area');
        $content = $this->parser->parse('user/admin_login_form',$data,true);
		$this->template->full_admin_html_view($content);
	}
	#==============Valid user check=======#
	public function do_login(){

		$error = '';
		$setting_detail = $this->Web_settings->retrieve_setting_editdata(); 

		if ($setting_detail[0]['captcha'] == 0 && $setting_detail[0]['secret_key'] != null && $setting_detail[0]['site_key'] != null) {

			$this->form_validation->set_rules('g-recaptcha-response', 'recaptcha validation', 'required|callback_validate_captcha');
			$this->form_validation->set_message('validate_captcha', 'Please check the the captcha form');

			if ($this->form_validation->run() == FALSE){
				$this->session->set_userdata(array('error_message'=>display('please_enter_valid_captcha')));
				$this->output->set_header("Location: ".base_url().'Admin_dashboard/login', TRUE, 302);
			}
			else{
				$username = $this->input->post('username');
				$password = $this->input->post('password');
				if ( $username == '' || $password == '' || $this->auth->login($username, $password) === FALSE ){
					$error = display('wrong_username_or_password');
				}
				if ( $error != '' ){
					$this->session->set_userdata(array('error_message'=>$error));
					$this->output->set_header("Location: ".base_url().'Admin_dashboard/login', TRUE, 302);
				}
				else{
					$this->output->set_header("Location: ".base_url('Admin_dashboard/dashboard'), TRUE, 302);

		        }
			}
		}
		else{
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			if ( $username == '' || $password == '' || $this->auth->login($username, $password) === FALSE ){
				$error = display('wrong_username_or_password');
			}
			if ( $error != '' ){
				$this->session->set_userdata(array('error_message'=>$error));
				$this->output->set_header("Location: ".base_url().'Admin_dashboard/login', TRUE, 302);
			}else{
				$this->output->set_header("Location: ".base_url(), TRUE, 302);
	        }
		}
	}
	public function expense_report() {
    $CI =& get_instance();
    $CI->load->library('lreport');
    $content = $CI->lreport->expense_report(); // let lreport handle view and data
    $this->template->full_admin_html_view($content);
    //$content = $CI->lreport->expense_report(); // <-- this line here does nothing after full_admin_html_view()
}



	//Valid captcha check
	function validate_captcha() { 
	  	$captcha = $this->input->post('g-recaptcha-response'); 
	  	// $response = file_get_contents("//www.google.com/recaptcha/api/siteverify?secret=6LdiKhsUAAAAABH4BQCIvBar7Oqe-2LwDKxMSX-t&response=" . $captcha . "&remoteip=" . $_SERVER['REMOTE_ADDR']); 

		$url = "www.google.com/recaptcha/api/siteverify?secret=6LdiKhsUAAAAABH4BQCIvBar7Oqe-2LwDKxMSX-t&response=" . $captcha . "&remoteip=" . $_SERVER['REMOTE_ADDR'];
		$ch = curl_init();
		curl_setopt ($ch, CURLOPT_URL, $url);
		curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, 5);
		curl_setopt ($ch, CURLOPT_RETURNTRANSFER, true);
		$contents = curl_exec($ch);
		if (curl_errno($ch)) {
		  echo curl_error($ch);
		  echo "\n<br />";
		  $contents = '';
		} else {
		  curl_close($ch);
		}
	 	if ($contents . 'success' == false) { return FALSE; } else { return TRUE; } 
	}

	#===============Logout=======#
	public function logout()
{   
    if ($this->auth->logout()) {
        // Redirect to front-end home page
        $this->output->set_header("Location: ".base_url(), TRUE, 302);
    }
}

	#=============Edit Profile======#
	public function edit_profile()
	{	
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->library('luser');
		$content = $CI->luser->edit_profile_form();
		$this->template->full_admin_html_view($content);
	}
	#=============Update Profile========#
	public function update_profile()
	{	
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->model('Users');
		$this->Users->profile_update();
		$this->session->set_userdata(array('message'=> display('successfully_updated')));
		redirect(base_url('Admin_dashboard/edit_profile'));
	}
	#=============Change Password=========# 
	public function change_password_form()
	{	
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$content = $CI->parser->parse('user/change_password',array('title'=>display('change_password')),true);
		$this->template->full_admin_html_view($content);
	}
	#============Change Password===========#
	public function change_password()
	{	
		$CI =& get_instance();
		$this->auth->check_admin_auth();
		$CI->load->model('Users'); 

		$error = '';
		$email = $this->input->post('email');
		$old_password = $this->input->post('old_password');
		$new_password = $this->input->post('password');
		$repassword = $this->input->post('repassword');
		if ( $email == '' || $old_password == '' || $new_password == '')
		{
			$error = display('blank_field_does_not_accept');
		}else if($email != $this->session->userdata('user_email')){
			$error = display('you_put_wrong_email_address');
		}else if(strlen($new_password)<6 ){
			$error = display('new_password_at_least_six_character');
		}else if($new_password != $repassword ){
			$error = display('password_and_repassword_does_not_match');
		}else if($CI->Users->change_password($email,$old_password,$new_password) === FALSE ){
			$error = display('you_are_not_authorised_person');
		}
		if ( $error != '' )
		{
			$this->session->set_userdata(array('error_message'=>$error));
			$this->output->set_header("Location: ".base_url().'Admin_dashboard/change_password_form', TRUE, 302);
		}else{
			$this->session->set_userdata(array('message'=>display('successfully_changed_password')));
			$this->output->set_header("Location: ".base_url().'Admin_dashboard/change_password_form', TRUE, 302);
        }
	}
	

    
}