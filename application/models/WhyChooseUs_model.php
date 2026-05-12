<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class WhyChooseUs_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    // Insert a new feature
    public function insert_feature($data = array()) {
        return $this->db->insert('why_choose_us', $data);
    }

    // Get feature list with optional pagination
    public function feature_list($per_page = null, $page = null) {
        $this->db->select('*');
        $this->db->from('why_choose_us');
        $this->db->order_by('id', 'DESC');
        if ($per_page !== null && $page !== null) {
            $this->db->limit($per_page, $page);
        }
        $query = $this->db->get();
        return $query->num_rows() > 0 ? $query->result_array() : FALSE;
    }

    // Count total features
    public function feature_count() {
        return $this->db->count_all('why_choose_us');
    }

    // Get single feature by ID
    public function get_feature_by_id($id) {
        $query = $this->db->get_where('why_choose_us', ['id' => $id]);
        return $query->row_array();
    }

    // Update feature
    public function update_feature($id, $data = array()) {
        $this->db->where('id', $id);
        return $this->db->update('why_choose_us', $data);
    }

    // Delete feature
    public function delete_feature($id) {
        $this->db->where('id', $id);
        return $this->db->delete('why_choose_us');
    }
}
