<?php
if(!defined('BASEPATH')) exit('No direct script access allowed');
 function parse_username($username){
	if(strrpos($username, "@") === false){
		return $username;
	}else{
		return strstr($username, '@', true);
	}
 
 }

 
 ?>
	