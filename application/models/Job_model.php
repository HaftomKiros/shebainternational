<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Job_model extends CI_Model {

    public function insert_job($data)
    {
        return $this->db->insert('jobs', $data);
    }
   public function get_all_jobs()
{
    // Fetch job list with company namef
    $jobs = $this->db->select('jobs.*, company.company_name')
                     ->from('jobs')
                     ->join('company', 'company.id = jobs.company_id', 'left')
                     ->order_by('jobs.id', 'DESC')
                     ->get()
                     ->result_array();

    // Load lookup tables
    $zones      = $this->db->get('zone')->result_array();
    $education  = $this->db->get('educational_level')->result_array();
    $fields     = $this->db->get('field_of_study')->result_array();

    // Convert lookups to ID => Name map
    $zoneMap        = array_column($zones, 'zone_name', 'id');
    $educationMap   = array_column($education, 'level', 'id');
    $fieldMap       = array_column($fields, 'field', 'id');

    // Process each job
    foreach ($jobs as &$job) {

        // ----- LOCATION (JSON) -----
        $locIds = json_decode($job['location'], true);
        if (is_array($locIds)) {
            $locNames = [];
            foreach ($locIds as $locId) {
                if (isset($zoneMap[$locId])) {
                    $locNames[] = $zoneMap[$locId];
                }
            }
            $job['location_names'] = implode(", ", $locNames);
        } else {
            $job['location_names'] = '';
        }

        // ----- EDUCATION (Single ID) -----
        $job['education_name'] = isset($educationMap[$job['education_level']])
                                    ? $educationMap[$job['education_level']]
                                    : 'Unknown';

        // ----- FIELD OF STUDY (JSON) -----
        $fieldIds = json_decode($job['field_of_study'], true);
        if (is_array($fieldIds)) {
            $fnames = [];
            foreach ($fieldIds as $fid) {
                if (isset($fieldMap[$fid])) {
                    $fnames[] = $fieldMap[$fid];
                }
            }
            $job['field_names'] = implode(", ", $fnames);
        } else {
            $job['field_names'] = '';
        }
    }

    return $jobs;
}
public function get_job_by_id($id)
    {
        return $this->db->select('jobs.*, company.company_name')
                        ->from('jobs')
                        ->join('company', 'company.id = jobs.company_id', 'left')
                        ->where('jobs.id', $id)
                        ->get()
                        ->row_array();
    }
   

    public function get_companies() {
    return $this->db->get('company')->result_array();
}

public function get_zones() {
    return $this->db->get('zone')->result_array();
}

public function get_education_levels() {
    return $this->db->get('educational_level')->result_array();
}

public function get_fields() {
    return $this->db->get('field_of_study')->result_array();
}

public function update_job($id, $data)
{
    $this->db->where('id', $id);
    $this->db->update('jobs', $data);

    // Return TRUE if update succeeded, FALSE if error
    if ($this->db->affected_rows() >= 0) {
        return true;
    } else {
        return false;
    }
}
public function delete_job($id)
{
    $this->db->where('id', $id);
    return $this->db->delete('jobs');
}




}
