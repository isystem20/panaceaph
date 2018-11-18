<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>
	<script src="assets/js/jquery-3.3.1.js"></script>

<script src="assets/js/bootstrap/bootstrap.js"></script>
<script src="assets/js/bootstrap/bootstrap.bundle.js"></script>

	<script src="assets/js/app.js"></script>
	<script src="assets/js/BaseViewForm.js"></script>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap/bootstrap-reboot.css">
		
</head>

<body>

	<button id="department" onClick="GenerateViewData(this.id);" >
		Department
	</button>
	<button id="position" onClick="GenerateViewData(this.id);" >
		Position
	</button>
	<button id="team" onClick="GenerateViewData(this.id);" >
		Teams
	</button>


<button onClick="test();">
	Test Me!
</button>


<div id = "main-table-views">



</div>




















<div id="page-view" class="container">
    <ul id="list-nav" class="nav nav-tabs" role="tablist">
        <li class="nav-item nav-link">
        	<a href="#contact_01" data-toggle="tab">Joe Smith </a>
        	<span class="close" aria-hidden="true">&times;</span>
        </li>
        <li class="nav-item nav-link">
        	<a  href="#contact_02" data-toggle="tab">Molly Lewis</a>
        	<span class="close" aria-hidden="true">&times;</span>
        </li>
        <li class="nav-item nav-link">
        	<a class="" href="#" class="add-contact">+ Add Contact</a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="contact_01">Contact Form: Joe Smith</div>
        <div class="tab-pane" id="contact_02">Contact Form: Molly Lewis</div>
    </div>
</div>







































<script type="">

//appication of csrf in code igniter.
var CFG = {
        url: '<?php echo $this->config->item('base_url');?>',
        token: '<?php echo $this->security->get_csrf_hash();?>'
    };

</script>


</body>
</html>