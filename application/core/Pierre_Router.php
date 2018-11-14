<?php  if (! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * My Router
 *
 * This class extends the Crossfire core Router. It adds a catch all
 * controller for routing DB pages
 *
 * @author  Martin Langenberg
 */

 class Pierre_Router extends CI_Router {
 
 /**
  * Catchall controller
  *
  * @var string
  */
 public $catchall_controller;
 
     public function __construct() {
         log_message('debug', "Class ".get_class($this)." Initialized.");
 
         parent::__construct();
 }
 
 /**
  * Set route mapping
  *
  * Determines what should be served based on the URI request,
  * as well as any "routes" that have been set in the routing config file.
  *
  * @return void
  */
 protected function _set_routing()
 {
     // Are query strings enabled in the config file? Normally CI doesn't utilize query strings
     // since URI segments are more search-engine friendly, but they can optionally be used.
     // If this feature is enabled, we will gather the directory/class/method a little differently
     if ($this->enable_query_strings)
     {
         // If the directory is set at this time, it means an override exists, so skip the checks
         if ( ! isset($this->directory))
         {
             $_d = $this->config->item('directory_trigger');
             $_d = isset($_GET[$_d]) ? trim($_GET[$_d], " \t\n\r\0\x0B/") : '';
 
             if ($_d !== '')
             {
                 $this->uri->filter_uri($_d);
                 $this->set_directory($_d);
             }
         }
 
         $_c = trim($this->config->item('controller_trigger'));
         if ( ! empty($_GET[$_c]))
         {
             $this->uri->filter_uri($_GET[$_c]);
             $this->set_class($_GET[$_c]);
 
             $_f = trim($this->config->item('function_trigger'));
             if ( ! empty($_GET[$_f]))
             {
                 $this->uri->filter_uri($_GET[$_f]);
                 $this->set_method($_GET[$_f]);
             }
 
             $this->uri->rsegments = array(
                 1 => $this->class,
                 2 => $this->method
                 );
         }
         else
         {
             $this->_set_default_controller();
         }
 
         // Routing rules don't apply to query strings and we don't need to detect
         // directories, so we're done here
         return;
     }
 
     // Load the routes.php file.
     if (file_exists(APPPATH.'config/routes.php'))
     {
         include(APPPATH.'config/routes.php');
     }
 
     if (file_exists(APPPATH.'config/'.ENVIRONMENT.'/routes.php'))
     {
         include(APPPATH.'config/'.ENVIRONMENT.'/routes.php');
     }
 
     // Validate & get reserved routes
     if (isset($route) && is_array($route))
     {
         isset($route['default_controller']) && $this->default_controller = $route['default_controller'];
         // Set the catch all controller
         isset($route['catchall_controller']) && $this->catchall_controller = $route['catchall_controller'];
         isset($route['translate_uri_dashes']) && $this->translate_uri_dashes = $route['translate_uri_dashes'];
         unset($route['default_controller'], $route['translate_uri_dashes'], $route['catchall_controller']);
         $this->routes = $route;
     }
 
     // Is there anything to parse?
     if ($this->uri->uri_string !== '')
     {
         $this->_parse_routes();
     }
     else
     {
         $this->_set_default_controller();
     }
 }
 
 /**
  * Set request route
  *
  * Takes an array of URI segments as input and sets the class/method
  * to be called.
  *
  * @used-by CI_Router::_parse_routes()
  * @param array $segments URI segments
  * @return void
  */
 protected function _set_request($segments = array())
 {
     $segments = $this->_validate_request($segments);
     // If we don't have any segments left - try the default controller;
     // WARNING: Directories get shifted out of the segments array!
     if (empty($segments))
     {
         $this->_set_default_controller();
         return;
     }

     if ($this->translate_uri_dashes === TRUE)
     {
         $segments[0] = str_replace('-', '_', $segments[0]);
         if (isset($segments[1]))
         {
             $segments[1] = str_replace('-', '_', $segments[1]);
         }
     }

     $this->set_class($segments[0]);
     if (isset($segments[1]))
     {
         $this->set_method($segments[1]);
     }
     else
     {
         $segments[1] = 'index';
     }
 
     // Check if a valid controller is set, else call the catchall
     if( ! $this->_is_controller($segments[0]) ) {
         $this->_set_catchall_controller();
         return;
     }

     array_unshift($segments, NULL);
     unset($segments[0]);
     $this->uri->rsegments = $segments;
 }
 
 /**
  * Set default controller
  *
  * @return void
  */
 protected function _set_catchall_controller()
 {
     // Catch all controller empty? Set the default controller
     if (empty($this->catchall_controller))
     {
         $this->_set_default_controller();
     }
 
     // Is the method being specified?
     if (sscanf($this->catchall_controller, '%[^/]/%s', $class, $method) !== 2)
     {
         $method = 'index';
     }
 
     if ( ! file_exists(APPPATH.'controllers/'.$this->directory.ucfirst($class).'.php'))
     {
         // No file found for the catch all controller
         $this->_set_default_controller();
     }
 
     $this->set_class($class);
     $this->set_method($method);
 
     // Assign routed segments, index starting from 1
     $this->uri->rsegments = array(
         1 => $class,
         2 => $method,
         3 => implode('/', $this->uri->segments)
         );
 
     log_message('debug', "No matching controller. Catch all controller {$this->catchall_controller} set.");
 }
 
 protected function _is_controller($controller) {
    
     $dir = realpath(APPPATH.'controllers/'.$this->directory);
 
     if( ! file_exists(realpath($dir.'/'.$controller.'.php')) ) {
         // Clear, or set the directory for the use of the catchall controller
         $this->set_directory(NULL);
         return FALSE;
     }
 
     return TRUE;
 }
 
} 