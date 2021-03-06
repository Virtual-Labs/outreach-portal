<?php
class Loginmodel extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }
	public function  sigupStore($signupData) 	{
			if(!isset($signupData['status'])) {
				$status=1;
				} else { 
					$status=$signupData['status'];
					}
					
			$business_det=array(
							'store_name'=>$signupData['store_name'],
							'contact_person'=>$signupData['contact_person'],
							'email'=>$signupData['store_email'],
							'package'=>$signupData['package'],
							'mobile_number'=>$signupData['mobile_number'],
							'address'=>$signupData['address'],
							'city'=>$signupData['city'],
							'state'=>$signupData['state'],
							'country'=>$signupData['country'],
							'mall_id'=>$signupData['mall'],
							'status'=>$status,
							'added_on'=>date('Y-m-d H:i:s')
						);
			if(isset($signupData['image'])) {
				$business_det['image'] = $signupData['image'];
				}
						
			 $this->db->insert('va_business', $business_det);
			 	$business_id = $this->db->insert_id();
		if($business_id) {
			$signupStoreUser = array(
						'business_id'=>$business_id,
						'provider'=>$signupData['provider'],
						'password'=>md5($signupData['password']),
						'permission_id'=>1,
						'status'=>$status,
						'registered_on'=>date('Y-m-d H:i:s'),
						'email'=>$signupData['store_email']);
			$this->db->insert('va_store_users',$signupStoreUser);
			$store_user_id = $this->db->insert_id();
			if(store_user_id) {
				$storeDetails = array(
							'store_user_id'=>$store_user_id,
							'first_name'=>$signupData['contact_person'],
							'country_id'=>$signupData['country'],
							'state_id'=>$signupData['state'],
							'city_id'=>$signupData['city'],
							'address'=>$signupData['address'],
							'mobile'=>$signupData['mobile_number']
							);
				$this->db->insert('va_store_details',$storeDetails);
			}
		}
			return $this->db->affected_rows();
		}
	
	public function check_duplicate($mailid)
	{
		if($mailid != "")
		{
			$result = $this->db->select('*')
							   ->from('va_user_users')
							   ->where(array('email'=>$mailid,'status'=>1))
							   //->where(array('email'=>$mailid,'status !='=>'3'))
							   ->get()
							   ->num_rows();
			return $result;
		}
	}

	Public function check_email_duplicate($mailid) {
		if(!empty($mailid))	{
			$result = $this->db->select('*')
							   ->from('va_store_users')
							   ->where(array('email'=>$mailid,'status'=>1))
							   //->where(array('email'=>$mailid,'status !='=>'3'))
							   ->get()
							   ->num_rows();
			return $result;
		}
	}
	
	public function checkEmailId($mailid,$provider) {
		
		if($mailid != "") {
			$result = $this->db->select('*')
							   ->from('va_user_users')
							   ->where(array('email'=>$mailid,'status !='=>'3'))
							   ->get();
			$num_rows = $result->num_rows();							   
			if($num_rows > 0) {
				$query_row = $result->result_array();
				$u_data = array('u_id'=>$query_row[0]['user_id'],'loged_in'=>'login','l_type'=>$provider);
				$this->session->set_userdata('u_data',$u_data);
				return $query_row[0]['user_id'];
				} else 	{
					$zero = "0";
					return $zero;
					}
			}
		}
		public function getProvider($email_id) {
			$result = $this->db->select('provider')
							   ->from('va_user_users')
							   //->where(array('email'=>$email_id))
							   ->where(array('email'=>$email_id,'status !='=>'3'))
							   ->get();							   
			return $result->row_array();
		}
	public function getUser($user_id = "")	{
		if($user_id != "")	{
			$this->db->where('vuu.user_id',$user_id);
			}
			$query = $this->db->select('vuu.*,vud.*')
			->from('va_user_users vuu')
			->join('va_user_details vud','vuu.user_id = vud.user_id')
			->where(array('status != '=>3))
			->get();
			return $query->result_array();
		}

		public function getStoreUser($user_id = "")	{
		if($user_id != "")	{
			$this->db->where('vuu.store_user_id',$user_id);
			}
			$query = $this->db->select('vuu.*,vud.*,vud.store_user_id as user_id')
			->from('va_store_users vuu')
			->join('va_store_details vud','vuu.store_user_id = vud.store_user_id')
			->where(array('status != '=>3))
			->get();
			return $query->result_array();
		}	
	
	
	public function changePassword($postdata) {
		$this->db->where('user_id',$postdata['user_id']);
		$this->db->update('va_user_users',array('password'=>md5($postdata['new_password'])));
		return $this->db->affected_rows();
	}
	
	public function editProfile($postdata) {
		$this->db->where('user_id',$postdata['user_id']);
		$this->db->update('va_user_details',array('first_name'=>$postdata['first_name'],'last_name'=>$postdata['last_name']));
		$update_status=$this->db->affected_rows();
		if($update_status >= 0)
		{
			if(!empty($postdata)) {
				if(isset($postdata['first_name']))
				{
					$this->session->userdata['userDetails']['first_name'] = $postdata['first_name'];
					$this->session->sess_write();
				}
				if(isset($postdata['last_name']))
				{
					$this->session->userdata['userDetails']['last_name'] = $postdata['last_name'];
					$this->session->sess_write();
				}
				return $update_status;
			}
			else{
				return $update_status;
			}
		}
	}
	
		public function enduserUpdStatus($bus_id,$st_val)	{
			$this->db->where('user_id', $bus_id);
			$this->db->set('status', $st_val);
			$this->db->update('va_user_users');
			//echo $this->db->last_query(); exit;
			return $this->db->affected_rows();
		}
	
	public function addUser($postdata,$provider)
	{
		$status=1;
		$query = $this->db->insert('va_user_users',array('email'=>$postdata['email'],'password'=>md5($postdata['password']),'registered_on'=>date('Y-m-d h:i:s'),'provider'=>$provider,'status'=>$status));
		$user_id = $this->db->insert_id();
		if($user_id)
		{
			$userdetails_query = $this->db->insert('va_user_details',array('user_id'=>$user_id,'first_name'=>$postdata['first_name'],'last_name'=>$postdata['last_name']));
		}
		return $user_id;
	}
	
	public function forgotPassword($postdata)
	{
		$this->db->where('email',$postdata['email']);
		 $this->db->update('va_user_users',array('password'=>md5($postdata['password'])));
		return $this->db->affected_rows();
	}
	public function storeForgotPassword($postdata) {
		$this->db->where('email',$postdata['email']);
		 $this->db->update('va_store_users',array('password'=>md5($postdata['password'])));
		return $this->db->affected_rows();
	}


	
	public function checkUserLogin($postdata,$provider)
	{
			$this->db->select('*');
			$this->db->from('va_user_users');
			$this->db->where(array('email'=>$postdata['login_email'],'password'=>md5($postdata['password']),'provider'=>$provider,'status'=>1) );
			$query = $this->db->get();
			$num_rows = $query->num_rows();
			if($num_rows > 0)
			{	
				$query_row = $query->result_array();
				
				$u_data = array('u_id'=>$query_row[0]['user_id'],'loged_in'=>'login','l_type'=>$provider);
				$this->session->set_userdata('u_data',$u_data);
				
				return $query_row[0]['user_id'];
			}
			else
			{
				$zero = "0";
				return $zero;
			}
	}
	
		public function checkStoreLogin($postdata,$provider)
	{
			$this->db->select('*');
			$this->db->from('va_store_users');
			$this->db->where(array('email'=>$postdata['store_email'],'password'=>md5($postdata['store_password']),'provider'=>$provider,'status'=>1) );
			$query = $this->db->get();
			$num_rows = $query->num_rows();
			if($num_rows > 0)
			{	
				$query_row = $query->result_array();
				
				$u_data = array('u_id'=>$query_row[0]['store_user_id'],'loged_in'=>'login','l_type'=>$provider);
				$this->session->set_userdata('u_data',$u_data);
				
				return $query_row[0]['store_user_id'];
			}
			else
			{
				$zero = "0";
				return $zero;
			}
	}
	
	public function loginTime($user_id) {
				$this->db->where('user_id', $user_id);
				$this->db->set('login_time',date('Y-m-d H:i:s'));
				$this->db->update('va_user_users');
	}
	public function storeLoginTime($user_id) {
				$this->db->where('store_user_id', $user_id);
				$this->db->set('login_time',date('Y-m-d H:i:s'));
				$this->db->update('va_store_users');
	}
	
	public function  cardCount() {
			$this->db->where('status != 3');
			$query = $this->db->get('va_vouchers');
		return $query->num_rows();
		}	


	public function getCards($voucher_id="",$voucher_value="",$voucher_category="",$card_type="",$limit="",$offset="") { 
		if (!empty($voucher_value)) {
					$this->db->where('voucher_value '.$voucher_value);
					}
		if (!empty($voucher_id)) {
					$this->db->where('voucher_id ',$voucher_id);
					}			
		if (!empty($voucher_category)) {
					$this->db->where('cat_id', $voucher_category);
					}
		if (!empty($card_type)) {
					$this->db->where('card_type', $card_type);
					}
					
		
		if($limit != "" || $offset != "") {
			$this->db->limit($limit,$offset);
			}

		
		$this->db->where('va_vouchers.status != 3');
		$this->db->where('va_business.status != 3');
		$query = $this->db->select('va_business.store_name,va_business.image as business_image,va_vouchers.*')
						  ->from('va_vouchers')
						  ->join('va_business', 'va_business.business_id = va_vouchers.business_id')
						  ->order_by('voucher_value','asc')
						  ->get();
						// echo $this->db->last_query(); exit;
		return $query->result_array();
	}
	public function getStoreDetails()
	{
		$query = $this->db->select('store_name,image')->from('va_business')->where('business_id',$this->business_id)->get();
		return $query->row_array();
	}
	public function getSale($id="",$limit="",$offset="") {
		if($id != '') {    
            $this->db->where('va_sales.sale_id',$id);
        }
        if($limit != "" || $offset != ""){
            $this->db->limit($limit,$offset);
        }
		$this->db->order_by('va_sales.sale_id','desc');
		$this->db->where('va_sales.status != 3');
		$this->db->where('user_id',$this->user_id);
        $query = $this->db->select('va_sales.*,va_business.store_name,va_business.image as business_image,va_vouchers.*,va_transactions.*')
                          ->from('va_sales')
						  ->join('va_business', 'va_business.business_id = va_sales.business_id')
						  ->join('va_vouchers', 'va_sales.voucher_id = va_vouchers.voucher_id')
						  ->join('va_transactions', 'va_sales.sale_id = va_transactions.sale_id')
                          ->get();
		// echo $this->db->last_query(); exit;
        return $query->result_array();
		}
	
	public function getWishCard($id="",$limit="",$offset="") {
		if($id != '') {    
            $this->db->where('va_wish.wish_id',$id);
        }
        if($limit != "" || $offset != ""){
            $this->db->limit($limit,$offset);
        }
		$this->db->order_by('va_wish.wish_id','desc');
		$this->db->where('va_wish.status != 3');
		$this->db->where('user_id',$this->user_id);
        $query = $this->db->select('va_wish.*,va_business.store_name,va_business.image as business_image,va_vouchers.*')
                          ->from('va_wish')
						  ->join('va_vouchers', 'va_wish.voucher_id = va_vouchers.voucher_id')
						   ->join('va_business', 'va_business.business_id = va_vouchers.business_id')
							->get();
		//echo $this->db->last_query(); exit;
        return $query->result_array();
		}	
}
?>