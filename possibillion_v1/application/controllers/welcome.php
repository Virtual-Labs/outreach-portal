<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
class welcome extends CI_Controller {

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
	function __construct() {
		error_reporting(0);
		parent::__construct();
		$this -> output -> set_header('Last-Modified:' . gmdate('D, d M Y H:i:s') . 'GMT');
		$this -> output -> set_header('Cache-Control: no-store, no-cache, must-revalidate');
		$this -> output -> set_header('Cache-Control: post-check=0, pre-check=0', false);
		$this -> output -> set_header('Pragma: no-cache');
		$this -> load -> model('homesitemodel');
		$this -> load -> library(array('form_validation', 'session'));
		$this -> load -> helper(array('url', 'html', 'form'));
	}

	/**
	 * Index (outreach home page)
	 * @param string $data
	 * @return object if success  redirect to  Homepage
	 */
	public function index($data = "") {
		if ($this -> session -> flashdata('msg')) {
			$data['msg'] = $this -> session -> flashdata('msg');
		}
		$data['nodalcenters'] = $this -> homesitemodel -> nodalcenterscount();
		$data['workshoprun'] = $this -> homesitemodel -> workshopruncount();
		$data['getworkshopupcoming'] = $this -> homesitemodel -> getWorkShopupcoming();
		$data['map'] = $this -> homesitemodel -> displayMap();
		$this -> load -> view('site/header', $data);
		$this -> load -> view('site/home/home', $data);
		$this -> load -> view('site/footer', $data);

	}

