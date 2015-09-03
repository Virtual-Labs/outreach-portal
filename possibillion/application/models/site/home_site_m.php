<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/*
  * Home_site_m Model
  * method 
  * 
  *
  * 
  */
class Home_site_m extends CI_Model{
    function __construct(){
        parent::__construct();
    }
		/**
  * get_cms method
  * @param  integer $id 
  * @param   integer $limit
  * @param  integer $offset
  * @return array  value
  */
	function get_cms($id=""){
	$query = $this->db->get_where('va_cms', array('title' =>$id));	
	if($query->num_rows() > 0){	 
	return  $query->row_array();
	}	
	else{	
	return 0;	
	}
	}
		/**
  * get_cms_title method fatch the cms data form database
  * @return array  value
  */
	function get_cms_title(){
	$query = $this->db->get('va_cms');	
	if($query->num_rows() > 0){	 
	return  $query->result_array();
	}	
	else{	
	return 0;	
	}
	}
		/**
  * va_contacts method: insert the post values in va_contacts table 
  * @param   string $data
  * @return integer insert id
  */
	 
	 function save_contact($data=""){
	 		$data = array(
					'name'=>$data['name'],
					'email'=>$data['email'],
					'comment'=>$data['comment']
					);	
	$this->db->insert('va_contacts',$data);
	 return  $this->db->insert_id();
	 }	
	 /**
  * signin method: check user availability
  * @param   string $postdata
  * @param   string $data
  * @return arry value
  */
	 
	 function signin($postdata="",$data=""){
        $names = array('1', '2');	
		$this->db->where_in("status",$names);
		$this->db->where(array("email"=>$postdata['email'],"password"=>md5($postdata['password'])));
		$query = $this->db->get("va_users");
		if ($query->num_rows() > 0)
		{
			$data=$query->row_array();
			$this->session->set_userdata('user_details',$data);
		   $row =$data;
		}else{
		  $row=0;
		}
		return $row;
	}
	 /**
  * verifyemail method: check user availability
  * @param   integer $id
  * @return integer 
  */
	 
	public function verifyemail($id="") {
			 $this->db->where('va_users.id',$id);
			 $qry=$this->db->get('va_users')->row_array();
			 if($qry['status']==0){
			 $this->db->where('va_users.id',$id);
			 $this->db->update('va_users', array('status'=>2));
			 return $this->db->affected_rows();
			 }
			 else{
			 return 0;
			 }
	}
	/**
  * check_email method: check user email availability
  * @param   string $email
  * @return boolean  
  */
	 
	public function check_email($email) {
			 $this->db->where('va_users.email',$email);
			 $qry=$this->db->get('va_users')->row_array();
			 if($qry){
			  return $qry;
			 }
			 else{
			 return 0;
			 }
	}
	/**
  * forgot_password method: change password
  * @param   string $data
  * @return boolean  
  */
	 
	public function forgot_password($data) {
			 $this->db->where('va_users.email',$data['email']);
			 $this->db->update('va_users', array('password'=>$data['password']));
			 if($this->db->affected_rows()>0){
			 return 1;
			 }
			 else{
			 return 0;
			 }
	}
	/**
  * change_password method: change password
  * @param   string $data
  * @param   integer $id
  * @return boolean  
  */
	
	public function change_password($id="",$data="") {
			 $this->db->where('va_users.id',$id);
			 $this->db->update('va_users', array('password'=>md5($data['password'])));
			 if($this->db->affected_rows()>0){
			 return 1;
			 }
			 else{
			 return 0;
			 }
	}
	/**
  * profileedit method: update the user profile information
  * @param   string $postdata
  * @param   integer $data
  * @return boolean  
  */
	
public function profileedit($postdata){
$data = array(
               'password' => md5($postdata['password']),
               'profile_image' => $postdata['profile_image'],
               'last_loggedin' => date('Y-m-d H:i:s')
            );
			
$this->db->where('id', $postdata['userid']);
$this->db->update('va_users', $data); 
 if($this->db->affected_rows()>0){
			 return 1;
			 }
			 else{
			 return 0;
			 }
}	
/**
  * updatelogin method: user last login information
  * @param   string $user_id
  * @param   integer $data
  * @return boolean  
  */
	public function updatelogin($user_id)
	{
		$data = array(
		'last_loggedin' => date('Y-m-d H:i:s')
		);
		$this->db->where('id', $user_id);
		$this->db->update('va_users', $data); 
		if($this->db->affected_rows()>0){
		return 1;
		}
		else{
		return 0;
		}
	}
	

