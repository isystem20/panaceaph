<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=10.000" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta http-equiv="cache-control" content="no-cache,no-store" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="expires" content="-1" />

    <title>PANACEA LOGIN</title>
    <link href="<?php echo base_url(); ?>themes/assets/toastr-master/toastr.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>themes/login/css/style4401.css" />
    <style>
        .illustrationClass {
            background-image: url('<?php echo base_url(); ?>themes/login/illustration/illustration0d4e.png');
        }
    </style>

</head>

<body dir="ltr" class="body">
    <div id="fullPage">
        <div id="brandingWrapper" class="float">
            <div id="branding"></div>
        </div>
        <div id="contentWrapper" class="float">
            <div id="content">
                <div id="header">
                    <img class='logoImage' src='<?php echo base_url(); ?>themes/login/logo/logo6111.png' alt='Lazada Group' />
                </div>
                <div id="workArea">
                    <div id="updatePasswordArea">
                      <?php 
                      echo validation_errors();
                      if (empty($ref)) {
                        $ref = "";
                      }
                      $hidden = array(
                        'ref'=> $ref,
                      );
                      ?>
                        <?php echo form_open('login/authenticate','id="loginform" autocomplete="off" novalidate="novalidate"',$hidden); ?>
                            <div class="groupMargin">
                                Please login your account.
                            </div>

                            <div class="groupMargin" style="display:none">
                                <span id="expiredNotification"></span>
                            </div>

                            <div id="error" class="fieldMargin error smallText">
                                <label id="errorText" for=""></label>
                            </div>

                            <div id="userNameArea">
                                <?php echo form_input(['name'=>'UserName','class'=>'text fullWidth', 'placeholder'=>'Username','required'=>'true', 'autocomplete'=>'off', 'spellcheck'=>'false', 'tabindex'=>'1']); ?>
                            </div>

                            <div id="oldPasswordArea">
                                <?php echo form_password(['name'=>'Password','class'=>'text fullWidth', 'placeholder'=>'Password','required'=>'', 'autocomplete'=>'off', 'spellcheck'=>'false', 'tabindex'=>'2']); ?>
                            </div>

                            <div id="submissionArea" class="submitMargin">
                                <?php echo form_submit(['id'=>'loginbtn','name'=>'Submit', 'value'=>'Submit', 'autocomplete'=>'off', 'tabindex'=>'3']); ?>
                                <input id="cancelButton" type="submit" name="Cancel" value="Cancel" tabindex="4"/>
                            </div>
                        
                        <?php echo form_close(); ?>

                        <div id="introduction" class="groupMargin">
                            
                        </div>

                    </div>

                </div>
                <div id="footerPlaceholder"></div>
                
                <script src="<?php echo base_url(); ?>themes/js/jquery.js"></script>
                <script src="<?php echo base_url(); ?>themes/assets/toastr-master/toastr.js"></script>
                <script src="<?php echo base_url(); ?>themes/js/panacea.js"></script>                
            </div>
            <div id="footer">
                <div id="footerLinks" class="floatReverse">
                    <div><span id="copyright">&#169; Powered by PANACEA-PH</span></div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>