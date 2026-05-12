<?php
class Feedback_model extends CI_Model {

    // Get all feedback
    public function get_all_feedback() {
        return $this->db->order_by('created_at', 'DESC')->get('contact_message')->result();
    }

    // Get unread feedback count
    public function get_unread_count() {
        $this->db->where('status', 0); // 0 = unread
        return $this->db->count_all_results('contact_message');
    }

    // Get single feedback by ID
    public function get_feedback_by_id($id) {
        return $this->db->where('id', $id)->get('contact_message')->row();
    }

    // Mark feedback as read
    public function mark_as_read($id) {
        $this->db->where('id', $id);
        return $this->db->update('contact_message', ['status' => 1]); // 1 = read
    }

    // Delete feedback
    public function delete_feedback($id) {
        $this->db->where('id', $id);
        return $this->db->delete('contact_message');
    }
}
