<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Experience_model extends CI_Model {

    public function insert_experience($data) {
        return $this->db->insert('experience', $data);
    }

    public function experience_list() {
        return $this->db->order_by('id','DESC')
                        ->get('experience')
                        ->result_array();
    }

    public function get_experience($id) {
        return $this->db->get_where('experience',['id'=>$id])->row_array();
    }

    public function update_experience($id, $data) {
        return $this->db->where('id',$id)->update('experience',$data);
    }

    public function delete_experience($id) {
        return $this->db->where('id',$id)->delete('experience');
    }
}
