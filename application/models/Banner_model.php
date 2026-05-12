<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Banner_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    // Insert a new banner
    public function insert_banner($data = array()) {
        return $this->db->insert('banners', $data);
    }

    // Get banner list with optional pagination
    public function banner_list($per_page = null, $page = null) {
        $this->db->select('*');
        $this->db->from('banners');
        $this->db->order_by('id', 'DESC');
        if ($per_page !== null && $page !== null) {
            $this->db->limit($per_page, $page);
        }
        $query = $this->db->get();
        return $query->num_rows() > 0 ? $query->result_array() : FALSE;
    }

    // Count total banners
    public function banner_count() {
        return $this->db->count_all('banners');
    }

    // Get single banner by ID
    public function get_banner_by_id($id) {
        $query = $this->db->get_where('banners', ['id' => $id]);
        return $query->row_array();
    }

    // Update banner
    public function update_banner($id, $data = array()) {
    $this->db->where('id', $id);
    return $this->db->update('banners', $data);
}


    // Delete banner
    public function delete_banner($id) {
        $this->db->where('id', $id);
        return $this->db->delete('banners');
    }
}
