<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Services_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }
    // Insert a new service
    public function insert_service($data = array()) {
        return $this->db->insert('services', $data);
    }
    // Get service list with optional pagination
    public function service_list($per_page = null, $page = null) {
        $this->db->select('*');
        $this->db->from('services');
        $this->db->order_by('id', 'DESC');
        if ($per_page !== null && $page !== null) {
            $this->db->limit($per_page, $page);
        }
        $query = $this->db->get();
        return $query->num_rows() > 0 ? $query->result_array() : FALSE;
    }

    // Count total services
    public function service_count() {
        return $this->db->count_all('services');
    }

    // Get single service by ID
    public function get_service_by_id($id) {
        $query = $this->db->get_where('services', ['id' => $id]);
        return $query->row_array();
    }
    // Get all services except a specific ID
    // Get other services except current
public function get_other_services($id) {
    $this->db->where('id !=', $id);
    $this->db->order_by('id', 'DESC');
    $query = $this->db->get('services');
    return $query->num_rows() > 0 ? $query->result_array() : [];
}

// Search services dynamically
public function search_services($query) {
    $this->db->like('title', $query);
    $this->db->or_like('description', $query);
    $this->db->order_by('id', 'DESC');
    $query = $this->db->get('services');
    return $query->num_rows() > 0 ? $query->result_array() : [];
}


    // Update service
    public function update_service($id, $data = array()) {
        $this->db->where('id', $id);
        return $this->db->update('services', $data);
    }

    // Delete service
    public function delete_service($id) {
        $this->db->where('id', $id);
        return $this->db->delete('services');
    }
}
