<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lservices {
    public function service_add_form() {
        $CI =& get_instance();
        $data['title'] = display('add_service');
        $serviceForm = $CI->parser->parse('service_page/add_service', $data, true);
        return $serviceForm;
    }

    

    

}

?>