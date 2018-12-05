<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">

                <ul class="breadcrumb">
                  <li><a href="#"><i class="fa fa-home"></i> Administration</a></li>
                  <li><a href="<?=base_url(); ?>hr/employees">Services</a></li>
                  <li class="active"><?=$labels['breadcrumb']; ?></li>
                </ul>

                <?php $hidden = array(
                  'companyid'=>$this->session->userdata('companyid'),
                  'id' => '',
                ); ?>
                <?=form_open('hr/employees/add','id="employeeform" class="form-horizontal tasi-form" role="form"',$hidden);?>


                <section class="panel">
                    <header class="panel-heading">
                        <?=$labels['header']; ?>
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                         </span>
                    </header>
                    <div class="panel-body">

                      <div class="item-group">


                          <div id="basicinfo" class="mb-20">
                            <div style="margin-bottom: 20px;">
                              <span class="label label-primary">SERVICE</span> 
                            </div>  
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Full Name</label>
                                <div class="col-sm-3">
                                  <input type="text" class="form-control FirstName" name="firstname" placeholder="First Name">
                                </div>


                                <div class="col-sm-3">
                                  <input type="text" class="form-control MiddleName" name="middlename" placeholder="Middle Name">
                                </div>

                                <div class="col-sm-3">
                                  <input type="text" class="form-control LastName" name="lastname" placeholder="Last Name">
                                </div>


                                <div class="col-sm-1">
                                  <input type="text" class="form-control" name="suffix" placeholder="Suffix">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Birth Date</label>
                                <div class="col-sm-2">
                                    <input class="form-control form-control-inline input-medium default-date-picker Birthdate" name="birthdate" size="16" type="text" value="">
                                </div>

                                <label class="col-sm-2 control-label">Civil Status</label>
                                <div class="col-sm-2">
                                    <select class="form-control CivilStatus" name="civilstatus">
                                        <option value="Single">Single</option>
                                        <option value="Married">Married</option>
                                        <option value="Separated">Separated</option>
                                    </select>
                                </div>

                                <label class="col-sm-2 control-label NationalityId">Nationality</label>
                                <div class="col-sm-2">
                                    <select class="js-example-basic-single" name="nationality" get="json/nationalities/options">
                                    </select>
                                </div>                                  
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Address</label>
                                <div class="col-sm-6">
                                  <input type="text" name="address" class="form-control Address1" placeholder="House No., Street, Subdivision">
                                </div>
                                <div class="col-sm-2">
                                    <select class="js-example-basic-single CityId" name="city" get="json/cities/options">
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <select class="js-example-basic-single ProvinceId" name="region" get="json/regions/options">
                                    </select>
                                </div>                                  
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Contact Details</label>
                                <div class="col-sm-3">
                                  <input type="text" name="email" class="form-control PersonalEmail" placeholder="Email">
                                </div>

                                <div class="col-sm-3">
                                  <input type="text" name="mobile" class="form-control" placeholder="Mobile Number">
                                </div>

                                <div class="col-sm-4">
                                  <input type="text" name="landline" class="form-control" placeholder="Landline">
                                </div>

                            </div>
                          </div>

                    </div>
                </div>
              </section>


                    </div>

                </form>  

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


<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addeducationmodal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Add Education</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-sm-3 control-label">School Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="School Name" id="schoolname">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-sm-3 control-label">Degree</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="Course/Degree" id="course">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-sm-3 control-label">Inclusive Dates</label>
                        <div class="col-sm-9">

                            <div class="input-group input-large" data-date="13/07/2013" data-date-format="mm/dd/yyyy">
                                <input type="text" class="form-control dpd1" id="edfrom">
                                <span class="input-group-addon">To</span>
                                <input type="text" class="form-control dpd2" id="edto">
                            </div>
                            <!-- <input type="text" class="form-control" placeholder="MM/YY-MM/YY" id="graduatedate"> -->
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-sm-3 control-label">Award</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" placeholder="Awards" id="award">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button type="button" class="btn btn-info btn-sm" id="addschool">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addworkhistorymodal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Add Education</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-lg-3 col-sm-3 control-label">Company</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Company Name" id="ehcompany">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Position</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Designation" id="ehposition">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Year</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="MM/YY-MM/YY" id="ehyear">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Contact</label>
                        <div class="col-lg-9">
                           <input type="text" class="form-control" placeholder="Contact Num" id="ehcontact">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button type="button" class="btn btn-info btn-sm" id="addworkhistory">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addlicensemodal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Add License</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-lg-3 col-sm-3 control-label">Company</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="License Name" id="license">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Position</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Issuing Institution" id="liprovider">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Year</label>
                        <div class="col-lg-9">
                             <input type="text" class="form-control" placeholder="MM/YY-MM/YY" id="livalidity">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                             <button type="button" class="btn btn-info btn-sm" id="addlicense">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addtrainingmodal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Add Trainining/Certification</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-lg-3 col-sm-3 control-label">Company</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Training/Certificate" id="training">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Position</label>
                        <div class="col-lg-9">
                           <input type="text" class="form-control" placeholder="Issuing Institution" id="tcprovider">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Year</label>
                        <div class="col-lg-9">
                             <input type="text" class="form-control" placeholder="Validity/Training Duration" id="tcdate">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                             <button type="button" class="btn btn-info btn-sm" id="addtraining">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="adddependentmodal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Add Dependent</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail1" class="col-lg-3 col-sm-3 control-label">Full Name</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" placeholder="Dependent's Full Name" id="dependent">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Relation</label>
                        <div class="col-lg-9">
                           <input type="text" class="form-control" placeholder="Relationship" id="relation">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword1" class="col-lg-3 col-sm-3 control-label">Birthdate</label>
                        <div class="col-lg-9">
                             <input type="text" class="form-control" placeholder="Birthdate" id="depbdate">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                             <button type="button" class="btn btn-info btn-sm" id="adddependent">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>