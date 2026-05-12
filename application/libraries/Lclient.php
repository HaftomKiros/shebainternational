<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Lclient {

    public function client_add_form() {
        $CI =& get_instance();
        $data['title'] = 'Add Client';
        $clientForm = $CI->parser->parse('client_page/add_client', $data, true);
        return $clientForm;
    }
}
