<?php 
	
class Usermodel extends CI_Model
{/*
  * user model
  * method 
  */
	function __construct() {
        parent::__construct();
    	}
	/**
  * getUser method:  fatch the get  get Users  data 
  * @param integer  $id 
  * @param  integer $limit
  * @param  integer $offset
  * @return array  value
  */
	public function getUser($id="",$limit="",$offset="") {
		if ($this->session->userdata('user_filter_data') !== FALSE) {
			   $filters=$this->session->userdata('user_filter_data');
			   if($filters['date_range'] != "") {
					$daterange=explode("_",$filters['date_range']); 
					$from_date=date("Y-m-d H:i:s", strtotime($daterange[0]));
					
					$to_date=date("Y-m-d H:i:s", strtotime("23:59:59",strtotime($daterange[1]))); 
					
					$this->db->where('vuu.registered_on >=', $from_date);
					$this->db->where('vuu.registered_on <=', $to_date);  
			   		}
			   $this->db->like('vud.first_name', $filters['name'],'both');
			   }
		
		if($id != '') {	
			$this->db->where('user_id',$id);
			}
		
		if($limit != "" || $offset != "") {
			$this->db->limit($limit,$offset);
			}
		$query = $this->db->select('va_user_details.*')
						  ->from('va_user_details')						 
						  ->get();
		if ($query->num_rows() > 0)
		{
		  $row = $query->result_array(); 
		}else{
		  $row=0;
		}
		return $row;
	}/**
  * getUserCount method:  count the number of records in User Count 
  * @param integer  $status 
  * @return integer  value
  */
	public function getUserCount() {
		if ($this->session->userdata('user_filter_data') !== FALSE) {
			   $filters=$this->session->userdata('user_filter_data');
			   if($filters['date_range'] != "") {
					$daterange=explode("_",$filters['date_range']); 
					$from_date=date("Y-m-d H:i:s", strtotime($daterange[0]));
					
					$to_date=date("Y-m-d H:i:s", strtotime("23:59:59",strtotime($daterange[1]))); 
					
					$this->db->where('vuu.registered_on >=', $from_date);
					$this->db->where('vuu.registered_on <=', $to_date);  
			   		}
			   $this->db->like('vud.first_name', $filters['name'],'both');
			   }
	
		$query = $this->db->select('va_user_details.*')
						  ->from('va_user_details')
						  ->get();
		return $query->num_rows();
	}
  }
  ?>