<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Research_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function insert_research($data = array()) {
        return $this->db->insert('research', $data);
    }

    public function research_list($per_page = null, $page = null) {
        $this->db->select('*')->from('research')->order_by('id', 'DESC');
        if ($per_page !== null && $page !== null) $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->num_rows() > 0 ? $query->result_array() : FALSE;
    }

    public function research_count() {
        return $this->db->count_all('research');
    }

    public function get_research_by_id($id) {
        $query = $this->db->get_where('research', ['id' => $id]);
        return $query->row_array();
    }
 // Get other research excluding current
    public function get_other_research($current_id) {
        return $this->db->where('id !=', $current_id)
                        ->order_by('id', 'DESC')
                        ->get('research')
                        ->result_array();
    }

    // Search research by title for AJAX
    public function search_research($query) {
        $this->db->like('title', $query);
        return $this->db->get('research')->result_array();
    }

    public function update_research($id, $data = array()) {
        $this->db->where('id', $id);
        return $this->db->update('research', $data);
    }

    public function delete_research($id) {
        $this->db->where('id', $id);
        return $this->db->delete('research');
    }
}
