<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
/*
 * homeSiteModel Model
 * method
 */
class homesitemodel extends CI_Model {
	function __construct() {
		parent::__construct();
	}

	/**
	 * login method: check user availability
	 * @param   string $postdata
	 * @param   string $data
	 * @return arry value
	 */

	function login($postdata = "", $data = "") {
		$this -> db -> where(array("email" => $postdata['email'], "password" => md5($postdata['password'])));
		$query = $this -> db -> get("outreachcoordinators");
		if ($query -> num_rows() > 0) {
			$data = $query -> row_array();
			$this -> session -> set_userdata('user_details', $data);
			$row = $data;
		} else {
			$row = 0;
		}
		return $row;
	}

	/********************************nodal*******************/
	/**
	 * NodalLogin method: check user availability
	 * @param   string $postdata
	 * @param   string $data
	 * @return arry value
	 */

	function NodalLogin($postdata = "", $data = "") {
		$this -> db -> where(array("email" => $postdata['email'], "password" => md5($postdata['password'])));
		$query = $this -> db -> get("nodalcoordinators");
		if ($query -> num_rows() > 0) {
			$data = $query -> row_array();
			$this -> session -> set_userdata('user_details', $data);
			$row = $data;
		} else {
			$row = 0;
		}
		return $row;
	}

	/********************************nodal*******************/

	/**
	 * checkEmail method: check user email availability
	 * @param   string $email
	 * @return boolean
	 */

	public function checkEmail($email) {
		$this -> db -> where('outreachcoordinators.email', $email);
		$query = $this -> db -> get('outreachcoordinators') -> row_array();
		if ($query) {
			return $query;
		} else {
			return 0;
		}
	}

	/**
	 * forgotPassword method: change password
	 * @param   string $data
	 * @return boolean
	 */

