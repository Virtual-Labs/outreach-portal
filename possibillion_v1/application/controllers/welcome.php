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
	 * @return object if success redirect to homepage
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
	 * @param   $postdata $data values
	 * @return object  if success coordinator dashboard else login view
	 */
	public function login($data = "", $postdata = "") {
		$this -> load -> view('site/header', $data);
		$this -> form_validation -> set_rules('email', 'email', 'required|xss_clean|valid_email');
		$this -> form_validation -> set_rules('password', 'password', 'required|xss_clean|min_length[6]|max_length[12]');
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
					$this -> session -> set_flashdata('msg', 'Invalid user name or password');
					redirect('', 'refresh');
				}
			} else {
				redirect('dashboard', 'refresh');

			}
		}
		$this -> load -> view('site/footer');
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
		$this -> form_validation -> set_rules('email', 'user name', 'required|xss_clean|valid_email');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			$this -> load -> view('site/home/forgot_password', $data);
		} elseif ($this -> input -> post()) {
			$email = $this -> input -> post('email');
			$emailResult = $this -> homesitemodel -> checkEmail($email);
			if ($emailResult == 0) {
				$this -> session -> set_flashdata('msg', 'Invalid user name');
				$this -> load -> view('site/home/forgot_password', $data);
			} else {
				$pwd = rand(000000, 999999);
				$postvalues = array('email' => $email, 'password' => md5($pwd));
				$result = $this -> homesitemodel -> forgotPassword($postvalues);
				if ($result > 0) {
					$message = "<html><head><META http-equiv='Content-Type' content='text/html; charset=utf-8'>
									   </head><body>
										  <div style='margin:0;padding:0'>
										<table border='0' cellspacing='0' cellpadding='0'>
									   <tbody>
									   <tr>
											<td valign='top'><p>" . $res['name'] . " please click bellow link to activate your outreach Account.</p></td>
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
						$this -> session -> set_flashdata('msg', 'Please check your email to receive password');
						redirect('', 'refresh');
					} else {
						echo "iam here forgot password page";
						die();
						$this -> session -> set_flashdata('msg', 'Your request failed. please Re-Try.');
						$this -> load -> view('site/home/forgot_password', $data);
					}
				} else {
					$this -> session -> set_flashdata('msg', 'Your request failed. please Re-Try.');
					$this -> load -> view('site/home/forgot_password', $data);
				}
			}
		}
		$this -> load -> view('site/footer');
	}

	/**
	 * dashboard method:   outreach coordinator dashboard
	 * @param   $value $data Values
	 * @return object  if success coordinator dashboard else login view
	 */
	public function dashboard($value = '') {
		$this -> load -> view('site/header', $data);
		$data[''] = $this -> homesitemodel -> getActiveWorkshopOutreach();
		$data['getActiveWorkshop'] = $this -> homesitemodel -> getActiveWorkshopOutreach();
		$data['getPendingWorkshopOutreach'] = $this -> homesitemodel -> getPendingWorkshopOutreach();
		$data['getWorkshopHistory'] = $this -> homesitemodel -> getWorkshopHistory();
		$data['getNodalCoordinator'] = $this -> homesitemodel -> fetchNodalCoordinator();
		$data['getTraininging'] = $this -> homesitemodel -> fetchTrainingingCoordinator();
		$this -> load -> view('site/outreachcoordinator/manageWorkshop', $data);
		$this -> load -> view('site/footer');
	}

	/**
	 * Nodal coordinator dashboard
	 *  @param string $data
	 * @return object  if success redirect to nodalcoordinator dashboard page
	 */
	public function NodalDashboard($data = '') {
		$ses_data = $this -> session -> userdata('user_details');
		$this -> load -> view('site/header', $data);
		$data['getActiveWorkshop'] = $this -> homesitemodel -> getActiveWorkshop();
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
	 * @return object if success redirect to addWorkshop listing view with success message else create add workshop view
	 */
	public function addWorkshop($inputdata = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('login');
		}
		$this -> form_validation -> set_rules('name', 'name ', 'required|alpha|min_length[5]|max_length[50]');
		$this -> form_validation -> set_rules('location', 'location', 'required|xss_clean|alpha|min_length[5]|max_length[100]');
		$this -> form_validation -> set_rules('institutes', 'institutes', 'required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('date', 'date', 'required');
		$this -> form_validation -> set_rules('no_of_participants', 'no participants', 'required|is_natural');
		$this -> form_validation -> set_rules('no-of_sessions', 'no sessions', 'required|is_natural');
		$this -> form_validation -> set_rules('duration_of_session', 'duration of session', 'required|is_natural');
		$this -> form_validation -> set_rules('discipline', 'discipline', 'required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('labs_planned', 'labs planned', 'required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('other_details', 'other details', 'required|min_length[5]');
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

	/** editWorkshop updating edit workshop page
	 * @param string $inputdata
	 * @param string $data
	 * @return object  if success redirect to editWorkshop view
	 */
	public function editWorkshop($inputdata, $data) {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$this -> form_validation -> set_rules('name', 'name ', 'xss_clean|required|alpha|min_length[5]|max_length[50]');
		$this -> form_validation -> set_rules('location', 'location', 'required|xss_clean|alpha|min_length[5]|max_length[100]');
		$this -> form_validation -> set_rules('institutes', 'institutes', 'xss_clean|required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('date', 'date', 'required');
		$this -> form_validation -> set_rules('no_of_participants', 'no participants', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('no-of_sessions', 'no sessions', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('duration_of_session', 'duration of session', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('discipline', 'discipline', 'xss_clean|required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('labs_planned', 'labs planned', 'xss_clean|required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('other_details', 'other details', 'xss_clean|required|min_length[5]');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			redirect('NodalDashboard', "refresh");
		} elseif ($this -> input -> post()) {
			$inputdata = $this -> input -> post();
			$res = $this -> homesitemodel -> updateWorkshop($inputdata);
			if ($res) {
				$this -> session -> set_flashdata('msg', 'Update successfully ');
				redirect('NodalDashboard', "refresh");
			}
		}
		$data = $this -> uri -> segment(2);
		$inputdata = $this -> input -> post();
		$data['Workshopedit'] = $this -> homesitemodel -> editWorkshop($inputdata, $inputdata);
		if ($data) {
			$this -> load -> view('site/header', $data);
			$this -> load -> view('site/nodal-coordinator/editWorkshop', $data);
			$this -> load -> view('site/footer');
		} else {
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
		$this -> form_validation -> set_rules('reason', 'reason', 'xss_clean|required|min_length[5]');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			redirect('NodalDashboard', "refresh");
		} elseif ($this -> input -> post()) {
			$inputdata = $this -> input -> post();
			$res = $this -> homesitemodel -> cancelWorkshop($inputdata);
			if ($res) {
				$this -> session -> set_flashdata('msg', 'Cancel workshopp successfully ');
				redirect('NodalDashboard', "refresh");
			}
		}
	}

	/**
	 * submitReport (changing workshop status)
	 * @param string $filea
	 * @return object if success redirect to workshop page else submit reports page
	 */
	public function submitReport($filea = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$this -> form_validation -> set_rules('participate_attend', 'no participants', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('participate_experiment', 'participate_experiment', 'xss_clean|required|is_natural');
		$this -> form_validation -> set_rules('comments_positive', 'comment positive', 'xss_clean|required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('comments_negative', 'comment negative', 'xss_clean|required|alpha|min_length[5]');
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
			foreach ($_FILES["file_name"]["error"] as $key => $error) {
				if ($error == UPLOAD_ERR_OK) {
					$tmp_name = $_FILES["workshop_photos"]["tmp_name"][$key];
					$name = $_FILES["workshop_photos"]["name"][$key];
					move_uploaded_file($tmp_name, "$uploads_dir/$name");
				}
			}
			$filea = array('upload_attend_sheet' => $upload_attend_sheet, 'college_report' => $college_report, 'workshop_photos' => $workshop_photos, 'participate_attend' => $inputdata['participate_attend'], 'participate_experiment' => $inputdata['participate_experiment'], 'comments_positive' => $inputdata['comments_positive'], 'comments_negative' => $inputdata['comments_negative'], 'workshop_id' => $inputdata['workshop_id']);
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

	/*
	 *@method traininging
	 *@param  post values
	 *@return object if success redirect to nodal coordinator page
	 */
	public function traininging($traininginputs = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('login');
		}
		$this -> form_validation -> set_rules('name', 'name ', 'required|alpha|min_length[5]|max_length[50]');
		$this -> form_validation -> set_rules('date', 'date', 'required');
		$this -> form_validation -> set_rules('location', 'location', 'required|xss_clean|alpha|min_length[5]|max_length[100]');
		$this -> form_validation -> set_rules('duration', 'duration', 'required|is_natural');
		$this -> form_validation -> set_rules('description', 'description', 'required|alpha|min_length[5]');
		$this -> form_validation -> set_rules('invitees', 'invitees', 'required|min_length[5]');
		if ($this -> form_validation -> run() == FALSE) {
			$this -> session -> set_flashdata('msg', validation_errors());
			redirect('dashboard', "refresh");
		} elseif ($this -> input -> post()) {
			$postdata = $this -> input -> post();
			$postdata['outreach_id'] = $ses_data['outreach_id'];
			$res = $this -> homesitemodel -> traininging($postdata);
			if ($res > 0) {
				$this -> session -> set_flashdata('msg', 'Submit reports successfully');
				redirect('dashboard', 'refresh');
			}
			redirect('dashboard', 'refresh');
		}
	}

	/**
	 *  addNodal
	 * @param string $postdata
	 * @param string $to
	 * @param string $subject
	 * @param string $message,$headers
	 * @return object  if success redirect to create nodal listing view with success message else create create nodal view
	 */
	public function addNodalcenter($postdata = "", $to, $subject, $message, $headers) {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$this -> form_validation -> set_rules('location', 'Name of the Center', 'required|alpha');
		$this -> form_validation -> set_rules('name', 'Name of Coordinator', 'required|alpha');
		$this -> form_validation -> set_rules('email', 'email', 'required|xss_clean|valid_email');
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
				echo "Nodalcenter already exists";
				exit ;
			}
		}
	}

	/**
	 * viewReport    If user session exist redirecting to detail view page else login page
	 * @param string $inputdata
	 * @param string $data
	 * @return object detail view listing else login view
	 */
	public function viewReport($inputdata = "", $data = "") {
		$ses_data = $this -> session -> userdata('user_details');
		if (empty($ses_data)) {
			redirect('Login');
		}
		$inputdata = $this -> uri -> segment(2);
		$data['viewReports'] = $this -> homesitemodel -> getViewReport($inputdata);
		$this -> load -> view('site/header', $data);
		$this -> load -> view('site/outreachcoordinator/viewReport', $data);
		$this -> load -> view('site/footer');
	}

	/**
	 * Approverepost (changing workshop status)
	 * @param string $inputdata
	 * @return object if success redirect to workshop page
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