	/**
	 * login method:  Authenticating coordinator
	 * Submits an HTTP POST method to server
	 * @param   $postdata $data Values
	 * @return object  if success coordinator Dashboard else Login View
	 */
	public function login($data = "", $postdata = "") {
		$this -> load -> view('site/header', $data);
		$this -> form_validation -> set_rules('email', 'E-Mail', 'required|xss_clean');
		$this -> form_validation -> set_rules('password', 'Password', 'required|xss_clean');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			redirect('', 'refresh');
		} elseif ($this -> input -> post()) {
			$postdata = $this -> input -> post();
			$result = $this -> homesitemodel -> login($postdata);

			if ($result == 0) {
				$Nodalresult = $this -> homesitemodel -> NodalLogin($postdata);
				if ($Nodalresult) {
					redirect('NodalDashboard', 'refresh');
				} else {
					$this -> session -> set_flashdata('msg', 'Invalid User Name or password');
					redirect('', 'refresh');
				}
			} else {
				redirect('dashboard', 'refresh');

			}
		}
		$this -> load -> view('site/footer');
	}

	/**
	 * dashboard method:   outreach coordinator dashboard
	 * @param   $value $data Values
	 * @return object  if success coordinator Dashboard else Login View
	 */
	public function dashboard($value = '') {
		$this -> load -> view('site/header', $data);
		$data[''] = $this -> homesitemodel -> getActiveWorkshopOutreach();
		$data['nodalcoordinatorcount']=$this->homesitemodel->nodalcoordinatorcount();
		$data['nodalcoordinatorworkshop']=$this->homesitemodel->nodalcoordinatorworkshop();	
		$data['nodalcoordinatorcounthistory']=$this->homesitemodel->nodalcoordinatorcounthistory();	
		$data['outreachcoordinatorworkshopcount']=$this->homesitemodel->outreachcoordinatorworkshopcount();		
		$data['getActiveWorkshop'] = $this -> homesitemodel -> getActiveWorkshopOutreach();
		$data['getPendingWorkshopOutreach'] = $this -> homesitemodel -> getPendingWorkshopOutreach();
		$data['getWorkshopHistory'] = $this -> homesitemodel -> getWorkshopHistory();
		$data['getNodalCoordinator'] = $this -> homesitemodel -> fatchNodalCoordinator();
		$data['getTraininging'] = $this -> homesitemodel -> fatchTrainingingCoordinator();
		$this -> load -> view('site/outreachcoordinator/manageWorkshop', $data);
		$this -> load -> view('site/footer');
	}

	/**
	 * viewReport    If user session exist redirecting to detail view page else Login Page
	 * @param string $inputdata
	 * @param string $data
	 * @return object detail view  Listing   else Login View
	 */
	public function viewReport($inputdata = "", $data = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$data['nodalcoordinatorcount']=$this->homesitemodel->nodalcoordinatorcount();
		$data['nodalcoordinatorworkshop']=$this->homesitemodel->nodalcoordinatorworkshop();	
		$data['nodalcoordinatorcounthistory']=$this->homesitemodel->nodalcoordinatorcounthistory();	
		$data['outreachcoordinatorworkshopcount']=$this->homesitemodel->outreachcoordinatorworkshopcount();	
		$inputdata = $this -> uri -> segment(2);
		$data['viewReports'] = $this -> homesitemodel -> getViewReport($inputdata);
		$this -> load -> view('site/header', $data);
		$this -> load -> view('site/outreachcoordinator/viewReport', $data);
		$this -> load -> view('site/footer');
	}

	/**
	 * approverepost   (changing workshop status)
	 * @param string $inputdata
	 * @return object  if success redirect to workshop page
	 */

	public function approverepost($inputdata = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$inputdata = $this -> input -> post();
		$res = $this -> homesitemodel -> approverepost($inputdata);
		if ($res) {
			$this -> session -> set_flashdata('msg', 'approve workshop successfully ');
			redirect('dashboard', 'refresh');
		}
	}

	/**
	 * Nodal coordinator Dashboard
	 *  @param string $data
	 * @return object  if success redirect to Nodal coordinator Dashboard page
	 */
	public function NodalDashboard($data = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$this -> load -> view('site/header', $data);
		$data['getActiveWorkshop'] = $this -> homesitemodel -> getActiveWorkshop();
		$data['participatecount'] = $this -> homesitemodel -> participatecount();
		$data['nodalcoordinatorworkshopcount'] = $this -> homesitemodel -> nodalcoordinatorworkshopcount();
		$data['getGuidesMaterial'] = $this -> homesitemodel -> getGuidesMaterial();
		$data['getWorkshopMetirial'] = $this -> homesitemodel -> getWorkshopMetirial();
		$data['getPresentationReporting'] = $this -> homesitemodel -> getPresentationReporting();
		$data['getWorkshopHistoryNodal'] = $this -> homesitemodel -> getWorkshopHistoryNodal();
		$this -> load -> view('site/nodal-coordinator/nodal_workshop.php', $data);
		$this -> load -> view('site/footer');
	}

	/**
	 * addWorkshop
	 * @param string $inputdata
	 * @return object  if success redirect to addWorkshop Listing View with Success Message else Create addWorkshop View
	 */
	public function addWorkshop($inputdata = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('login');
		}
		$this -> form_validation -> set_rules('name', 'name ', 'required|alpha|min_length[5]|max_length[50]');
		$this -> form_validation -> set_rules('location', 'location', 'required|xss_clean|callback_alpha_dash_space|min_length[5]|max_length[100]');
		$this -> form_validation -> set_rules('institutes', 'institutes', 'required|callback_alpha_dash_space|min_length[5]');
		$this -> form_validation -> set_rules('date', 'date', 'required');
		$this -> form_validation -> set_rules('no_of_participants', 'no participants', 'required|is_natural');
		$this -> form_validation -> set_rules('no-of_sessions', 'no sessions', 'required|is_natural');
		$this -> form_validation -> set_rules('duration_of_session', 'duration of session', 'required|is_natural');
		$this -> form_validation -> set_rules('discipline', 'discipline', 'required|callback_alpha_dash_space|min_length[5]');
		$this -> form_validation -> set_rules('labs_planned', 'labs planned', 'required|callback_alpha_dash_space|min_length[5]');
		$this -> form_validation -> set_rules('other_details', 'other details', 'required|min_length[5]|callback_alpha_dash_space');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			redirect('NodalDashboard', "refresh");
		} elseif ($this -> input -> post()) {
			$inputdata = $this -> input -> post();
			$res = $this -> homesitemodel -> addWorkshop($inputdata);
			if ($res) {
				$this -> session -> set_flashdata('msg', 'Workshop add successfully.');
				redirect('NodalDashboard', "refresh");
			}
		}
	}

	/** editWorkshop   Updating edit Workshop Page
	 * @param string $inputdata
	 * @param string $data
	 * @return object  if success redirect to editWorkshop View
	 */
	public function editWorkshop($inputdata, $data) {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		
		$inputdata = $this -> uri -> segment(2);
		
		$data['Workshopedit'] = $this -> homesitemodel -> editWorkshop($inputdata);
		if ($data) {
			$this -> load -> view('site/header', $data);
			$this -> load -> view('site/nodal-coordinator/editWorkshop', $data);
			$this -> load -> view('site/footer');
		} else {
			redirect('NodalDashboard', "refresh");
		}
		

	}

	/**
	 * updateWorkshop
	 * @param string $inputdata
	 * @return object  if success redirect to Workshop  Listing View with Success Message else editWorkshop View
	 */

	public function updateWorkshop($inputdata = '') {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$inputdata = $this -> input -> post();
		$res = $this -> homesitemodel -> updateWorkshop($inputdata);
		if ($res) {
			$this -> session -> set_flashdata('msg', 'Update successfully ');
			redirect('NodalDashboard', "refresh");
		}
	}

	/**
	 * cancelworkshop   (changing workshop status)
	 * @param string $postval
	 * @return object  if success redirect to workshop page
	 */

	public function cancelWorkshop($postval = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$inputdata = $this -> input -> post();
		$res = $this -> homesitemodel -> cancelWorkshop($inputdata);
		if ($res) {
			$this -> session -> set_flashdata('msg', 'cancel workshopp successfully ');
			redirect('NodalDashboard', "refresh");
		}
	}

	/**
	 * submitReport   (changing workshop status)
	 * @param string $filea
	 * @return object  if success redirect to workshop page else submit Reports  page
	 */
	public function submitReport($filea = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$this -> form_validation -> set_rules('participate_attend', 'no participants', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('participate_experiment', 'participate_experiment', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('comments_positive', 'comment positive', 'xss_clean|required|min_length[5]');
		$this -> form_validation -> set_rules('comments_negative', 'comment negative', 'xss_clean|required|min_length[5]');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			redirect('NodalDashboard', "refresh");
		} elseif ($this -> input -> post()) {
			$inputdata = $this -> input -> post();
			$report_data = $this -> session -> userdata('report_data');
			$target_dir = 'assests/uploads/attendsheet/';
			$target_dir1 = 'assests/uploads/collegereport/';
			$target_file = $target_dir . basename($_FILES["upload_attend_sheet"]["name"]);
			$target_file1 = $target_dir1 . basename($_FILES["college_report"]["name"]);
			$workshop_photos[] = ($_FILES['workshop_photos']['name']);
			$workshop_photos = json_encode($workshop_photos);
			if (move_uploaded_file($_FILES["upload_attend_sheet"]["tmp_name"], $target_file)) {
				$upload_attend_sheet = $_FILES["upload_attend_sheet"]["name"];
			} else {
				$upload_attend_sheet = $report_data[0]['upload_attend_sheet'];
			}
			if (move_uploaded_file($_FILES["college_report"]["tmp_name"], $target_file1)) {
				$college_report = $_FILES["college_report"]["name"];
			} else {
				$college_report = $report_data[0]['college_report'];
			}
			$uploads_dir = 'assests/uploads/workshopphotos/';
			foreach ($_FILES["workshop_photos"]["name"] as $key => $error) {
					$tmp_name = $_FILES["workshop_photos"]["tmp_name"][$key];
					$name = $_FILES["workshop_photos"]["name"][$key];
					move_uploaded_file($tmp_name, $uploads_dir.$name);
			}	
			$filea = array('upload_attend_sheet' => $target_file, 'college_report' => $target_file1, 'workshop_photos' => $workshop_photos, 'participate_attend' => $inputdata['participate_attend'], 'participate_experiment' => $inputdata['participate_experiment'], 'comments_positive' => $inputdata['comments_positive'], 'comments_negative' => $inputdata['comments_negative'], 'workshop_id' => $inputdata['workshop_id']);
			if ($inputdata['submit'] == "save") {
				$res = $this -> homesitemodel -> editReport($filea);
				if ($res > 0) {
					$this -> session -> set_flashdata('msg', 'Saved reports successfully');
					redirect('NodalDashboard', "refresh");
					$this -> session -> unset_userdata('report_data');
				}
			} else {
				$res = $this -> homesitemodel -> submitReport($filea);
				if ($res > 0) {
					$this -> session -> set_flashdata('msg', 'Submit reports successfully');
					redirect('NodalDashboard', "refresh");
					$this -> session -> unset_userdata('report_data');
				}
			}
		}
	}

	/**
	 * forgot password  sending mail to register user
	 * @param string $data
	 * @param string $email
	 * @param string $pwd
	 * @param string $message
	 * @return object if success redirect to the view  with status
	 */
	public function forgotPassword($data = "", $email = "", $message = "") {
		$this -> load -> view('site/header', $data);
		$this -> form_validation -> set_rules('email', 'email', 'email|required|xss_clean');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			$this -> load -> view('site/home/forgot_password', $data);
		} elseif ($this -> input -> post()) {
			$email = $this -> input -> post('email');
			$emailResult = $this -> homesitemodel -> checkEmail($email);
			if ($emailResult == 0) {
				$this -> session -> set_flashdata('msg', 'Invalid email');
				$this -> load -> view('site/home/forgot_password', $data);
			} else {
				$this -> load -> helper('string');
				$pwd = random_string('alnum', 6);
				$postvalues = array('email' => $email, 'password' => md5($pwd));
				$result = $this -> homesitemodel -> forgotPassword($postvalues);
				if ($result > 0) {
					$message = "<html><head><META http-equiv='Content-Type' content='text/html; charset=utf-8'>
									   </head><body>
										  <div style='margin:0;padding:0'>
										<table border='0' cellspacing='0' cellpadding='0'>
									   <tbody>
									   <tr>
											<td valign='top'><p>" . $res['name'] . " Hi,</p></td>
									   </tr>
									  <tr>
										   <td valign='top'><p><strong>User Name :</strong> " . $email . "</p></td>
									  </tr>
									  <tr>
										   <td valign='top'><p><strong>Password :</strong> " . $pwd . "</p></td>
									  </tr>
								</tbody>
							</table>  
						 </div>
						</body></html>";
					$to = $email;
					$subject = "Your Nodal  account Password";
					$headers = 'MIME-Version: 1.0' . "\r\n";
					$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
					if (mail($to, $subject, $message, $headers)) {
						$this -> session -> set_flashdata('msg', 'Please check Your Email to receive Password');
						redirect('', 'refresh');
					} else {
						echo "iam here forgot password page";
						die();
						$this -> session -> set_flashdata('msg', 'Your Request Failed.Please Re-Try.');
						$this -> load -> view('site/home/forgot_password', $data);
					}
				} else {
					$this -> session -> set_flashdata('msg', 'Your Request Failed.Please Re-Try.');
					$this -> load -> view('site/home/forgot_password', $data);
				}
			}
		}
		$this -> load -> view('site/footer');
	}

	function alpha_dash_space($str) {
		return (!preg_match("/^([-a-z_ ])+$/i", $str)) ? FALSE : TRUE;
	}

	/*
	 *@method traininging
	 *@param  Post Values
	 *@return object  if success redirect to nodal-coordinator page
	 */
	public function traininging($traininginputs = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('login');
		}
		$this -> form_validation -> set_rules('name', 'Name ', 'required|xss_clean|alpha');
		$this -> form_validation -> set_rules('date', 'date', 'required|xss_clean');
		$this -> form_validation -> set_rules('location', 'location', 'required|xss_clean|callback_alpha_dash_space');
		$this -> form_validation -> set_rules('duration', 'duration', 'required|xss_clean|is_natural');
		$this -> form_validation -> set_rules('description', 'description', 'required|xss_clean|callback_alpha_dash_space');
		$this -> form_validation -> set_rules('invitees', 'invitees', 'required|xss_clean|callback_alpha_dash_space');
		if ($this -> form_validation -> run() == FALSE) {
			echo validation_errors();
		} elseif ($this -> input -> post()) {
			$postdata = $this -> input -> post();
			$postdata['outreach_id'] = $ses_data['outreach_id'];
			$res = $this -> homesitemodel -> traininging($postdata);
			if ($res > 0) {
				$this -> session -> set_flashdata('msg', 'Manage Nodal Coordinators create successfully ');
				echo "success";
			}else{
				echo "Please try agin";
			exit ;
			}
			
		}
	}

	/**
	 *  addNodal
	 * @param string $postdata
	 * @param string $to
	 * @param string $subject
	 * @param string $message,$headers
	 * @return object  if success redirect to addNodal Listing View with Success Message else Create addNodal View
	 */
	public function addNodalcenter($postdata = "", $to, $subject, $message, $headers) {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$this -> form_validation -> set_rules('location', 'Name of the Center', 'required|callback_alpha_dash_space');
		$this -> form_validation -> set_rules('name', 'Name of Coordinator', 'required|callback_alpha_dash_space');
		$this -> form_validation -> set_rules('email', 'email', 'required|xss_clean|valid_email');
		$this -> form_validation -> set_rules('phone', 'phone', 'required|xss_clean');
		$this -> form_validation -> set_rules('target_workshops', 'No of Workshops', 'required|is_natural');
		$this -> form_validation -> set_rules('target_participants', 'No of Participants', 'required|is_natural');
		$this -> form_validation -> set_rules('target_expriments', 'No of experiments', 'required|is_natural');
		if ($this -> form_validation -> run() == FALSE) {
			echo validation_errors();
		} elseif ($this -> input -> post()) {
			$postdata = $this -> input -> post();
			$target_dir = 'assests/uploads/mou/';
			$target_file = $target_dir . basename($_FILES["mou"]["name"]);
			if (move_uploaded_file($_FILES["mou"]["tmp_name"], $target_file)) {
				$upload_attend_sheet = $_FILES["mou"]["name"];
			}
			$postdata['mou'] = $_FILES["mou"]["name"];
			$this -> load -> helper('string');
			$postdata['password'] = random_string('alnum', 6);
			$result = $this -> homesitemodel -> addNodalcenter($postdata);
			if ($result > 0) {
				$message = "<html><head><META http-equiv='Content-Type' content='text/html; charset=utf-8'>
                                   </head><body>
                                      <div style='margin:0;padding:0'>
 	                                <table border='0' cellspacing='0' cellpadding='0'>
    	                           <tbody>
								   <tr>
				                        <td valign='top'><p> Hi Nodal Coordinator,</p></td>
		                           </tr>
		                           <tr>
				                        <td valign='top'><p> Your   follow the below details to login here " . base_url() . "</p></td>
		                           </tr>
		                          <tr>
				                       <td valign='top'><p><strong>User Name :</strong> " . $postdata['email'] . "</p></td>
		                          </tr>
								  <tr>
				                       <td valign='top'><p><strong>Password :</strong> " . $postdata['password'] . "</p></td>
		                          </tr>
		                    </tbody>
	                    </table>  
                     </div>
                    </body></html>";
				$to = $postdata['email'];
				$subject = "Your Nodal  account Password";
				$headers = 'MIME-Version: 1.0' . "\r\n";
				$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
				mail($to, $subject, $message, $headers);
				$this -> session -> set_flashdata('msg', 'Nodalcenter added successfully');
				echo "success";
				exit ;
			} else {
				echo "Nodalcenter already Exists";
				exit ;
			}
		}
	}
	public function profile(){
		
		$this -> load -> view('site/header', $data);
		$this -> form_validation -> set_rules('password', 'password', 'password|required|xss_clean');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			$this -> load -> view('site/home/change_profile', $data);
		} elseif ($this -> input -> post()) {
			$password = $this -> input -> post('password');
				$postvalues =  md5($password);
				
				$result = $this->homesitemodel->change_password($postvalues);
				if ($result > 0) {
					
						$this -> session -> set_flashdata('msg', 'Pass change successfully');
						$this -> load -> view('site/home/change_profile', $data);
						
					}else{
						$this -> session -> set_flashdata('msg', 'Pass change successfully');
					$this -> load -> view('site/home/change_profile', $data);
					}
				$this -> load -> view('site/footer');
			}
			
		}
		
	
	

	/**
	 * logout   killing admin session data
	 * @param null
	 * @return object  redirect to index method if session killing
	 */
	public function logout() {
		$this -> session -> unset_userdata('user_details');
		$this -> session -> sess_destroy();
		redirect(base_url(), 'refresh');
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
