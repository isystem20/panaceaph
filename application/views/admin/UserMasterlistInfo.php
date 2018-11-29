<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">

                <ul class="breadcrumb">
                  <li><a href="#"><i class="fa fa-home"></i> Administration</a></li>
                  <li><a href="<?=base_url(); ?>hr/employees">Users</a></li>
                  <li class="active"><?=$labels['breadcrumb']; ?></li>
                </ul>

                <section class="panel">
                    <header class="panel-heading">
                        <?=$labels['header']; ?>
                        <span class="tools pull-right">
                            <!-- <a href="javascript:;" class="fa fa-chevron-down"></a> -->
                         </span>
                    </header>
                    <div class="panel-body">

                      <div class="item-group">
                          <div class="row">
                            <div class="col-lg-6">
                              <?php $hidden = array(
                                'companyid'=>$this->session->userdata('companyid'),
                                'id' => '',
                              ); ?>
                              <?=form_open('hr/employees/add','id="employeeform" class="form-horizontal tasi-form" role="form"',$hidden);?>

                              <div id="basicinfo" class="mb-20">
                                <div style="margin-bottom: 20px;">
                                  <span class="label label-primary">ACCOUNT INFORMATION</span> 
                                </div>  
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Client Name:</label>
                                    <div class="col-sm-10">
                                        <select class="js-example-basic-single" name="civilstatus">
                                            <?php
                                            if ($clients->num_rows() > 0) {
                                                foreach($clients->result() as $row) {
                                                ?>
                                            <option value="<?php echo $row->Id; ?>"><?php echo $row->CompanyName; ?></option>
                                              <?php 
                                                  } }
                                              ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Full Name</label>
                                    <div class="col-sm-5">
                                      <input type="text" class="form-control" name="firstname" placeholder="First Name">
                                    </div>

                                    <div class="col-sm-5">
                                      <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-10">
                                      <input type="text" name="address" class="form-control" placeholder="Email Address">
                                    </div>                                
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-4">
                                      <input type="text" name="email" class="form-control" placeholder="Password">
                                    </div>

                                    <div class="col-sm-4">
                                      <input type="text" name="mobile" class="form-control" placeholder="Confirm Password">
                                    </div>

                                    <div class="col-sm-2">
                                      <button type="button" class="btn btn-success btn-sm">Generate</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-2">

                                    </div>                                  
                                    <div class="col-sm-3">
                                        <label class="container">Password Expires?
                                          <input type="checkbox" checked="checked">
                                          <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="container">Can Change Password?
                                          <input type="checkbox" checked="checked">
                                          <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="col-sm-3">
                                        <label class="container">Change Next Login?
                                          <input type="checkbox" checked="checked">
                                          <span class="checkmark"></span>
                                        </label>
                                    </div>                                                                       
                                 
                                </div>


                              </div>
                                 
                            </div>
                            <div class="col-lg-6">

                              <div id="educationalbackground">
                                <div class="">
                                  <span class="label label-primary">SERVICE MODULES ACCESSLIST</span> 
                                </div>  
                                  <div class="form-group">

                              <div class="alert fade in">
                                <section class="panel">
                                    <header class="panel-heading tab-bg-dark-navy-blue">
                                        <ul class="nav nav-tabs nav-justified ">
                                            <li class="active">
                                                <a href="#popular" data-toggle="tab">
                                                    Popular
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#comments" data-toggle="tab">
                                                    Comments
                                                </a>
                                            </li>
                                            <li class="">
                                                <a href="#recent" data-toggle="tab">
                                                    Recents
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#popular" data-toggle="tab">
                                                    Popular
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#comments" data-toggle="tab">
                                                    Comments
                                                </a>
                                            </li>
                                            <li class="">
                                                <a href="#recent" data-toggle="tab">
                                                    Recents
                                                </a>
                                            </li>


                                        </ul>
                                    </header>
                                    <div class="panel-body">
                                        <div class="tab-content tasi-tab">
                                            <div class="tab-pane active" id="popular">
                                                <article class="media">
                                                    <a class="pull-left thumb p-thumb">
                                                        <img src="img/product1.jpg">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class=" p-head" href="#">Item One Tittle</a>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                    </div>
                                                </article>
                                                <article class="media">
                                                    <a class="pull-left thumb p-thumb">
                                                        <img src="img/product2.png">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class=" p-head" href="#">Item Two Tittle</a>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                    </div>
                                                </article>
                                                <article class="media">
                                                    <a class="pull-left thumb p-thumb">
                                                        <img src="img/product3.png">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class=" p-head" href="#">Item Three Tittle</a>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                    </div>
                                                </article>
                                            </div>
                                            <div class="tab-pane" id="comments">
                                                <article class="media">
                                                    <a class="pull-left thumb p-thumb">
                                                        <img src="img/avatar-mini.jpg">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class="cmt-head" href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                                        <p> <i class="fa fa-clock-o"></i> 1 hours ago</p>
                                                    </div>
                                                </article>
                                                <article class="media">
                                                    <a class="pull-left thumb p-thumb">
                                                        <img src="img/avatar-mini2.jpg">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class="cmt-head" href="#">Nulla vel metus scelerisque ante sollicitudin commodo</a>
                                                        <p> <i class="fa fa-clock-o"></i> 23 mins ago</p>
                                                    </div>
                                                </article>
                                                <article class="media">
                                                    <a class="pull-left thumb p-thumb">
                                                        <img src="img/avatar-mini3.jpg">
                                                    </a>
                                                    <div class="media-body">
                                                        <a class="cmt-head" href="#">Donec lacinia congue felis in faucibus. </a>
                                                        <p> <i class="fa fa-clock-o"></i> 15 mins ago</p>
                                                    </div>
                                                </article>
                                            </div>
                                            <div class="tab-pane " id="recent">
                                                Recent Item goes here
                                            </div>
                                        </div>
                                    </div>
                                </section>
                              </div>



                                </div>                            
                              </div>

                            </div>


                           

                              

                          </div>

                                <div class=" add-task-row">
                                    <button class="btn btn-success btn-sm pull-right" type="submit" id="employeesubmit">Submit</button>
                                </div>
                              </form> 


                      </div>



                    </div>
                </section>
            </div>
        </div>
    </section>
</section>


<style type="text/css">
  .text-reg {
    font-weight: normal;
  }
  .mb-20 {
    margin-bottom: 20px;
    } 
  .mt-20 {
    margin-top: 20px;
  }
  .mb-40 {
    margin-bottom: 40px;
    } 
  .mt-40 {
    margin-top: 40px;
  }
  .field-error {
    border-color: #a94442;
  }
  .help-block {
    color: #a94442;
  }
  
</style>