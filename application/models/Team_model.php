<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Team_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function insert_member($data = array()) {
        return $this->db->insert('team_members', $data);
    }

    public function member_list($per_page = null, $page = null) {
        $this->db->select('*')->from('team_members')->order_by('id', 'DESC');
        if ($per_page !== null && $page !== null) $this->db->limit($per_page, $page);
        $query = $this->db->get();
        return $query->num_rows() > 0 ? $query->result_array() : FALSE;
    }

    public function member_count() {
        return $this->db->count_all('team_members');
    }

    public function get_member_by_id($id) {
        $query = $this->db->get_where('team_members', ['id' => $id]);
        return $query->row_array();
    }

    public function update_member($id, $data = array()) {
        $this->db->where('id', $id);
        return $this->db->update('team_members', $data);
    }

    public function delete_member($id) {
        $this->db->where('id', $id);
        return $this->db->delete('team_members');
    }
}
