<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class LwhyChooseUs {
    public function whychooseus_add_form() {
        $CI =& get_instance();
        $data['title'] = display('add_whychooseus');
        $whychooseusForm = $CI->parser->parse('whychooseus_page/add_whychooseus', $data, true);
        return $whychooseusForm;
    }

    

    

}

?>