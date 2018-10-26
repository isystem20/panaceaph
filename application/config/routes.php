<?php
defined('BASEPATH') OR exit('No direct script access allowed');

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
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'MainController';
$route['404_override'] = '';
$route['translate_uri_dashes'] = TRUE;

$route['login'] = 'AuthController/Login';
$route['login/authenticate'] = 'AuthController/GoLogin';
$route['logout'] = 'AuthController/GoLogout';
$route['clients/add'] = 'admin/ClientController/ClientCreate';



/* Load Employee Masterlist */ 	$route['hr/employees'] = 'hr/EmployeeController/Masterlist';
/* Post to create */ 			$route['hr/employees/add'] = 'hr/EmployeeController/Create';
/* Post to edit */ 				$route['hr/employees/edit'] = 'hr/EmployeeController/Update';
/* Post to delete */ 			$route['hr/employees/delete'] = 'hr/EmployeeController/Delete';

/* Load Positions Masterlist */ $route['hr/positions'] = 'hr/PositionsController/Masterlist';
/* Post to create */ 			$route['hr/positions/add'] = 'hr/PositionsController/Create';
/* Post to edit */ 				$route['hr/positions/edit'] = 'hr/PositionsController/Update';
/* Post to delete */ 			$route['hr/positions/delete'] = 'hr/PositionsController/Delete';

/* Load Employment Types */ 	$route['hr/employment-types'] = 'hr/EmploymentTypesController/Masterlist';
/* Post to create */ 			$route['hr/employment-types/add'] = 'hr/EmploymentTypesController/Create';
/* Post to edit */ 				$route['hr/employment-types/edit'] = 'hr/EmploymentTypesController/Update';
/* Post to delete */ 			$route['hr/employment-types/delete'] = 'hr/EmploymentTypesController/Delete';

/* Load Ranks */ 				$route['hr/ranks'] = 'hr/RanksController/Masterlist';
/* Post to create */ 			$route['hr/ranks/add'] = 'hr/RanksController/Create';
/* Post to edit */ 				$route['hr/ranks/edit'] = 'hr/RanksController/Update';
/* Post to delete */ 			$route['hr/ranks/delete'] = 'hr/RanksController/Delete';

/* Load Groups */ 				$route['hr/groups'] = 'hr/GroupsController/Masterlist';
/* Post to create */ 			$route['hr/groups/add'] = 'hr/GroupsController/Create';
/* Post to edit */ 				$route['hr/groups/edit'] = 'hr/GroupsController/Update';
/* Post to delete */ 			$route['hr/groups/delete'] = 'hr/GroupsController/Delete';

/* Load Sites */ 				$route['hr/sites'] = 'hr/SitesController/Masterlist';
/* Post to create */ 			$route['hr/sites/add'] = 'hr/SitesController/Create';
/* Post to edit */ 				$route['hr/sites/edit'] = 'hr/SitesController/Update';
/* Post to delete */ 			$route['hr/sites/delete'] = 'hr/SitesController/Delete';

/* Load Departments */ 			$route['hr/departments'] = 'hr/DepartmentsController/Masterlist';
/* Post to create */ 			$route['hr/departments/add'] = 'hr/DepartmentsController/Create';
/* Post to edit */ 				$route['hr/departments/edit'] = 'hr/DepartmentsController/Update';
/* Post to delete */ 			$route['hr/departments/delete'] = 'hr/DepartmentsController/Delete';


/* Load Departments */ 			$route['hr/cost-centers'] = 'hr/CostCentersController/Masterlist';
/* Post to create */ 			$route['hr/cost-centers/add'] = 'hr/CostCentersController/Create';
/* Post to edit */ 				$route['hr/cost-centers/edit'] = 'hr/CostCentersController/Update';
/* Post to delete */ 			$route['hr/cost-centers/delete'] = 'hr/CostCentersController/Delete';

/* Load Skills */ 				$route['hr/skills'] = 'hr/SkillsController/Masterlist';
/* Post to create */ 			$route['hr/skills/add'] = 'hr/SkillsController/Create';
/* Post to edit */ 				$route['hr/skills/edit'] = 'hr/SkillsController/Update';
/* Post to delete */ 			$route['hr/skills/delete'] = 'hr/SkillsController/Delete';

/* Load Certificates */ 		$route['hr/certificates'] = 'hr/CertificatesController/Masterlist';
/* Post to create */ 			$route['hr/certificates/add'] = 'hr/CertificatesController/Create';
/* Post to edit */ 				$route['hr/certificates/edit'] = 'hr/CertificatesController/Update';
/* Post to delete */ 			$route['hr/certificates/delete'] = 'hr/CertificatesController/Delete';


$route['hr/settings'] = 'hr/SettingsController/Masterlist';
$route['hr/reports'] = 'hr/ReportsController/Masterlist';




