<?php 
	
class Workshop_material_m extends CI_Model
{
	/*
  * Workshop_material_m model
  * method 
  * 
  *
  * 
  */
	function __construct() {
        parent::__construct();
    	}
	/**
  * getworkshop_material method:  fatch the get  workshop material data 
  * @param integer  $id 
  * @param  integer $limit
  * @param  integer $offset
  * @return array  value
  */
	public function getworkshop_material($id="",$limit="",$offset="") {
		if ($this->session->userdata('workshop_material_filter_data') !== FALSE) {
			   $filters=$this->session->userdata('workshop_material_filter_data');
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
						  ->from('workshop_metirial_documents')
						  ->order_by('document_id','desc')
						  ->get();
		//  echo $this->db->last_query();
		return $query->result_array();
	}
	/**
  * workshop_material_Count method:  count the number of records in workshop material
  * @param integer  $status 
  * @return integer  value
  */
	public function  workshop_material_Count() {
			$this->db->where('status != 3');
        	$query = $this->db->get('workshop_metirial_documents');
		return $query->num_rows();
		}
		/**
  * workshop_material_add method:  insert the   workshop material
  * @param string  $data 
  * @return object
  */	
		public function  workshop_material_add($data) {
				$this->db->insert('workshop_metirial_documents',$data);
				return   1;
		}
			/**
  * workshop_materialUpdStatus method:  update documents in workshop material
  * @param string  $corporate_reg_id 
  * @param integer  $st_val 
  * @param integer  $date 
  * @return object
  */
	public function workshop_materialUpdStatus($corporate_reg_id,$st_val)	{
			$this->db->where('document_id', $corporate_reg_id);
			$this->db->set('status', $st_val);
			$this->db->set('edited_on',date('Y-m-d H:i:s'));
			$this->db->update('workshop_metirial_documents');
			return $this->db->affected_rows();
		}
		/**
  * delete method:  delete records in workshop material
  * @param integer  $status 
  * @param integer  $id 
  * @return integer  value
  */
		public function delete($id)	{
			$this->db->where('document_id', $id);
			$this->db->set('status', 3);
			$this->db->set('created_on',date('Y-m-d H:i:s'));
			$this->db->update('workshop_metirial_documents');
			return $this->db->affected_rows();
		}
		/**
  * edit method:  update records in  workshop material
  * @param string  $postdata 
  * @param integer  $id 
  * @param integer  $status 
  * @return object
  */
		public function edit($id,$postdata){
			$this->db->where('document_id', $id);
			$this->db->set('document_name',$postdata['document_name']);
			$this->db->set('document_path',$postdata['document_path']);
			$this->db->set('status', 1);
			$this->db->update('workshop_metirial_documents');
			return $this->db->affected_rows();
		}
  }
  ?>