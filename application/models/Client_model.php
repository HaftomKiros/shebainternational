<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Client_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    // Insert client
    public function insert_client($data = array()) {
        return $this->db->insert('clients', $data);
    }

    // Get client list with pagination
    public function client_list($per_page = null, $page = null) {
        $this->db->select('*');
        $this->db->from('clients');
        $this->db->order_by('id', 'DESC');
        if ($per_page !== null && $page !== null) {
            $this->db->limit($per_page, $page);
        }
        $query = $this->db->get();
        return $query->num_rows() > 0 ? $query->result_array() : FALSE;
    }

    // Count total clients
    public function client_count() {
        return $this->db->count_all('clients');
    }

    // Get single client by ID
    public function get_client_by_id($id) {
        $query = $this->db->get_where('clients', ['id' => $id]);
        return $query->row_array();
    }

    // Update client
    public function update_client($id, $data = array()) {
        $this->db->where('id', $id);
        return $this->db->update('clients', $data);
    }

    // Delete client
    public function delete_client($id) {
        $this->db->where('id', $id);
        return $this->db->delete('clients');
    }
}
