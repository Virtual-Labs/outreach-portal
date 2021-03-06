<?php
class Contacts_m extends CI_Model {
/*
  * Contacts_m model
  * method 
  * 
  *
  * 
  */
    function __construct()
    {
        parent::__construct();
    }
		/**
  * getcontacts method:  fatch the contacts data 
  * @param integer  $id 
  * @param  integer $limit
  * @param  integer $offset
  * @return array  value
  */
	public function getcontacts($id = "",$limit= "",$offset= "")
	{
		if($id != '')
		{	
			$this->db->where('id',$id);
		}
		if($limit != "" || $offset != ""){

			$this->db->limit($limit,$offset);
		}
				 $this->db->order_by('id','desc');

		$query = $this->db->get_where('va_contacts',array('status != '=>'3'));
		return $query->result_array();
	}
	/**
  * contacts_Count method:  count the number of records in contacts 
  * @param integer  $status 
  * @return integer  value
  */
	public function contacts_Count()
	{
				 $this->db->order_by('id','desc');

		$query = $this->db->get_where('va_contacts',array('status != '=>'3'));
		return $query->num_rows();
	}
		/**
  * delete method:  delete records in contacts 
  * @param integer  $status 
  * @param integer  $id 
  * @return integer  value
  */
	public function delete($id="")
	{
		$this->db->where('id',$id);
		$this->db->set('status',3);
			$this->db->set('created_on',date('Y-m-d H:i:s'));
		$this->db->update('va_contacts');
		return $this->db->affected_rows();

	}
}

?>