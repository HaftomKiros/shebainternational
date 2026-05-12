<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lbanner {
    public function banner_add_form() {
        $CI =& get_instance();
        $data['title'] = display('add_banner');
        $bannerForm = $CI->parser->parse('banner/add_banner', $data, true);
        return $bannerForm;
    }

    

    

}

?>