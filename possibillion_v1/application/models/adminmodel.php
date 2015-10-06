<?php
class adminmodel extends  CI_Model {
	function __construct() {
		// Call the Model constructor
		parent::__construct();
	}

	/**
	 * login method: check user availability
	 * @param   array $loginPostValues
	 * @return arry value or 0
	 */
	public function checkLogin($loginPostValues = "") {
		$email = $loginPostValues['email'];
		$password = $loginPostValues['password'];
		$result = $this -> db -> get_where('admin', array('email' => $email, 'password' => md5($password)));
		if ($result -> num_rows() > 0) {
			return $login_result = $result -> row_array();
		} else {
			return 0;
		}

	}

	/**
	 * changePassword method: change password
	 * @param   array $postdata
	 * @return object value or 0
	 */
	public function changePassword($postdata = "") {
		$query = $this -> db -> where('id', $postdata['admin_id']);
		$this -> db -> update('admin', array('password' => md5($postdata['new_password'])));
		$update_id = $this -> db -> affected_rows();
		if ($update_id > 0) {
			return $update_id;
		} else {
			return 0;
		}
	}

	/**
	 * getcoordinator method: fatch the get  outreach coordinator  data
	 * @return arry value
	 */
	public function getCoordinator() {
		$query = $this -> db -> get('outreachcoordinators');
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * addCoordinator method: insert the coordinator information  to the table
	 * @param   array $postdata
	 * @return object value or 0
	 */
	public function addCoordinator($postdata = "") {
		$this -> db -> where('email', $postdata['email']);
		$query = $this -> db -> get('outreachcoordinators');
		if ($query -> num_rows == 0) {
			$data = array('email' => $postdata['email'], 'name' => $postdata['last_name'], 'password' => md5($postdata['password']), 'created' => date('Y-m-d H:i:s'));
			$this -> db -> insert('outreachcoordinators', $data);
			$insert_id = $this -> db -> insert_id();
			return $insert_id;
		} else {
			return 0;

		}
	}

	/**
	 * editCoordinator method: update the coordinator information
	 * @param   array $postdata
	 * @return object value or 0
	 */

	public function editCoordinator($postdata = "") {
		$data = array('name' => $postdata['first_name'], 'email' => $postdata['email']);
		if (isset($postdata['image'])) {
			$data['image'] = $postdata['image'];
		}
		$query = $this -> db -> where('outreach_id', $postdata['outreach_id']);
		$this -> db -> update('outreachcoordinators', $data);
		$update_id = $this -> db -> affected_rows();
		if ($update_id > 0) {
			return $update_id;
		} else {
			return 0;
		}

	}

	/**
	 * getGuidanceMetirial method:  fatch the get  guidan & cemetirial  data
	 * @param  string $category
	 * @return array  value or 0
	 */
	public function getGuidanceMetirial($category = "") {
		$query = $this -> db -> get('workshopdocuments');
		$query = $this -> db -> get_where('workshopdocuments', array('category' => 'guidance_metirial'));
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * guidanceMetirialAdd method:  insert the  guidan & cemetirial
	 * @param array  $data
	 * @return object value or 0
	 */
	public function guidanceMetirialAdd($data) {
		$this -> db -> insert('workshopdocuments', $data);
		$insert_id = $this -> db -> insert_id();
		if ($insert_id > 0) {
			return $update_id;
		} else {
			return 0;
		}
	}

	/**
	 * guidanceMetirialDelete method:  delete the  guidan & cemetirial
	 * @param array  $id
	 * @return object value or 0
	 */
	public function guidanceMetirialDelete($id = '') {
		$query = $this -> db -> delete('workshopdocuments', array('id' => $id));
		if ($query) {
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * editGuidanceMetirial method: get the Guidance Metirial information
	 * @param   array $id
	 * @return array value or 0
	 */
	public function editGuidanceMetirial($id = '') {
		$query = $this -> db -> get('workshopdocuments');
		$query = $this -> db -> get_where('workshopdocuments', array('id' => $id));
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * guidanceMetirialUpdate method: update the coordinator information
	 * @param   array $postdata
	 * @param   string $id
	 * @return object value or 0
	 */

	public function guidanceMetirialUpdate($postdata = '', $id = "") {
		$this -> db -> where('id', $id);
		$this -> db -> update('workshopdocuments', $postdata);
		$update_id = $this -> db -> affected_rows();
		if ($update_id > 0) {

			return $update_id;
		} else {
			return 0;
		}

	}

	/**
	 * workshop_material method:  fatch the workshop & material  data
	 * @param  string $category
	 * @return array  value
	 */
	public function workshopMaterial($category = "") {
		$query = $this -> db -> get('workshopdocuments');
		$query = $this -> db -> get_where('workshopdocuments', array('category' => $category));
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * workshopMaterialAdd method:  insert the workshop & material
	 * @param array  $data
	 * @return object value or 0
	 */
	public function workshopMaterialAdd($data) {
		$this -> db -> insert('workshopdocuments', $data);
		$insert_id = $this -> db -> insert_id();
		if ($insert_id > 0) {
			return $update_id;
		} else {
			return 0;
		}
	}

	/**
	 * workshopMetirialDelete method:  delete the  workshop & material
	 * @param  string  $id
	 * @return object value or 0
	 */
	public function workshopMetirialDelete($id = '') {
		$query = $this -> db -> delete('workshopdocuments', array('id' => $id));
		if ($query) {
			return 1;
		} else {
			return 0;
		}

	}
/**
	 * editWorkshopMetirial method: update the workshop & material
	 * @param   array $postdata
	 * @param   string $id
	 * @return object value or 0
	 */
	public function editWorkshopMetirial($id = '') {
		$query = $this -> db -> get('workshopdocuments');
		$query = $this -> db -> get_where('workshopdocuments', array('id' => $id));
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * workshopMetirialUpdate method: update the workshop & material
	 * @param   array $postdata
	 * @param   string $id
	 * @return object value or 0
	 */

	public function workshopMetirialUpdate($postdata = '', $id = "") {
		$this -> db -> where('id', $id);
		$this -> db -> update('workshopdocuments', $postdata);
		$update_id = $this -> db -> affected_rows();
		if ($update_id > 0) {

			return $update_id;
		} else {
			return 0;
		}

	}

	/**
	 * presentationReporting method:  fatch the presentation & reporting  data
	 * @param  varchar $category
	 * @return array  value
	 */
	public function presentationReporting($category = "") {
		$query = $this -> db -> get('workshopdocuments');
		$query = $this -> db -> get_where('workshopdocuments', array('category' => $category));
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * presentationReportingDelete method:  delete the  presentation & reporting
	 * @param  string  $id
	 * @return object value or 0
	 */
	public function presentationReportingDelete($id = '') {
		$query = $this -> db -> delete('workshopdocuments', array('id' => $id));
		if ($query) {
			return 1;
		} else {
			return 0;
		}

	}

	/**
	 * presentationReportingAdd method:  insert the presentation & reporting
	 * @param array  $data
	 * @return object value or 0
	 */
	public function presentationReportingAdd($data) {
		$this -> db -> insert('workshopdocuments', $data);
		$insert_id = $this -> db -> insert_id();
		if ($insert_id > 0) {
			return $update_id;
		} else {
			return 0;
		}
	}
	/**
	 * editPresentationReporting method:  insert the presentation & reporting
	 * @param array  $data
	 * @return object value or 0
	 */
	public function editPresentationReporting($id = '') {
		$query = $this -> db -> get('workshopdocuments');
		$query = $this -> db -> get_where('workshopdocuments', array('id' => $id));
		if ($query -> num_rows() > 0) {
			$row = $query -> result_array();
		} else {
			$row = 0;
		}
		return $row;
	}

	/**
	 * presentationReportingUpdate method: update the presentation & reporting
	 * @param   array $postdata
	 * @param   string $id
	 * @return object value or 0
	 */

	public function presentationReportingUpdate($postdata = '', $id = "") {
		$this -> db -> where('id', $id);
		$this -> db -> update('workshopdocuments', $postdata);
		$update_id = $this -> db -> affected_rows();
		if ($update_id > 0) {

			return $update_id;
		} else {
			return 0;
		}

	}

}
?>