	public function forgotPassword($data) {
		$this -> db -> where('outreachcoordinators.email', $data['email']);
		$this -> db -> update('outreachcoordinators', array('password' => $data['password']));
		if ($this -> db -> affected_rows() > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * changePassword method: change password
	 * @param   string $data
	 * @param   integer $id
	 * @return boolean
	 */

	public function changePassword($id = "", $data = "") {
		$this -> db -> where('va_users.id', $id);
		$this -> db -> update('va_users', array('password' => md5($data['password'])));
		if ($this -> db -> affected_rows() > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * updatelogin method: user last login information
	 * @param   string $user_id
	 * @param   integer $data
	 * @return boolean
	 */
	public function updatelogin($user_id) {
		$data = array('last_loggedin' => date('Y-m-d H:i:s'));
		$this -> db -> where('id', $user_id);
		$this -> db -> update('va_users', $data);
		if ($this -> db -> affected_rows() > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	/**fatchNodalCoordinator method fatch the nodal center information
	 * @param   string $value
	 * @return array values
	 */

	public function fatchNodalCoordinator($value = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$this -> db -> select('nodalcoordinators.*,nodalcentres.*');
		$this -> db -> from('nodalcentres');
		$this -> db -> join('nodalcoordinators', 'nodalcoordinators.nodal_id = nodalcentres.nodal_id', 'left');
		$this -> db -> where('nodalcoordinators.outreach_id', $ses_data['outreach_id']);
		$query = $this -> db -> get();
		return $query -> result_array();

	}

	/**addNodalcenter method  insert  the nodal center information in table
	 * @param   string $postdata
	 * @return integer insert id
	 */
	public function addNodalcenter($postdata = "") {
		$ses_data = $this -> session -> userdata('user_details');
		$this -> db -> where('email', $postdata['email']);
		$query = $this -> db -> get('nodalcoordinators');
		if ($query -> num_rows == 0) {
			$data = array('email' => $postdata['email'], 'phone' => $postdata['phone'], 'name' => $postdata['name'], 'target_workshops' => $postdata['target_workshops'], 'target_participants' => $postdata['target_participants'], 'target_expriments' => $postdata['target_expriments'], 'outreach_id' => $ses_data['outreach_id'], 'image' => $postdata['mou'], 'password' => md5($postdata['password']));
			$this -> db -> insert('nodalcoordinators', $data);
			$insert_id = $this -> db -> insert_id();
			if ($insert_id) {
				$data1 = array('nodal_id' => $insert_id, 'name' => $postdata['name'], 'location' => $postdata['location']);
				$this -> db -> insert('nodalcentres', $data1);

			}
			return $insert_id;
		} else {
			return 0;

		}
	}

	/**deleteNodalcenter method  delete Nodal center
	 * @param   integer $nodalid
	 * @return integer insert id
	 */
	public function deleteNodalcenter($nodalid) {
		$data = array('status' => 3);
		$this -> db -> where('id', $nodalid);
		$this -> db -> update('va_users', $data);
		return $this -> db -> affected_rows();
	}

	/**editWorkshop method  fatch the workshop data where workshop id
	 * @param   integer $value
	 * @return array value
	 */
	public function editWorkshop($value = '') {
		$query = $this -> db -> get_where('workshops', array('workshop_id' => $value));
		return $query -> result_array();

	}

	/**addWorkshop method  insert the workshop data
	 * @param   string $value
	 * @return array value
	 */
	public function addWorkshop($value) {
		$this -> db -> insert('workshops', $value);
		return $submitreportid = $this -> db -> insert_id();
	}

	/**displayMap method  fatch the workshop data related to map
	 * @param   integer $id
	 * @return array value
	 */
	public function displayMap() {
		$this -> db -> select("name,location,latitude,longitude,workshop_id");
		$query = $this -> db -> get_where('workshops', array('status' => 0));
		return $query -> result_array();
	}

	/**getActiveWorkshop method  fatch the upcoming workshops
	 * @param   integer $ses_dataid
	 * @return array values
	 */
	public function getActiveWorkshop($value = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$status = 2;
		$this -> db -> where("status !=", $status);
		$query = $this -> db -> get_where('workshops', array('nodal_id' => $ses_data['nodal_id']));

		return $query -> result_array();

	}

	/**getActiveWorkshopOutreach method  fatch the upcoming workshops
	 * @param   integer $ses_dataid
	 * @return array values
	 */
	public function getActiveWorkshopOutreach($value = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$status = 0;
		$this -> db -> select('nodalcoordinators.*,workshops.*');
		$this -> db -> from('nodalcoordinators');
		$this -> db -> join('workshops', 'nodalcoordinators.nodal_id = workshops.nodal_id', 'left');
		$this -> db -> where('nodalcoordinators.outreach_id', $ses_data['outreach_id']);
		$this -> db -> where('workshops.status', $status);
		$query = $this -> db -> get();
		return $query -> result_array();

	}

	/**getPendingWorkshopOutreach method  fatch the upcoming workshops
	 * @param   integer $ses_dataid
	 * @return array values
	 */
	public function getPendingWorkshopOutreach($value = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$status = 1;
		$this -> db -> select('nodalcoordinators.*,workshops.*');
		$this -> db -> from('nodalcoordinators');
		$this -> db -> join('workshops', 'nodalcoordinators.nodal_id = workshops.nodal_id', 'left');
		$this -> db -> where('nodalcoordinators.outreach_id', $ses_data['outreach_id']);
		$this -> db -> where('workshops.status', $status);
		$query = $this -> db -> get();
		return $query -> result_array();

	}

	/**getPendingWorkshopHistory method  fatch the  workshops history
	 * @param   integer $ses_dataid
	 * @return array values
	 */
	public function getWorkshopHistory($value = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$status = 2;
		$this -> db -> select('nodalcoordinators.*,workshops.*,workshopreports.*,workshopphotos.*');
		$this -> db -> from('nodalcoordinators');
		$this -> db -> join('workshops', 'nodalcoordinators.nodal_id = workshops.nodal_id', 'left');
		$this -> db -> join('workshopreports', 'workshops.workshop_id = workshopreports.workshop_id');
		$this -> db -> join('workshopphotos', 'workshopphotos.workshop_report_id = workshopreports.workshop_report_id');
		$this -> db -> where('nodalcoordinators.outreach_id', $ses_data['outreach_id']);
		$this -> db -> where('workshops.status', $status);
		$query = $this -> db -> get();
		return $query -> result_array();
	}

	/**getWorkshopHistoryNodal method  fatch the  Nodal workshops history
	 * @param   integer $ses_dataid
	 * @return array values
	 */
	public function getWorkshopHistoryNodal($value = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$status = 2;
		$this -> db -> select('workshops.*,workshopreports.*,workshopphotos.*');
		$this -> db -> from('workshops');
		$this -> db -> join('workshopreports', 'workshops.workshop_id = workshopreports.workshop_id');
		$this -> db -> join('workshopphotos', 'workshopphotos.workshop_report_id = workshopreports.workshop_report_id');
		$this -> db -> where('workshops.nodal_id', $ses_data['nodal_id']);
		$this -> db -> where('workshops.status', $status);
		$query = $this -> db -> get();
		return $query -> result_array();
	}

	/**getworkshopupcoming method  fatch the upcoming workshops
	 * @param   integer $ses_dataid
	 * @return array values
	 */
	public function getworkshopupcoming() {
		$ses_data = $this -> session -> userdata('user_details');
		$query = $this -> db -> get_where('workshops', array('status' => 0));
		return $query -> result_array();

	}

	/**getHomeWorkshop method  fatch the all upcoming workshops for home page
	 * @param   Null
	 * @return array values
	 */
	public function getHomeWorkshop($value = '') {
		$query = $this -> db -> get_where('workshop', array('workshop_status' => 1));
		return $query -> result_array();

	}

	/**updateWorkshop method  update the workshops
	 * @param   string $value
	 * @return integer values
	 */
	public function updateWorkshop($value = '') {
		$this -> db -> where('workshops.workshop_id', $value['workshop_id']);
		$this -> db -> update('workshops', $value);
		return $this -> db -> affected_rows();
	}

	/**submitReport_m method
	 * @param   string $inputdata
	 * @return integer values
	 */
	public function submitReport($postdata = '') {
		$data = array('workshop_id' => $postdata['workshop_id'], 'attendance_sheet' => $postdata['upload_attend_sheet'], 'college_report' => $postdata['college_report'], 'participants_attended' => $postdata['participate_attend'], 'expriments_conducted' => $postdata['participate_experiment'], 'positive_comments' => $postdata['comments_positive'], 'negative_comments' => $postdata['comments_negative']);
		$this -> db -> insert('workshopreports', $data);
		$submitreportid = $this -> db -> insert_id();
		$value = array('workshop_report_id' => $submitreportid, 'path' => $postdata['workshop_photos']);
		$this -> db -> insert('workshopphotos', $value);
		$inputdata = array('status' => 1);
		$this -> db -> where('workshop_id', $postdata['workshop_id']);
		$this -> db -> update('workshops', $inputdata);
		return $this -> db -> affected_rows();
	}

	/**getViewReport method  fatch the workshop reports
	 * @param   string $value1
	 * @return array values
	 */
	public function getViewReport($value1 = '') {
		$this -> db -> select('workshops.*,workshopreports.*,workshopphotos.*');
		$this -> db -> from('workshopreports');
		$this -> db -> join('workshops', 'workshopreports.workshop_id = workshops.workshop_id', 'left');
		$this -> db -> join('workshopphotos', 'workshopphotos.workshop_report_id = workshopreports.workshop_report_id');
		$this -> db -> where('workshops.workshop_id', $value1);
		$query = $this -> db -> get();
		return $query -> result_array();

	}

	/**approverepost_m method  fatch the workshop reports
	 * @param   string $value1
	 * @return array values
	 */
	public function approverepost($value1 = "") {
		$value = array('status' => 2);
		$this -> db -> where('workshops.workshop_id', $value1['workshort_id']);
		$this -> db -> update('workshops', $value);
		return $this -> db -> affected_rows();
	}

	/**workshopruncount method  fatch the workshop run count
	 * @param  integer $status
	 * @return integer values
	 */
	public function workshopruncount() {
		$query = $this -> db -> get('workshops');
		return $query -> num_rows();
	}

	/**nodalcenterscount method  fatch the nodal centers count
	 * @param  integer $status
	 * @return integer values
	 */
	public function nodalcenterscount() {
		$query = $this -> db -> get('nodalcentres');
		return $query -> num_rows();
	}

	
	/**outreachcount method  fatch the outreach coordinators count
	 * @param  integer $status
	 * @return integer values
	 */
	public function outreachcount() {
		$query = $this -> db -> get('outreachcoordinators');
		return $query -> num_rows();
	}
	
	/**cancelWorkshop method  cancel Workshop
	 * @param  integer $status
	 * @return integer values
	 */

	public function cancelWorkshop($inputdata = "") {
		$value = array('status' => 3, 'reason' => $inputdata['reason']);
		$this -> db -> where('workshops.workshop_id', $inputdata['workshop_id']);
		$this -> db -> update('workshops', $value);
		return $this -> db -> affected_rows();

	}

	/**cancelWorkshop method  insert the workshop training data
	 * @param   string $postdata
	 * @return integer insert id
	 */

	public function traininging($postdata) {
		$this -> db -> insert('nodalcoordinatorstraining', $postdata);
		return $submitreportid1 = $this -> db -> insert_id();
	}

	/**fatchTrainingingCoordinator method  fatch the nodal coordinators traininging
	 * @param  integer $outreach_id
	 * @return array values
	 */
	public function fatchTrainingingCoordinator() {
		$ses_data = $this -> session -> userdata("user_details");
		$outreachid = $ses_data['outreach_id'];
		$query = $this -> db -> get_where('nodalcoordinatorstraining', array('outreach_id' => $outreachid));
		return $query -> result_array();
	}
	/**nodalcoordinatorworkshopcount method  fatch the nodal coordinator workshop count
	 * @param  integer $nodal_id
	 * @return integer values
	 */
	public function nodalcoordinatorworkshopcount() {
		$ses_data = $this -> session -> userdata("user_details");
		$nodal_id = $ses_data['nodal_id'];
		$query = $this -> db -> get_where('workshops', array('nodal_id' => $nodal_id));
		return $query -> num_rows();
	}
	/**getGuidesMaterial method  fatch the get Guides Material
	 * 
	 * @return array values
	 */
	public function getGuidesMaterial() {
		$query = $this -> db -> get_where('workshopdocuments', array('category' => guidance_metirial));
		$query = $this -> db -> get('workshopdocuments');
		return $query -> result_array();
	}
	/**getWorkshopMetirial method  fatch the get Workshop Metirial
	 * 
	 * @return array values
	 */
	public function getWorkshopMetirial() {
		$query = $this -> db -> get_where('workshopdocuments', array('category' => workshop_material));
		$query = $this -> db -> get('workshopdocuments');
		return $query -> result_array();
	}
	/**getPresentationReporting method  fatch the getPresentationReporting
	 * 
	 * @return array values
	 */
	public function getPresentationReporting() {
		$query = $this -> db -> get_where('workshopdocuments', array('category' => workshop_material));
		$query = $this -> db -> get('workshopdocuments');
		return $query -> result_array();
	}
	
	/**nodalcoordinatorcount method  nodal coordinator count
	 * @param  integer $outreach_id
	 * @return integer values
	 */
	public function nodalcoordinatorcount(){
			$ses_data= $this->session->userdata("user_details"); 
			$outreachid = $ses_data['outreach_id'];
			$query = $this->db->get_where('nodalcoordinators',array('outreach_id'=>$outreachid));	
		 return  $query->num_rows(); 
	}
	/**nodalcoordinatorworkshop method  nodal coordinator workshop
	 * @param  integer $outreach_id
	 * @return integer values
	 */
	public function nodalcoordinatorworkshop(){
		$ses_data= $this->session->userdata("user_details"); 
		$query = $this->db->query("SELECT SUM( target_expriments ) AS experiments, SUM( target_participants ) AS participants, SUM( target_workshops ) AS workshop
FROM nodalcoordinators
WHERE  `outreach_id`=".$ses_data['outreach_id']); 
 return $query->row_array();
	}

	/**participatecount method  get the participate count
	 * @param  integer $nodal_id
	 * @return integer values
	 */
	public function participatecount(){
				$ses_data=$this->session->userdata('user_details');
				$nodal_id = $ses_data['nodal_id']; 
				$ses_data= $this->session->userdata("user_details"); 
				$this->db->select('SUM(workshopreports.participants_attended) as participants,SUM(workshopreports.expriments_conducted) as experiments');
				$this->db->from('workshops');
				$this->db->join('workshopreports', 'workshops.workshop_id = workshopreports.workshop_id', 'left'); 
				$this->db->where('workshops.nodal_id',$nodal_id);
				$query = $this->db->get();
			return $query->result_array();
			
	}
	/**nodalcoordinatorcounthistroy method  nodal coordinator count history
	 * @param  integer $outreach_id
	 * @return integer values
	 */
	public function nodalcoordinatorcounthistory(){
			 $ses_data= $this->session->userdata("user_details"); 
			 $this->db->select('SUM(workshopreports.participants_attended) as participants,SUM(workshopreports.expriments_conducted) as experiments');
			 $this->db->from('workshops');
			 $this->db->join('workshopreports', 'workshops.workshop_id = workshopreports.workshop_id', 'left'); 
			 $this->db->join('nodalcoordinators', 'workshops.nodal_id = nodalcoordinators.nodal_id', 'left'); 
			 $this->db->where('nodalcoordinators.outreach_id',$ses_data['outreach_id']);
		 	 $query = $this->db->get();
			 return $query->result_array();	 
}
	/**nodalcoordinatorworkshopcount method  nodal coordinator workshop count
	 * @param  integer $outreach_id
	 * @return integer values
	 */
	public function outreachcoordinatorworkshopcount(){
			 $ses_data= $this->session->userdata("user_details"); 
			 $this->db->select('workshops.*,nodalcoordinators.*');
			 $this->db->from('workshops');
			 $this->db->join('nodalcoordinators', 'workshops.nodal_id = nodalcoordinators.nodal_id', 'left'); 
			 $this->db->where('nodalcoordinators.outreach_id',$ses_data['outreach_id']);
		 	 $query = $this->db->get();
	return  $query->num_rows();	 
}
	 public function change_password($postvalues) {
		$ses_data = $this->session->userdata("user_details"); 
		  $email = $ses_data['email'];
		 $data = array(
				"password"=>$postvalues
		 );
		$this -> db -> where(array("email" => $email));
		$this->db->update('outreachcoordinators', $data); 
		 $query = $this -> db -> affected_rows();
		if ($query  > 0) {
			return 1;
		} else {
			 $data = array(
				"password"=>$postvalues
		 );
		$this -> db -> where(array("email" => $email));
		$this->db->update('nodalcoordinators', $data); 
		return  $this -> db -> affected_rows();
			
		} 
	} 
}
?>