	/**get_nodal method fatch the nodal center information
  * @param   string $value
  * @return array values
  */
	
	public function get_nodal($value='')
	{
			$ses_data= $this->session->userdata("user_details"); 
			$outreachid = $ses_data['id'];
			 $this->db->order_by('id','asc');
			 $query = $this->db->get_where('va_users',array('user_type'=>2,'outreach_id'=>$outreachid));	
		 return  $query->result_array(); 
	 	
	}
	/**addNodalcenter_m method  insert  the nodal center information in table
  * @param   string $postdata
  * @return integer insert id
  */
	public function addNodalcenter_m($postdata="")
	{
		if(!empty($postdata['permission_id'])) {
			$permission_id=$postdata['permission_id'];
		} else  {
			$permission_id=0;
			}
		$this->db->where('email', $postdata['email']);
		$query = $this->db->get('va_users'); 
		if($query->num_rows == 0){
		$data = array(
					'email'=>$postdata['email'],
					'name'=>$postdata['lastname'],
					'center'=>$postdata['fname'],
					'workshop'=>$postdata['workshop'],
					'participants'=>$postdata['participants'],
					'experiments'=>$postdata['experiments'],
					'outreach_id'=>$postdata['outreach_id'],
					'user_type'=>2,
					'password'=>md5($postdata['password']),
					'status'=>1,
					'created_on'=>date('Y-m-d H:i:s'));
		$this->db->insert('va_users',$data);		
		$insert_id = $this->db->insert_id();
		if($insert_id)
		{
			$data1 = array(
						'user_id'=>$insert_id,
						'last_name'=>$postdata['lastname']
						);
			$this->db->insert('va_user_details',$data1);
						

		}
		return $insert_id;
		}else{
				return 0;
			
			}
	}
	/**deleteNodalcenter method  delete Nodal center
  * @param   integer $nodalid
  * @return integer insert id
  */
	public function deleteNodalcenter($nodalid)
	{
		$data = array('status'=>3);
		$this->db->where('id',$nodalid);
		$this->db->update('va_users',$data);
		return $this->db->affected_rows();
	}
	/**editWorkshop method  facth the workshop data where workshop id
  * @param   integer $value
  * @return array value
  */
public function editWorkshop($value='')
	{
	 $query = $this->db->get_where('workshop',array('workshop_id'=>$value));	
	 return  $query->result_array();
	 	
	}
	/**addWorkshop1 method  insert the workshop data
  * @param   string $value
  * @return array value
  */
public function addWorkshop1($value)
	{
$this->db->insert('workshop',$value);
return $submitreportid= $this->db->insert_id();
	}
/**displayMap method  fatch the workshop data related to map
  * @param   integer $id
  * @return array value
  */
	public function displayMap(){
		$this->db->select("name,location,address,latitude,longitude,workshop_id");
		$query = $this->db->get_where('workshop',array('workshop_status'=>1));	
		return  $query->result_array();
	}
	/**get_report method  fatch the workshop report_data
  * @param   integer $value
  * @return array values
  */
	public function get_report($value='')
	{
	$ses_data=$this->session->userdata('user_details');
	 $query = $this->db->get_where('workshop_report',array('workshop_id'=>$value,'uid'=>$ses_data['id']));	
	 return  $query->result_array();
	}
	/**getWorkshop method  fatch the workshop detail data
  * @param   integer $value
  * @return array values
  */
	public function getWorkshop($value='')
	{
		/* $ses_data=$this->session->userdata('user_details'); 
		 $query = $this->db->get_where('workshop',array('outreach_id'=>$ses_data['id'],'workshop_status'=>1));	
	 return  $query->result_array(); */
	 $ses_data=$this->session->userdata('user_details'); 
	 $this->db->select('workshop.*,workshop_report.*');
$this->db->from('workshop');
$this->db->join('workshop_report', 'workshop.workshop_id = workshop_report.workshop_id', 'left'); 
$this->db->where('workshop.outreach_id',$ses_data['id']);
$this->db->where('workshop.workshop_status',1);
$query = $this->db->get();
return $query->result_array();	
	 

	}
	/**getWorkshop_m method  individual user workshop data
  * @param   integer $value
  * @return array values
  */
	public function getWorkshop_m($value='')
	{ 
	 	$ses_data=$this->session->userdata('user_details'); 
	 $this->db->select('workshop.*,workshop_report.*');
$this->db->from('workshop');
$this->db->join('workshop_report', 'workshop.workshop_id = workshop_report.workshop_id', 'left'); 
$this->db->where('workshop.outreach_id',$ses_data['id']);
$this->db->where('workshop.workshop_status',1);
$query = $this->db->get();
return $query->result_array();	 
	}
/**getWorkshopHistory method  fatch the  all workshops history
  * @param   integer $value
  * @return array values
  */	
public function getWorkshopHistory(){
		$ses_data=$this->session->userdata('user_details');
		echo $ses_data['id'];		
		 $query = $this->db->get_where('workshop',array('outreach_id'=>$ses_data['id'],'workshop_status'=>2));	
	 return  $query->result_array();
}
/**getWorkshopHistoryOutreach method  fatch the    workshops history for Outreach  individual user
  * @param   integer $ses_dataid
  * @return array values
  */
public function getWorkshopHistoryOutreach(){ 
	 $ses_data=$this->session->userdata('user_details'); 
	 $this->db->select('workshop.*,workshop_report.*');
$this->db->from('workshop');
$this->db->join('workshop_report', 'workshop.workshop_id = workshop_report.workshop_id', 'left'); 
$this->db->where('workshop.outreach_id',$ses_data['id']);
$this->db->where('workshop.workshop_status',2);
$query = $this->db->get();
return $query->result_array(); 
}
/**getWorkshopHistoryNodal method  fatch the    workshops history for nodal  individual user
  * @param   integer $ses_dataid
  * @return array values
  */
public function getWorkshopHistoryNodal(){
	 $ses_data=$this->session->userdata('user_details'); 
	 $this->db->select('workshop.*,workshop_report.*');
$this->db->from('workshop');
$this->db->join('workshop_report', 'workshop.workshop_id = workshop_report.workshop_id', 'left'); 
$this->db->where('workshop.uid',$ses_data['id']);
$this->db->where('workshop.workshop_status !=',1);
$query = $this->db->get();
return $query->result_array(); 
}
/**getworkshopgr method  fatch the workshops data for Outreach  individual user
  * @param   integer $ses_dataid
  * @return array values
  */
public function getworkshopgr(){
		$ses_data=$this->session->userdata('user_details'); 
 $this->db->select('workshop as value');
		 $query = $this->db->get_where('va_users',array('outreach_id'=>$ses_data['id']));	
	 return  $query->result_array();
}
/**getworkshopcreated method  fatch the workshops data for Outreach  individual user
  * @param   integer $ses_dataid
  * @return array values
  */
public function getworkshopcreated(){
		$ses_data=$this->session->userdata('user_details'); 
 $this->db->select('createworkshop as value');
		 $query = $this->db->get_where('va_users',array('outreach_id'=>$ses_data['id']));	
	 return  $query->result_array();
}
/**getnames method  fatch the usernaem 
  * @param   integer $ses_dataid
  * @return array values
  */
public function getnames(){
		$ses_data=$this->session->userdata('user_details'); 
 $this->db->select('name');
$query = $this->db->get_where('va_users',array('outreach_id'=>$ses_data['id']));	
	 return  $query->result_array();
}
/**getupcomingWorkshop method  fatch the upcoming workshops 
  * @param   integer $ses_dataid
  * @return array values
  */
	public function getupcomingWorkshop($value='')
	{ 
	$ses_data=$this->session->userdata('user_details');
	 $query = $this->db->get_where('workshop',array('uid'=>$ses_data['id']));	
	 return  $query->result_array();
	
	}
	/**getHomeWorkshop method  fatch the all upcoming workshops for home page 
  * @param   Null
  * @return array values
  */
public function getHomeWorkshop($value='')
{
	 $query = $this->db->get_where('workshop',array('workshop_status'=>1));	
	 return  $query->result_array();
	
}
/**updateWorkshop method  update the workshops
  * @param   string $value
  * @return integer values
  */
	public function updateWorkshop($value='')
	{
		 $this->db->where('workshop.workshop_id',$value['workshop_id']);
			 $this->db->update('workshop', $value);
			 return $this->db->affected_rows();
	}
	/**editProfile method  update the user profile
  * @param   string $value
  * @return integer values
  */
	public function editProfile($value='')
	{
		 $this->db->where('va_users.id',$value['id']);
			 $this->db->update('va_users', $value);
			 return $this->db->affected_rows();
	}
	/**deleteWorkshop method  delete the workshop 
  * @param   string $value
  * @return integer values
  */
	public function deleteWorkshop($value=''){
		$this->db->delete('workshop', array('workshop_id' => $value)); 
		return $this->db->affected_rows();
	}
	/**activeworkshop method  
  * @param   string $value
  * @return integer values
  */
	public function activeworkshop($value1=''){
		$value =array(
						'report_status'=>1
						);
		 $this->db->where('workshop_report.workshop_id',$value1);
			 $this->db->update('workshop_report', $value);
			 return $this->db->affected_rows();
	}
	/**submitReport_m method  
  * @param   string $inputdata
  * @return integer values
  */
	public function submitReport_m($inputdata=''){	
	$ses_data=$this->session->userdata('user_details'); 
	$report_data=$this->session->userdata('report_data');	
	$inputdata['uid']=$ses_data['id'];
	$inputdata['status']=1;
	if(!empty($report_data)){
	$this->db->where('report_id',$report_data[0]['report_id']);
	$this->db->update('workshop_report',$inputdata);
	$submitreportid=$report_data[0]['report_id'];
	}
	else{
		if($this->db->insert('workshop_report',$inputdata))
 $submitreportid= $this->db->insert_id();
 }
$value = array(
'report_id'=>$submitreportid
);
$this->db->where('workshop.workshop_id',$inputdata['workshop_id']);
			 $this->db->update('workshop', $value);
			 return $this->db->affected_rows();
	}
	/**editReport_m method  
  * @param   string $inputdata
  * @return integer values
  */
	public function editReport_m($inputdata=''){ 
	$ses_data=$this->session->userdata('user_details'); 
	$report_data=$this->session->userdata('report_data');	
	$inputdata['uid']=$ses_data['id'];
	$inputdata['status']=0;
	if(!empty($report_data)){
	$this->db->where('report_id',$report_data[0]['report_id']);
	$this->db->update('workshop_report',$inputdata);
	return $this->db->affected_rows();
	}
	else{
if($this->db->insert('workshop_report',$inputdata))
 return $this->db->insert_id();
	}
	}
/**getViewReport method  facth the workshop reports 
  * @param   string $value1
  * @return array values
  */
	public  function getViewReport($value1=''){
			 $this->db->select('workshop.*,workshop_report.*');
			 $this->db->from('workshop');
			 $this->db->join('workshop_report', 'workshop.workshop_id = workshop_report.workshop_id', 'left'); 
			 $this->db->where('workshop.workshop_id',$value1);
		 	 $query = $this->db->get();
			 return $query->result_array();	 
 		}
		/**approverepost_m method  facth the workshop reports 
  * @param   string $value1
  * @return array values
  */
	public function approverepost_m($value1=""){
	    $value = array(
			'workshop_status'=>2
			);
			$this->db->where('workshop.workshop_id',$value1['workshort_report']);
			 $this->db->update('workshop', $value);
			 return $this->db->affected_rows();
			}
			/**getGuidesMaterial method  facth the workshop Guides & Material 
  * @param  integer $status
  * @return array values
  */
			public function getGuidesMaterial()
{
	 $query = $this->db->get_where('workshop_documents',array('status'=>1));	
	 return  $query->result_array();
	
}
	/**getPresentationReporting method  facth the workshop Presentation Reporting 
  * @param  integer $status
  * @return array values
  */
public function getPresentationReporting()
{
	 $query = $this->db->get_where('presentation_reporting_documents',array('status'=>1));	
	 return  $query->result_array();
	
}
/**getWorkshopMetirial method  facth the workshop Workshop Metirial 
  * @param  integer $status
  * @return array values
  */
public function getWorkshopMetirial()
{
	 $query = $this->db->get_where('workshop_metirial_documents',array('status'=>1));	
	 return  $query->result_array();
	
}
/**workshopruncount method  facth the workshop run count 
  * @param  integer $status
  * @return integer values
  */
public function workshopruncount(){
	$query = $this->db->get_where('workshop',array('workshop_status'=>1)); 
	return $query->num_rows();
}
/**nodalcenterscount method  facth the nodal centers count
  * @param  integer $status
  * @return integer values
  */
public function nodalcenterscount(){
	$query = $this->db->get_where('va_users',array('user_type'=>2)); 
	return $query->num_rows();
}
/**labstakencount method  facth the labs taken count
  * @param  integer $status
  * @return array values
  */
public function labstakencount(){
	$this->db->select('(SELECT SUM(va_users.experiments ) FROM va_users WHERE va_users.user_type=2) AS labstaken'); 
	$query = $this->db->get('va_users');
	return $query->row_array();
	
}
public function cancelworkshop_m($inputdata=""){
	 $value = array(
			'workshop_status'=>3,
			'reason'=>$inputdata['reason']		
			);
			$this->db->where('workshop.workshop_id',$inputdata['workshop_id']);
			 $this->db->update('workshop', $value);
			 return $this->db->affected_rows();
	
}
public function experimentcount(){
$ses_data=$this->session->userdata('user_details'); 
	$query = $this->db->query("SELECT SUM(participate_experiment) as experiment FROM workshop_report WHERE uid=".$ses_data['id']); 
	return $query->row_array();
}
public function participatecount(){
$ses_data=$this->session->userdata('user_details'); 
	$query = $this->db->query("SELECT SUM(participate_attend) as participate FROM workshop_report WHERE uid=".$ses_data['id']); 
	return $query->row_array();
}
public function workshopallcountlogin(){
	$ses_data=$this->session->userdata('user_details'); 
	$this->db->select('workshop'); 
	$query = $this->db->get_where('va_users',array('id'=>$ses_data['id']));
	return $query->row_array();
	
}
public function workshopruncountlogin(){
	$ses_data=$this->session->userdata('user_details'); 
	$query = $this->db->get_where('workshop',array('workshop_status'=>1,'uid'=>$ses_data['id'])); 
	return $query->num_rows();
}
public function workshopruncountalllogin(){
	$ses_data=$this->session->userdata('user_details'); 
	$query = $this->db->get_where('workshop',array('uid'=>$ses_data['id'])); 
	return $query->num_rows();
}
public function experimentscountlogin(){
	$ses_data=$this->session->userdata('user_details'); 
	$this->db->select('experiments'); 
	$query = $this->db->get_where('va_users',array('id'=>$ses_data['id']));
	return $query->row_array();
	
}
public function participantscountlogin(){
	$ses_data=$this->session->userdata('user_details'); 
	$this->db->select('participants'); 
	$query = $this->db->get_where('va_users',array('id'=>$ses_data['id']));
	return $query->row_array();
	
}
public function traininging($value)
	{		
$this->db->insert('nodalcoordinatortraining',$value);
return $submitreportid1= $this->db->insert_id();
	}
public function get_training(){
$ses_data= $this->session->userdata("user_details"); 
			$outreachid = $ses_data['id'];
			 $this->db->order_by('id','asc');
			 $query = $this->db->get_where('nodalcoordinatortraining',array('outreachid'=>$outreachid));	
		 return  $query->result_array(); 
}
public function nodalcoordinatorcount(){
	$ses_data= $this->session->userdata("user_details"); 
			$outreachid = $ses_data['id'];
			 $this->db->order_by('id','asc');
			 $query = $this->db->get_where('va_users',array('user_type'=>2,'outreach_id'=>$outreachid));	
		 return  $query->num_rows(); 
}
public function nodalcoordinatorworkshop(){
		$ses_data= $this->session->userdata("user_details"); 
		$query = $this->db->query("SELECT SUM( experiments ) AS experiments, SUM( participants ) AS participants, SUM( workshop ) AS workshop
FROM va_users
WHERE  `outreach_id`=".$ses_data['id']); 
 return $query->row_array();
}
public function nodalcoordinatorcounthistroy(){
	$ses_data= $this->session->userdata("user_details"); 
	 $this->db->select('SUM(workshop_report.participate_attend) as participants,SUM(workshop_report.participate_experiment) as experiments,workshop_report.workshop_id');
			 $this->db->from('workshop');
			 $this->db->join('workshop_report', 'workshop.workshop_id = workshop_report.workshop_id', 'left'); 
			 $this->db->where('workshop.outreach_id',$ses_data['id']);
		 	 $query = $this->db->get();
			 return $query->result_array();	 
}
 public function nodalcoordinatorworkshopcount(){
	$ses_data= $this->session->userdata("user_details"); 
			$outreachid = $ses_data['id'];
			 $query = $this->db->get_where('workshop',array('outreach_id'=>$outreachid));		 
		 return  $query->num_rows();
}
}
?>