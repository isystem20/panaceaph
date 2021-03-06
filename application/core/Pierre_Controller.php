<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pierre_Controller extends CI_Controller {

    function __construct()
    {

        parent::__construct();
        // //$this->CI =& get_instance();

        // $sess_id = $this->session->userdata('userid');
        // if(empty($sess_id))
        // {
        //     return redirect(base_url().'?ref='.base_url(uri_string()));

        // }

        $session_id = $this->session->userdata('userid');
        $password_temp = $this->session->userdata('temppass');
        $modadmin = $this->session->userdata('isadmin');

        if(empty($session_id))
        {
            if (base_url(uri_string()) != base_url()) {
                return redirect(base_url().'login?ref='.base_url(uri_string()));
            }
            return redirect(base_url().'login');
        }

    }

}


class Public_Controller extends Pierre_Controller {

    function __construct()
    {
        parent::__construct();

        //Initialization code that affects Public controllers. Probably not much needed because everyone can access public.
    }

}

class Admin_Controller extends Pierre_Controller {

    function __construct()
    {
        parent::__construct();
    }

}

class Manager_Controller extends Pierre_Controller {

    function __construct()
    {
        parent::__construct();

        //Initialization code that affects Member controllers. I.E. redirect and die if not logged in
    }

}


class Leader_Controller extends Pierre_Controller {

    function __construct()
    {
        parent::__construct();

        //Initialization code that affects Member controllers. I.E. redirect and die if not logged in
    }

}

class Member_Controller extends Pierre_Controller {

    function __construct()
    {
        parent::__construct();

        //Initialization code that affects Member controllers. I.E. redirect and die if not logged in
    }

}



?>