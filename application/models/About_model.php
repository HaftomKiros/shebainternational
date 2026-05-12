<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class About_model extends CI_Model {

    // count rows
    public function about_count()
    {
        return $this->db->count_all('about_us');
    }

    // list data with pagination
    public function about_list($limit, $start)
    {
        return $this->db
            ->order_by('id', 'DESC')
            ->limit($limit, $start)
            ->get('about_us')
            ->result_array();
    }

   public function get_about_by_id($id)
{
    return $this->db
        ->where('id', $id)
        ->get('about_us')
        ->row_array();
}

    // update
    public function update_about($id, $data)
    {
        return $this->db->where('id', $id)->update('about_us', $data);
    }

    
}

