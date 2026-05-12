<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact_model extends CI_Model {

    protected $table = 'contact_message'; // Correct table name

    public function __construct() {
        parent::__construct();
    }

    /**
     * Save contact message
     * @param array $data
     * @return int|bool Insert ID on success, false on failure
     */
    public function insert_message($data = []) {
        if($this->db->insert($this->table, $data)) {
            return $this->db->insert_id(); // Return the inserted record ID
        }
        return false;
    }

    /**
     * Get all contact messages
     * @param string $status Optional: filter by status (0=unread, 1=read)
     * @return array
     */
    public function get_messages($status = null) {
        if($status !== null) {
            $this->db->where('status', $status);
        }
        $query = $this->db->order_by('created_at', 'DESC')->get($this->table);
        return $query->result_array();
    }

    /**
     * Mark a message as read
     * @param int $id
     * @return bool
     */
    public function mark_as_read($id) {
        $this->db->where('id', $id);
        return $this->db->update($this->table, ['status' => 1, 'updated_at' => date('Y-m-d H:i:s')]);
    }

    /**
     * Optional: Get contact page info (like address, map, description)
     */
    public function get_contact_info() {
        $query = $this->db->get('contact_info');
        return $query->row_array();
    }
}
