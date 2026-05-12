<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Hooks
| -------------------------------------------------------------------------
| This file lets you define "hooks" to extend CI without hacking the core
| files.  Please see the user guide for info:
|
|	https://codeigniter.com/user_guide/general/hooks.html
|
*/

// Domain Migration Hook - Ensure old domain redirects to new domain
$hook['post_controller_constructor'][] = array(
    'class'    => 'Domain_redirect',
    'function' => 'check_old_domain',
    'filename' => 'Domain_redirect.php',
    'filepath' => 'hooks',
    'params'   => array()
);
