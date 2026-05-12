<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Domain Migration Hook
 * Ensures old domain (gheraltaecotrekking.com) redirects to new domain (shebainternational.com)
 */
class Domain_redirect {
    public function check_old_domain() {
        $CI =& get_instance();
        
        // If old domain is accessed, redirect immediately with 301
        if (strpos($_SERVER["HTTP_HOST"], 'gheraltaecotrekking.com') !== false) {
            $new_url = 'https://www.shebainternational.com' . $_SERVER['REQUEST_URI'];
            redirect($new_url, 'location', 301);
        }
        
        // Force HTTPS on new domain
        if (empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] === 'off') {
            $new_url = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
            redirect($new_url, 'location', 301);
        }
        
        // Force www on new domain
        if (strpos($_SERVER['HTTP_HOST'], 'www.') === false && strpos($_SERVER['HTTP_HOST'], 'localhost') === false) {
            $new_url = 'https://www.' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
            redirect($new_url, 'location', 301);
        }
    }
}
?>
