<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class MY_Controller extends CI_Controller {
	
  protected $layout = 'admin/layout';
  protected function render($content) {
  	$this->load->library('session');
    $view_data = array(
      'content' => $content
    );
    $this->load->view($this->layout,$view_data);
  }
}