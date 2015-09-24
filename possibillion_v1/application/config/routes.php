<?php
if (!defined('BASEPATH'))
	exit('No direct script access allowed');
/*
 | -------------------------------------------------------------------------
 | URI ROUTING
 | -------------------------------------------------------------------------
 | This file lets you re-map URI requests to specific controller functions.
 |
 | Typically there is a one-to-one relationship between a URL string
 | and its corresponding controller class/method. The segments in a
 | URL normally follow this pattern:
 |
 |	example.com/class/method/id/
 |
 | In some instances, however, you may want to remap this relationship
 | so that a different class/function is called than the one
 | corresponding to the URL.
 |
 | Please see the user guide for complete details:
 |
 |	http://codeigniter.com/user_guide/general/routing.html
 |
 | -------------------------------------------------------------------------
 | RESERVED ROUTES
 | -------------------------------------------------------------------------
 |
 | There area two reserved routes:
 |
 |	$route['default_controller'] = 'welcome';
 |
 | This route indicates which controller class should be loaded if the
 | URI contains no data. In the above example, the "welcome" class
 | would be loaded.
 |
 |	$route['404_override'] = 'errors/page_missing';
 |
 | This route will tell the Router what URI segments to use if those provided
 | in the URL cannot be matched to a valid route.
 |
 */

$route['default_controller'] = "welcome";
$route['404_override'] = '';
$route['login'] = 'welcome/login';
$route['NodalLogin'] = 'welcome/NodalLogin';
$route['dashboard'] = 'welcome/dashboard';
$route['NodalDashboard'] = 'welcome/NodalDashboard';
$route['addWorkshop'] = 'welcome/addWorkshop';
$route['updateWorkshop'] = 'welcome/updateWorkshop';
$route['cancelWorkshop'] = 'welcome/cancelWorkshop';
$route['editWorkshop/(:any)'] = 'welcome/editWorkshop/$1';
$route['forgotPassword'] = 'welcome/forgotPassword';
$route['submitReport'] = 'welcome/submitReport';
$route['viewReport/(:any)'] = 'welcome/viewReport/$1';
$route['approverepost'] = 'welcome/approverepost';
$route['admin'] = 'admin/admin/index';
$route['admin/logout'] = 'admin/admin/logout';
$route['admin/changePassword'] = 'admin/admin/changePassword';
$route['admin/editCoordinator/(:any)'] = 'admin/admin/editCoordinator/$1';
$route['admin/addCoordinator'] = 'admin/admin/addCoordinator';
$route['admin/coordinators'] = 'admin/admin/coordinator';
$route['admin/guidance_metirial'] = 'admin/admin/guidanceMetirial';
$route['admin/guidance_metirial_add'] = 'admin/admin/guidanceMetirialAdd';
$route['admin/guidance_metirial_delete'] = 'admin/admin/guidanceMetirialDelete';
$route['admin/guidance_metirial_delete/(:any)'] = 'admin/admin/guidanceMetirialDelete/$1';
$route['admin/guidance_metirial_edit'] = 'admin/admin/guidanceMetirialEdit';
$route['admin/guidance_metirial_edit/(:any)'] = 'admin/admin/guidanceMetirialEdit/$1';
$route['admin/workshop_material'] = 'admin/admin/workshopMaterial';
$route['admin/workshop_material_add'] = 'admin/admin/workshopMaterialAdd';
$route['admin/workshop_metirial_delete'] = 'admin/admin/workshopMetirialDelete';
$route['admin/workshop_metirial_delete/(:any)'] = 'admin/admin/workshopMetirialDelete/$1';
$route['admin/workshop_metirial_edit/(:any)'] = 'admin/admin/workshopMetirialEdit/$1';
$route['admin/presentation_reporting'] = 'admin/admin/presentationReporting';
$route['admin/presentation_reporting_delete'] = 'admin/admin/presentationReportingDelete';
$route['admin/presentation_reporting_delete/(:any)'] = 'admin/admin/presentationReportingDelete/$1';
$route['admin/presentation_reporting_add'] = 'admin/admin/presentationReportingAdd';
$route['admin/presentation_reporting_edit/(:any)'] = 'admin/admin/presentationReportingEdit/$1';

/* End of file routes.php */
/* Location: ./application/config/routes.php */
