<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once dirname(__FILE__) . '/Imap/Imap_parser.php';

class Imap extends Imap_parser
{
    function __construct()
    {
        parent::__construct();
    }
}