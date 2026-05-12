<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lexperience {

    public function experience_add_form() {
        $CI =& get_instance();
        $data['title'] = display('add_experience');
        return $CI->parser->parse('experience/add_experience', $data, true);
    }
}
