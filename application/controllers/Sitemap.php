<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sitemap extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Web_settings');
        $this->load->helper('url');
    }

    public function index() {
        // Get site settings
        $data['settings'] = $this->Web_settings->retrieve_setting_editdata();

        // Set header for XML sitemap
        header("Content-Type: application/xml; charset=utf-8");

        // Define your website pages
        $pages = array(
            array(
                'loc' => base_url(),
                'lastmod' => date('Y-m-d'),
                'changefreq' => 'weekly',
                'priority' => '1.0'
            ),
            array(
                'loc' => base_url('about'),
                'lastmod' => date('Y-m-d'),
                'changefreq' => 'monthly',
                'priority' => '0.8'
            ),
            array(
                'loc' => base_url('services'),
                'lastmod' => date('Y-m-d'),
                'changefreq' => 'weekly',
                'priority' => '0.9'
            ),
            array(
                'loc' => base_url('research'),
                'lastmod' => date('Y-m-d'),
                'changefreq' => 'weekly',
                'priority' => '0.8'
            ),
            array(
                'loc' => base_url('contact'),
                'lastmod' => date('Y-m-d'),
                'changefreq' => 'monthly',
                'priority' => '0.7'
            )
        );

        $data['pages'] = $pages;

        // Load the sitemap view
        $this->load->view('sitemap', $data);
    }
}