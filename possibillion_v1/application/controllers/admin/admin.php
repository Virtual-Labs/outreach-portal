<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
class admin extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://localhostp/outreach/admin
	 *	- or -
	 * 		http://localhostp/outreach/admin/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 */
	public function __construct() {
		error_reporting(0);
		parent::__construct();
		//$this->loggedIn();
		$this -> output -> set_header('Last-Modified:' . gmdate('D, d M Y H:i:s') . 'GMT');
		$this -> output -> set_header('Cache-Control: no-store, no-cache, must-revalidate');
		$this -> output -> set_header('Cache-Control: post-check=0, pre-check=0', false);
		$this -> output -> set_header('Pragma: no-cache');
		$this -> load -> library('form_validation');
		$this -> load -> model(array('adminModel'));
		$this -> load -> model('homesitemodel');
		$this -> load -> helper(array('form', 'url'));
	}

	/**
	 * Home Page Index (Login page for outreach Admin)   If Admin session exist redirecting to dashboard else Login Page
	 * @param Null
	 * @return object  if success Dashboard else Login View
	 */
	public function index() {
		$content = "dashboard";
		if ($this -> session -> flashdata('msg')) {
			$data['msg'] = $this -> session -> flashdata('msg');
		}
		$logged = $this -> session -> userdata('adminDetails');
		if ($logged === FALSE) {
			$this -> load -> view('admin/home/login');
		} else {
			$content = "dashboard";
			$this -> render($content);
			$data['nodalcenters'] = $this -> homesitemodel -> nodalcenterscount();
			$data['workshoprun'] = $this -> homesitemodel -> workshopruncount();
			$data['outreachcount'] = $this -> homesitemodel -> outreachcount();
			$this -> load -> view('admin/home/dashboard', $data);
		}
	}

	/**  admin login Authenticating
	 *  here email and password  are required fields
	 *  admin login successfully it rediret to admin dashboard.
	 * */
	public function checkLogin($login_post_values = "") {

		$content = "dashboard";
		$this -> form_validation -> set_rules('email', 'email', 'required', 'trim|xss_clean');
		$this -> form_validation -> set_rules('password', 'password', 'required', 'trim|xss_clean');
		if ($this -> form_validation -> run() == FALSE) {
			redirect("admin");
		} else {
			$login_post_values = $this -> input -> post();
			$login_result = $this -> adminModel -> checkLogin($login_post_values);
			if ($login_result != 0) {
				$this -> session -> set_userdata('adminDetails', $login_result);
				$this -> render($content);
				$this -> load -> view('admin/home/dashboard');
			} else {
				$this -> session -> set_flashdata('msg', 'Invalide Username or Password');
				redirect('admin', 'refresh');
			}
		}
	}

	/**
	 * changePassword   Changing Admin Password
	 * @param string $home_page_data
	 * @param string $postdata
	 * @param string $notification
	 * @return object  if success Dashboard else Change Password View
	 */
	public function changePassword($home_page_data = "", $postdata = "", $notification = "") {
		$this -> loggedIn();
		$content = "dashboard";
		$home_page_data['menu'] = "dashboard";
		$config_rules = array( array('field' => 'curr_password', 'label' => 'Current Password', 'rules' => 'required|min_length[5]|max_length[20]'), array('field' => 'new_password', 'label' => 'New Password', 'rules' => 'required|min_length[5]|max_length[20]|matches[retype_password]'), array('field' => 'retype_password', 'label' => 'Re-type New Password', 'rules' => 'required|min_length[5]|max_length[20]'));
		$this -> form_validation -> set_rules($config_rules);
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		$session_data = $this -> session -> userdata('adminDetails');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/home/changePassword', $home_page_data);
		} else {
			$curr_password = md5($this -> input -> post('curr_password'));
			$new_password = md5($this -> input -> post('new_password'));
			if ($curr_password == $new_password) {
				$home_page_data['msg'] = "Existing password and New Password is not be the same";
				$this -> render($content);
				$this -> load -> view('admin/home/changePassword', $home_page_data);
			}
			if ($curr_password != $session_data['password']) {
				$home_page_data['msg'] = "Existing password is wrong";
				$this -> render($content);
				$this -> load -> view('admin/home/changePassword', $home_page_data);
			} else {
				$postdata = $this -> input -> post();
				$postdata['admin_id'] = $session_data['id'];
				$result = $this -> adminModel -> changePassword($postdata);
				if ($result == 1) {
					$this -> session -> set_flashdata('msg', 'Password Successfully Changed');
					redirect('admin');
				} else {
					$home_page_data['msg'] = "Sorry try again";
					$this -> render($content);
					$this -> load -> view('admin/home/changePassword', $home_page_data);
				}
			}

		}

	}

	/**
	 * dashboard   outreach coordinator
	 * @param string $staff_filter_data
	 * @return  object outreach coordinator Listing View
	 */
	public function coordinator($id = "", $limit = "", $offset = "") {
		$this -> loggedIn();
		$content = "coordinator";
		if ($this -> session -> flashdata('msg')) {
			$home_page_data['msg'] = $this -> session -> flashdata('msg');
		}
		$this -> load -> library('my_pagination');
		$config['base_url'] = base_url() . 'admin/home/coordinator';
		$config['total_rows'] = count($this -> adminModel -> getCoordinator());
		$config['per_page'] = 10;
		$config['full_tag_open'] = '<div id = "datatable2_paginate" class="dataTables_paginate paging_bs_full "><ul class="pagination">';
		$config['full_tag_close'] = '</ul></div>';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a>';
		$config['cur_tag_close'] = '</a><li>';
		$config['next_link'] = 'Next';
		$config['prev_link'] = 'Prev';
		$config['num_links'] = 6;
		$config['uri_segment'] = 4;
		$limit = $config['per_page'];
		$offset = $this -> uri -> segment(4);
		$this -> my_pagination -> initialize($config);
		$home_page_data['coordinatorList'] = $this -> adminModel -> getCoordinator();
		$home_page_data['pagination'] = $this -> my_pagination -> create_links();
		$this -> render($content);
		$this -> load -> view('admin/home/coordinatorList', $home_page_data);
	}

	/**
	 * edit outreach Coordinator   Updating coordinator Data
	 * @param string $hidden_coordinator_id
	 * @param string $postdata
	 * @return  object  if success redirect to outreach coordinator listing else outreach coordinator Edit View
	 */
	public function editCoordinator($hidden_coordinator_id = "", $postdata = "") {
		$this -> loggedIn();
		$content = "coordinator";
		$this -> form_validation -> set_rules('first_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_rules('email', 'email', 'required|xss_clean|valid_email');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> input -> post())
			$hidden_coordinator_id = $this -> input -> post('outreach_id');
		else

			$hidden_coordinator_id = base64_decode($this -> uri -> segment(4));
		$home_page_data['hidden_coordinator_id'] = $hidden_coordinator_id;
		$home_page_data['coordinatorList'] = element(0, $this -> adminModel -> getcoordinator($hidden_coordinator_id));
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/home/editCoordinator', $home_page_data);
		} else {
			$session_data = $this -> session -> userdata('adminDetails');
			$postdata = $this -> input -> post();
			$result = $this -> adminModel -> editCoordinator($postdata);
			if ($result >= 0) {
				$this -> session -> set_flashdata('msg', 'Coordinator updated successfully');
				redirect('admin/admin/coordinator', 'refresh');
				//on success, redirect to view page.
			} else {
				$this -> session -> set_flashdata('msg', 'Sorry try again');
				redirect('admin/admin/coordinator', 'refresh');
				// on failure
			}
		}
	}

	/**
	 * addCoordinator
	 * @param string $home_page_data
	 * @param string $postdata
	 * @return  object  if success redirect to outreach coordinator Listing  else add outreach coordinator View
	 */
	public function addCoordinator($message = "", $home_page_data = "", $postdata = "") {
		$this -> loggedIn();
		$content = "coordinator";
		if ($this -> session -> flashdata('msg')) {
			$data['msg'] = $this -> session -> flashdata('msg');
		}
		$home_page_data['menu'] = "Coordinator";
		$this -> form_validation -> set_rules('last_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_rules('email', 'email', 'required|xss_clean|valid_email');

		if ($this -> form_validation -> run() == FALSE)//if validates,  adding.
		{
			$this -> render($content);
			$this -> load -> view('admin/home/addCoordinator', $home_page_data);
		} else {
			$session_data = $this -> session -> userdata('adminDetails');
			$postdata = $this -> input -> post();
			$postdata['admin_id'] = $session_data['admin_id'];
			$this -> load -> helper('string');
			$postdata['password'] = random_string('alnum', 6);
			$result = $this -> adminModel -> addCoordinator($postdata);
			if ($result > 0) {
				$message = "<html><head><META http-equiv='Content-Type' content='text/html; charset=utf-8'>
                                   </head><body>
                                      <div style='margin:0;padding:0'>
 	                                <table border='0' cellspacing='0' cellpadding='0'>
    	                           <tbody>
								   <tr>
				                        <td valign='top'><p> Hi Outreach  Coordinator,</p></td>
		                           </tr>
		                           <tr>
				                        <td valign='top'><p> Your   follow the below details to login here " . base_url() . "</p></td>
		                           </tr>
		                          <tr>
				                       <td valign='top'><p><strong>Outreach Admin Email-id :</strong> " . $postdata['email'] . "</p></td>
		                          </tr>
								  <tr>
				                       <td valign='top'><p><strong>Outreach Admin Password :</strong> " . $postdata['password'] . "</p></td>
		                          </tr>
		                    </tbody>
	                    </table>  
                     </div>
                    </body></html>";

				$to = $postdata['email'];
				$subject = "Your Outreach  account Password";
				$headers = 'MIME-Version: 1.0' . "\r\n";
				$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
				mail($to, $subject, $message, $headers);
				$this -> session -> set_flashdata('msg', 'Outreach coordinator added successfully');
				redirect('admin/coordinators', 'refresh');
			} else {
				$this -> session -> set_flashdata('msg', 'Outreach coordinator already exists');
				redirect('admin/coordinators', 'refresh');
				// on failure
			}
		}
	}

	/**
	 * guidance metirial   List
	 * @param string $category
	 * @return object workshop material Listing View
	 */
	public function guidanceMetirial($category = "") {
		$this -> loggedIn();
		$content = "guidanceMetirial";
		$category = $this -> uri -> segment(2);
		$guidance_metirialData['guidance_metirial_details'] = $this -> adminModel -> getGuidanceMetirial($category);
		$this -> render($content);
		$this -> load -> view('admin/documents/guidance_metirial_view', $guidance_metirialData);
	}

	/**
	 * add   Create guidance material Page
	 * @param string $guidance_metirialData
	 * @param string $postdata
	 * @return object  if success redirect to guidance material Listing View with Success Message else Create guidance material View
	 */
	public function guidanceMetirialAdd($guidance_metirialData = "", $postdata = "") {
		$this -> loggedIn();
		$content = "guidanceMetirial";
		$this -> form_validation -> set_rules('document_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/documents/guidance_metirial_add');
		} else if ($this -> input -> post()) {
			$target_dir = 'assests/uploads/';
			$target_file = $target_dir . basename($_FILES["document_path"]["name"]);
			if (move_uploaded_file($_FILES["document_path"]["tmp_name"], $target_file)) {
				$guidance_metirial = $_FILES["document_path"]["name"];
				$postdata = array('name' => $this -> input -> post('document_name'), 'path' => $guidance_metirial, 'category' => "guidance_metirial");
				$upd_status = $this -> adminModel -> guidanceMetirialAdd($postdata);
				if ($upd_status > 0) {
					$this -> session -> set_flashdata('msg', 'Guidance metirial failed to create');
					redirect('admin/guidance_metirial');
				} else {
					$this -> session -> set_flashdata('msg', ' Guidance metirial created successfully');
					redirect('admin/guidance_metirial');
				}
			} else {
				$this -> session -> set_flashdata('msg', 'Please upload document');
				$this -> render($content);
				$this -> load -> view('admin/documents/guidance_metirial_add');
			}

		}
	}

	/**
	 * delete method:  delete records in  guidan & cemetirial
	 * @param integer  $id
	 * @return integer  value
	 */
	public function guidanceMetirialDelete($id) {
		$this -> loggedIn();
		$content = "guidanceMetirial";
		$id = base64_decode($this -> uri -> segment(3));
		$guidance_metirialData['menu'] = "documents";
		$result = $this -> adminModel -> guidanceMetirialDelete($id);
		if ($result > 0) {
			$this -> session -> set_flashdata('msg', 'Guidance metirial deleted successfully');
			redirect('admin/guidance_metirial');
		} else {
			$this -> session -> set_flashdata('msg', 'Guidance metirial deleted Fails');
			redirect('admin/guidance_metirial');
		}
	}

	/** edit   guidance_metirial Page
	 * @param string $postdata
	 *  @return object  success redirect to presentation reporting View with Success Message
	 * */
	public function guidanceMetirialEdit($value = '') {
		$this -> loggedIn();
		$content = "guidanceMetirial";
		$id = base64_decode($this -> uri -> segment(3));
		$guidance_metirialData['guidance_metirial_data'] = $this -> adminModel -> editGuidanceMetirial($id);
		$this -> load -> library('form_validation');
		$this -> form_validation -> set_rules('document_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/documents/guidance_metirial_edit', $guidance_metirialData);
		} else if ($this -> input -> post()) {
			$session_data = $this -> session -> userdata('adminDetails');
			$target_dir = 'assests/uploads/';
			$target_file = $target_dir . basename($_FILES["document_path"]["name"]);
			if (move_uploaded_file($_FILES["document_path"]["tmp_name"], $target_file)) {
				$guidance_metirial = $_FILES["document_path"]["name"];
				$postdata = array('name' => $this -> input -> post('document_name'), 'path' => $guidance_metirial, 'category' => "guidance_metirial");
				$upd_status = $this -> adminModel -> guidanceMetirialUpdate($postdata, $id);
				if ($upd_status > 0) {
					$this -> session -> set_flashdata('msg', 'Guidance metirial updated successfully');
					redirect('admin/guidance_metirial');
				} else {
					$this -> session -> set_flashdata('msg', 'Guidance metirial failed to update');
					redirect('admin/guidance_metirial');
				}

			} else {
				$this -> session -> set_flashdata('msg', 'Please upload document');
				$this -> render($content);
				redirect('admin/guidance_metirial');
			}
		}
	}

	/**
	 * workshop material List
	 * @param string $category
	 * @return object workshop material Listing View
	 */
	public function workshopMaterial($category = "") {
		$this -> loggedIn();
		$content = "workshopMaterial";
		$category = $this -> uri -> segment(2);
		$workshop_materialData['workshop_material_details'] = $this -> adminModel -> workshopMaterial($category);
		$this -> render($content);
		$this -> load -> view('admin/documents/workshop_material_view', $workshop_materialData);
	}

	/**
	 * add   Create workshop material Page
	 * @param string $postdata
	 * @return object  if success redirect to workshop material Listing View with Success Message else Create workshop material View
	 */
	public function workshopMaterialAdd($guidance_metirialData = "", $postdata = "") {
		$this -> loggedIn();
		$content = "workshopMaterial";
		$this -> form_validation -> set_rules('document_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/documents/workshop_material_add');
		} else if ($this -> input -> post()) {
			$target_dir = 'assests/uploads/';
			$target_file = $target_dir . basename($_FILES["document_path"]["name"]);
			if (move_uploaded_file($_FILES["document_path"]["tmp_name"], $target_file)) {
				$guidance_metirial = $_FILES["document_path"]["name"];
				$postdata = array('name' => $this -> input -> post('document_name'), 'path' => $guidance_metirial, 'category' => "workshop_material");
				$upd_status = $this -> adminModel -> workshopMaterialAdd($postdata);
				if ($upd_status > 0) {
					$this -> session -> set_flashdata('msg', ' Workshop metirial failed to create');
					redirect('admin/workshop_material');
				} else {
					$this -> session -> set_flashdata('msg', 'Workshop metirial created successfully');
					redirect('admin/workshop_material');
				}
			} else {
				$this -> session -> set_flashdata('msg', 'Please upload document');
				$this -> render($content);
				$this -> load -> view('admin/documents/workshop_material_add');
			}

		}
	}

	/**
	 * delete method:  delete records in  workshop & cemetirial
	 * @param integer  $id
	 * @return integer  value
	 */
	public function workshopMetirialDelete($id) {
		$this -> loggedIn();
		$content = "workshopMaterial";
		$id = base64_decode($this -> uri -> segment(3));
		$result = $this -> adminModel -> workshopMetirialDelete($id);
		if ($result > 0) {
			$this -> session -> set_flashdata('msg', 'Workshop metirial deleted successfully');
			redirect('admin/workshop_material');
		} else {
			$this -> session -> set_flashdata('msg', 'Workshop metirial deleted Fails');
			redirect('admin/workshop_material');
		}
	}

	/** edit   workshop metirial Page
	 * @param string $postdata
	 *  @return object  success redirect to presentation reporting View with Success Message
	 * */
	public function workshopMetirialEdit($id = '') {
		$this -> loggedIn();
		$content = "workshopMaterial";
		$id = base64_decode($this -> uri -> segment(3));
		$guidance_metirialData['workshop_material_data'] = $this -> adminModel -> editWorkshopMetirial($id);
		$this -> load -> library('form_validation');
		$this -> form_validation -> set_rules('document_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/documents/workshop_metirial_edit', $guidance_metirialData);
		} else if ($this -> input -> post()) {
			$session_data = $this -> session -> userdata('adminDetails');
			$target_dir = 'assests/uploads/';
			$target_file = $target_dir . basename($_FILES["document_path"]["name"]);
			if (move_uploaded_file($_FILES["document_path"]["tmp_name"], $target_file)) {
				$guidance_metirial = $_FILES["document_path"]["name"];
				$postdata = array('name' => $this -> input -> post('document_name'), 'path' => $guidance_metirial, 'category' => "workshop_material");
				$upd_status = $this -> adminModel -> workshopMetirialUpdate($postdata, $id);
				if ($upd_status > 0) {
					$this -> session -> set_flashdata('msg', 'Workshop metirial updated successfully');
					redirect('admin/workshop_material');
				} else {
					$this -> session -> set_flashdata('msg', 'Workshop metirial  failed to update');
					redirect('admin/workshop_material');
				}

			}
		}
	}

	/**
	 * presentation reporting List
	 * @param string $category
	 * @return object presentation reporting Listing View
	 */
	public function presentationReporting() {
		$this -> loggedIn();
		$content = "presentationReporting";
		$category = $this -> uri -> segment(2);
		$presentation_reportingData['presentation_reporting_details'] = $this -> adminModel -> presentationReporting($category);
		$this -> render($content);
		$this -> load -> view('admin/documents/presentation_reporting_view', $presentation_reportingData);
	}

	/**
	 * delete method:  delete records in  presentation reporting
	 * @param integer  $id
	 * @return integer  value
	 */
	public function presentationReportingDelete($id) {
		$this -> loggedIn();
		$content = "presentationReporting";
		$id = base64_decode($this -> uri -> segment(3));
		$result = $this -> adminModel -> presentationReportingDelete($id);
		if ($result > 0) {
			$this -> session -> set_flashdata('msg', 'Presentation reporting deleted successfully');
			redirect('admin/presentation_reporting');
		} else {
			$this -> session -> set_flashdata('msg', 'Presentation reporting deleted Fails');
			redirect('admin/presentation_reporting');
		}
	}

	/**
	 * add   presentation reporting Page
	 * @param string $postdata
	 * @return object  if success redirect to workshop material Listing View with Success Message else Create workshop material View
	 */
	public function presentationReportingAdd($postdata = "") {
		$this -> loggedIn();
		$content = "presentationReporting";
		$this -> form_validation -> set_rules('document_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/documents/presentation_reporting_add');
		} else if ($this -> input -> post()) {
			$target_dir = 'assests/uploads/';
			$target_file = $target_dir . basename($_FILES["document_path"]["name"]);
			if (move_uploaded_file($_FILES["document_path"]["tmp_name"], $target_file)) {
				$guidance_metirial = $_FILES["document_path"]["name"];
				$postdata = array('name' => $this -> input -> post('document_name'), 'path' => $guidance_metirial, 'category' => "presentation_reporting");
				$upd_status = $this -> adminModel -> presentationReportingAdd($postdata);
				if ($upd_status > 0) {
					$this -> session -> set_flashdata('msg', ' Presentation reporting failed to create');
					redirect('admin/presentation_reporting');
				} else {
					$this -> session -> set_flashdata('msg', 'Presentation reporting created successfully');
					redirect('admin/presentation_reporting');
				}
			} else {
				$this -> session -> set_flashdata('msg', 'Please upload document');
				$this -> render($content);
				$this -> load -> view('admin/documents/presentation_reporting_add');
			}

		}
	}

	/** edit   presentation reporting Page
	 * @param string $postdata
	 *  @return object  success redirect to presentation reporting View with Success Message
	 * */
	public function presentationReportingEdit($id = '', $postdata = "") {
		$this -> loggedIn();
		$content = "presentationReporting";
		$id = base64_decode($this -> uri -> segment(3));
		$presentation_reportingData['presentation_reporting_data'] = $this -> adminModel -> editPresentationReporting($id);
		$this -> load -> library('form_validation');
		$this -> form_validation -> set_rules('document_name', 'name', 'required|alpha|xss_clean|min_length[5]|max_length[50]');
		$this -> form_validation -> set_error_delimiters('<span class="error">', '</span>');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> render($content);
			$this -> load -> view('admin/documents/presentation_reporting_edit', $presentation_reportingData);
		} else if ($this -> input -> post()) {
			$session_data = $this -> session -> userdata('adminDetails');
			$target_dir = 'assests/uploads/';
			$target_file = $target_dir . basename($_FILES["document_path"]["name"]);
			if (move_uploaded_file($_FILES["document_path"]["tmp_name"], $target_file)) {
				$presentation_reporting = $_FILES["document_path"]["name"];
				$postdata = array('name' => $this -> input -> post('document_name'), 'path' => $presentation_reporting, 'category' => "presentation_reporting");
				$upd_status = $this -> adminModel -> presentationReportingUpdate($postdata, $id);
				if ($upd_status > 0) {
					$this -> session -> set_flashdata('msg', 'Presentation reporting updated successfully');
					redirect('admin/presentation_reporting');
				} else {
					$this -> session -> set_flashdata('msg', 'Presentation reporting  failed to update');
					redirect('admin/presentation_reporting');
				}

			}
		}
	}/* check the session in admin user

	 *
	 * If no session, redirect to login page
	 * */
	public function loggedIn() {
		$logged = $this -> session -> userdata('adminDetails');
		if ($logged === FALSE) {

			redirect("admin");
		}
	}

	/* logout admin user
	 * delete admin user session data
	 * If no session, redirect to login page
	 * */
	public function logout() {
		$this -> session -> unset_userdata('adminDetails');
		$this -> session -> sess_destroy();
		redirect('admin', 'refresh');
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
