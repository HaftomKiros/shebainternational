<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lteam {
    // Load the add member form
    public function team_add_form() {
        $CI =& get_instance();
        $data['title'] = display('add_team_member');
        $teamForm = $CI->parser->parse('team_page/add_member', $data, true);
        return $teamForm;
    }

    // You can add more reusable layout functions for team members here
    // Example: edit form, list view, etc.
}

?>
