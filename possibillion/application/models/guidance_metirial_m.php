<?php 
	
class guidance_metirial_m extends CI_Model
{
	/*
  * guidance_metirial_m model
  * method 
  * 
  *
  * 
  */
	function __construct() {
        parent::__construct();
    	}
		/**
  * getguidance_metirial method:  fatch the get  guidan & cemetirial  data 
  * @param integer  $id 
  * @param  integer $limit
  * @param  integer $offset
  * @return array  value
  */
	public function getguidance_metirial($id="",$limit="",$offset="") {
		
		if ($this->session->userdata('guidance_metirial_filter_data') !== FALSE) {
			   $filters=$this->session->userdata('guidance_metirial_filter_data');
			   if($filters['date_range'] != "") {
					$daterange=explode("_",$filters['date_range']); 
					$from_date=date("Y-m-d H:i:s", strtotime($daterange[0]));
					
					$to_date=date("Y-m-d H:i:s", strtotime("23:59:59",strtotime($daterange[1]))); 
					
					$this->db->where('created_on >=', $from_date);
					$this->db->where('created_on <=', $to_date);  
			   		}
			   $this->db->like('document_name', $filters['document_name'],'both');
			   }
		
		if($id != '') {	
			$this->db->where('document_id',$id);
			}
		
		if($limit != "" || $offset != "") {
			$this->db->limit($limit,$offset);
			}
		$this->db->where('status != 3');
		$query = $this->db->select('*')
						  ->from('workshop_documents')
						  ->order_by('document_id','desc')
						  ->get();
		return $query->result_array();
	}
	/**
  * contacts_Count method:  count the number of records in guidan & cemetirial 
  * @param integer  $status 
  * @return integer  value
  */
	public function  guidance_metirial_Count() {
			$this->db->where('status != 3');
        	$query = $this->db->get('workshop_documents');
		return $query->num_rows();
		}
			/**
  * guidance_metirial_add method:  insert the  guidan & cemetirial   
  * @param string  $corporate_reg_id 
  * @param integer  $st_val 
  * @param integer  $date 
  * @return object
  */
		public function  guidance_metirial_add($data) {
				$this->db->insert('workshop_documents',$data);
				return   1;
		}
			/**
  * guidance_metirialUpdStatus method:  update documents in  guidan & cemetirial   
  * @param string  $corporate_reg_id 
  * @param integer  $st_val 
  * @param integer  $date 
  * @return object
  */
	public function guidance_metirialUpdStatus($corporate_reg_id,$st_val)	{
			$this->db->where('document_id', $corporate_reg_id);
			$this->db->set('status', $st_val);
			$this->db->set('edited_on',date('Y-m-d H:i:s'));
			$this->db->update('workshop_documents');
			return $this->db->affected_rows();
		}
		/**
  * delete method:  delete records in  guidan & cemetirial  
  * @param integer  $status 
  * @param integer  $id 
  * @return integer  value
  */
		public function delete($id)	{
			$this->db->where('document_id', $id);
			$this->db->set('status', 3);
			$this->db->set('created_on',date('Y-m-d H:i:s'));
			$this->db->update('workshop_documents');
			return $this->db->affected_rows();
		}
			/**
  * edit method:  update records in  guidan & cemetirial  
  * @param string  $postdata 
  * @param integer  $id 
  * @param integer  $status 
  * @return object
  */
		public function edit($id="",$postdata=""){
			$this->db->where('document_id', $id);
			$this->db->set('document_name',$postdata['document_name']);
			$this->db->set('document_path',$postdata['document_path']);
			$this->db->set('status', 1);
			$this->db->update('workshop_documents');
			return $this->db->affected_rows();
		}
  }
  ?>