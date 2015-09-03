<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Site extends CI_Controller {
/*
*site Controller
*methods:
*signin
*forgot_password
*logout
*profile
*authentic_coordinator
*manage_workshop
*nodalCoordinatorListing
*traininging
*/
public function __construct(){
	error_reporting(0);
	parent::__construct();
	$this->output->set_header('Last-Modified:'.gmdate('D, d M Y H:i:s').'GMT');
	$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
	$this->output->set_header('Cache-Control: post-check=0, pre-check=0',false);
	$this->output->set_header('Pragma: no-cache');
	$this->load->model('site/home_site_m');
	$this->load->library('form_validation');
	}
/**
* signin method:  Authenticating coordinator 
* Submits an HTTP POST method to server
* @param   $postdata $data Values
* @return object  if success coordinator Dashboard else Login View
*/
		public function signin($data="",$postdata="") {
			$this->load->view('site/header',$data);
			$this->form_validation->set_rules('email', 'E-Mail', 'required|xss_clean');
			$this->form_validation->set_rules('password', 'Password', 'required|xss_clean');
			if ($this->form_validation->run() == FALSE ){
					$this->session->set_flashdata('msg', validation_errors());
					redirect('', 'refresh');
				}elseif ($this -> input ->post()){
							$postdata=$this -> input ->post();
							$res=$this->home_site_m->signin($postdata);
				if($res==0){
							$this->session->set_flashdata('msg', 'Invalid User Name or password');
							redirect('', 'refresh');
					}else{
							if($res['last_loggedin'] == ''){
								redirect('Profile',"refresh");
			                 }else{
									$result = $this->home_site_m->updatelogin($res['id']);
									redirect('nodal-coordinator',"refresh");
								}
						}
					}
			$this->load->view('site/footer');
		}
/**
* forgot password  sending mail to register user
* @param string $data
* @param string $email
* @param string $pwd
* @param string $message
* @return object if success redirect to the view  with status
*/
	public function forgot_password($data="",$email="",$message="") {
		$this->load->view('site/header',$data);
		$this->form_validation->set_rules('email', 'User Name', 'required|xss_clean');
		if ($this->form_validation->run() == FALSE ){
			 $this->load->view('site/home/forgot_password',$data);
		}elseif ($this -> input ->post()){
					$email=$this -> input ->post('email');
					$res=$this->home_site_m->check_email($email);
				if($res==0){
						$this->session->set_flashdata('msg', 'Invalid User Name');
						$this->load->view('site/home/forgot_password',$data);
				}else{
						$pwd=rand(000000,999999);
						$det=array(
						'email'=>$res['email'],
						'password'=>md5($pwd)
						);
						$upd=$this->home_site_m->forgot_password($det);
					if($upd>0){
							$this->load->library('amazon_ses');
							$this->amazon_ses->to($res['email']);
							$this->amazon_ses->subject("Request Password");
							$message="<html><head><META http-equiv='Content-Type' content='text/html; charset=utf-8'>
									   </head><body>
										  <div style='margin:0;padding:0'>
										<table border='0' cellspacing='0' cellpadding='0'>
									   <tbody>
									   <tr>
											<td valign='top'><p>".$res['name']." please click bellow link to activate your TASK Account.</p></td>
									   </tr>
									  <tr>
										   <td valign='top'><p><strong>User Name :</strong> ".$email."</p></td>
									  </tr>
									  <tr>
										   <td valign='top'><p><strong>Password :</strong> ".$pwd."</p></td>
									  </tr>
								</tbody>
							</table>  
						 </div>
						</body></html>";
							$this->amazon_ses->message($message);//exit;
						if($this->amazon_ses->send()){
							$this->session->set_flashdata('msg', 'Please check Your Email to receive Password');
							$this->load->view('site/home/signin',$data);
						}else{
							$this->session->set_flashdata('msg', 'Your Request Failed.Please Re-Try.');
							$this->load->view('site/home/forgot_password',$data);
						}
					}else{
							$this->session->set_flashdata('msg', 'Your Request Failed.Please Re-Try.');
							$this->load->view('site/home/forgot_password',$data);
					}
			}
		}
		$this->load->view('site/footer');
		}
/**
* logout   killing admin session data
* @param null
* @return object  redirect to index method if session killing
*/
	public function logout(){
			$this->session->unset_userdata('user_details');
			$this->session->sess_destroy();
			redirect(base_url(),'refresh');
		}
/*
*@method profile 
*@param  Post Values 
*@return object  if success redirect to profile page
*/
	public function profile($data="") {
				$ses_data=$this->session->userdata('user_details');
				if (empty($ses_data)){
						redirect('');
				}
					$this->form_validation->set_rules('password', 'Password', 'required');
					$this->form_validation->set_rules('passconf', 'Password Confirmation', 'required');			
				if ($this->form_validation->run() == FALSE ){
				$this->load->view('site/header',$data);
				$data['coordinator_details']=$ses_data;
				$this->load->view('site/home/change_profile',$data);
				$this->load->view('site/footer');
				}elseif ($this ->input->post()){
				$postdata=$this -> input ->post();
				$uploads_dir = '/images/outreach-profile-images/';
				$target_dir = 'images/outreach-profile-images/';
				$target_file = $target_dir . basename($_FILES["profile_image"]["name"]);
				move_uploaded_file($_FILES["profile_image"]["tmp_name"], $target_file);
				$postdata['profile_image'] = ($_FILES['profile_image']['name']);
				$res=$this->home_site_m->profileedit($postdata);
				if($res){
					$this->logout();
				}
				}
		}
/**
* authentic_coordinator method  authentic users in first time login
* @param string $data
* @return object  if success profile page
*/
	public function authentic_coordinator($postdata="",$data=""){
			$ses_data=$this->session->userdata('user_details');
			if (empty($ses_data)){
					redirect('Login');
			} 
			$data['get_workshop']=$this->home_site_m->get_nodal();	 
			$ses_data= $this->session->userdata("user_details");
			if($ses_data['user_type']==1){
				redirect('manage-workshop');
			}else{
				$data['getPresentationReporting']=$this->home_site_m->getPresentationReporting();
				$data['getGuidesMaterial']=$this->home_site_m->getGuidesMaterial();
				$data['getWorkshopMetirial']=$this->home_site_m->getWorkshopMetirial();
				$data['get_workshop_history']=$this->home_site_m->getWorkshopHistoryNodal();
				$data['workshoprun']=$this->home_site_m->workshopruncountalllogin();
				$data['workshoprunall']=$this->home_site_m-> workshopallcountlogin();
				$data['experimentsall']=$this->home_site_m->experimentscountlogin();
				$data['participantsall']=$this->home_site_m->participantscountlogin();
				$data['experimentcount']=$this->home_site_m->experimentcount();
				$data['participatecount']=$this->home_site_m->participatecount();
				$data['get_workshop_upcoming1']=$this->home_site_m->getupcomingWorkshop();
				$this->load->view('site/header',$data);
				$this->load->view('site/nodal-coordinator/nodal_workshop.php',$data);
				$this->load->view('site/footer');	
			}
			
	}	
/**
* manage_workshop disply the workshop details  
* @param string $postdata
* @param string $inputdata
* @param string $data
* @return  object  if success redirecting to manage workshop  page
*/
	public function manage_workshop($inputdata="",$data=""){
			$ses_data=$this->session->userdata('user_details');
			if(empty($ses_data)){
				redirect('Login');
				}
			$data['get_workshop']=$this->home_site_m->getWorkshop();
			$data['get_workshop_upcoming']=$this->home_site_m->getWorkshop_m();
			$data['get_workshop_history']=$this->home_site_m->getWorkshopHistoryOutreach();
			$data['get_name']=$this->home_site_m->getnames();
			$data['get_getworkshopgr']=$this->home_site_m->getworkshopgr();
			$data['getworkshopcreated']=$this->home_site_m->getworkshopcreated();
			$data['get_workshop1']=$this->home_site_m->get_nodal();
			$data['training']=$this->home_site_m->get_training();
			$data['view_reports']=$this->home_site_m->getViewReport($inputdata);	
			$data['nodalcoordinatorcount']=$this->home_site_m->nodalcoordinatorcount();	
			$data['nodalcoordinatorworkshop']=$this->home_site_m->nodalcoordinatorworkshop();	
			$data['nodalcoordinatorcounthistroy']=$this->home_site_m->nodalcoordinatorcounthistroy();	
			$data['nodalcoordinatorworkshopcount']=$this->home_site_m->nodalcoordinatorworkshopcount();	
			$this->load->view('site/header',$data);
			$this->load->view('site/outreachcoordinator/manage_workshop',$data);
			$this->load->view('site/footer');
		}
/*
*@method traininging 
*@param  Post Values 
*@return object  if success redirect to nodal-coordinator page
*/
	public function traininging($traininginputs=""){
		   $inputdata = $this->input->post();
		   $report_data=$this->session->userdata('report_data');	
		   $target_dir = 'uploads/Report/training/';
		   $target_dir1 = 'uploads/Report/attendance/';
		   $attendance_sheetname = time().$_FILES["attendance_sheet"]["name"];
		   $training_photosname = time().$_FILES["training_photos"]["name"];
		   $target_file =  $target_dir1 . basename($attendance_sheetname);
		   $target_file1 = $target_dir . basename($training_photosname);	
		   if (move_uploaded_file($_FILES["attendance_sheet"]["tmp_name"], $target_file)){
		   $upload_attend_sheet=$attendance_sheetname;
		   }else {
		     $upload_attend_sheet=$report_data[0]['upload_attend_sheet'];
		   }
		    if(move_uploaded_file($_FILES["training_photos"]["tmp_name"], $target_file1)) {
				$college_report=$training_photosname;
			} else {
				$college_report=$report_data[0]['college_report'];
			}
					$filea = array(
						'attendance_sheet'=>$upload_attend_sheet,
						'training_photos'=>$college_report,
						'participants_attended'=>$inputdata['participants_attended'],
						'experiments_conducted'=>$inputdata['experiments_conducted'],
						'positive'=>$inputdata['positive'],
						'negative'=>$inputdata['negative'],
						'outreachid'=>$inputdata['outreach_id']
						);
						$res=$this->home_site_m->traininging($traininginputs);
			if($res>0){
				$this->session->set_flashdata('msg', 'Submit Reports Successfully');
				redirect('nodal-coordinator',"refresh");
				$this->session->unset_userdata('report_data');
			}
	}
	
/* End of file welcome.php */
/* Location: ./application/controllers/site.php */
}