<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">

                <ul class="breadcrumb">
                  <li><a href="#"><i class="fa fa-home"></i> Human Resources</a></li>
                  <li><a href="<?=base_url(); ?>hr/employees">Employees</a></li>
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
                              <span class="label label-primary">BASIC INFORMATION</span> 
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

                          <div id="employmentrecords">
                            <div class="mb-20 mt-40">
                              <span class="label label-primary">EMPLOYMENT RECORDS</span> 
                            </div>  
                            <div class="form-group">
                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Number</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="employeenumber" class="form-control Code" placeholder="Employee Number">
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Email</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="companyemail" class="form-control CompanyEmail" placeholder="Company Email">
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Contact</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="contactnumber" class="form-control" placeholder="Contact Number">
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Site/Branch</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single SiteId" name="site" get="json/sites/options">
                                    </select>
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Department</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single DepartmentId" name="department" get="json/departments/options">
                                    </select>
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">CostCenter</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single CostCenterId" name="costcenter" get="json/costcenters/options">
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Group</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="team" get="json/groups/options">
                                    </select>
                                  </div>
                                </div>
                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Superior</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single Leader1" name="superior" get="json/superior/options">
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Designation</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single PositionId" name="position" get="json/positions/options">
                                    </select>
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Rank</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single EmployeeRankId" name="rank" get="json/ranks/options">
                                    </select>
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Type</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single EmployeeTypeId" name="type" get="json/emptypes/options">
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Date Hired</label>
                                  <div class="col-sm-8">
                                    <input class="form-control form-control-inline input-medium default-date-picker DateHired" name="hiredate" size="16" type="text" value="">
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Duration</label>
                                  <div class="col-sm-8">
                                    <input type="number" name="duration" class="form-control Duration" placeholder="Duration (Mo)">
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Shift</label>
                                  <div class="col-sm-8">
                                    <input disabled class="form-control form-control-inline input-medium default-date-picker" name="shift" size="16" type="text" value="">
                                  </div>
                                </div>
                            </div>  

                            <div class="form-group">
                                <div class="col-sm-3">
                                  <label class="col-sm-4 control-label">SSS</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="sss" class="form-control SSS" placeholder="Social Security System Id">
                                  </div>
                                </div>

                                
                                <div class="col-sm-3">
                                  <label class="col-sm-4 control-label">TIN</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="tin" class="form-control" placeholder="Tax Identity Number">
                                  </div>
                                </div>

                                <div class="col-sm-3">
                                  <label class="col-sm-4 control-label">Philhealth</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="philhealth" class="form-control" placeholder="Philhealth Id">
                                  </div>
                                </div>

                                <div class="col-sm-3">
                                  <label class="col-sm-4 control-label">PAG-IBIG</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="hdmf" class="form-control" placeholder="PAG-IBIG Id">
                                  </div>
                                </div>                                
                            </div>  

                          </div>
                        </div>

                      </div>

                </section>



                <section class="panel">
                        <div class="panel-body">

                          <div>
                             <header class="panel-heading tab-bg-dark-navy-blue ">
                                  <ul class="nav nav-tabs">
                                      <li class="active">
                                          <a data-toggle="tab" href="#educ">EDUCATION</a>
                                      </li>
                                      <li class="">
                                          <a data-toggle="tab" href="#work">WORK EXPERIENCES</a>
                                      </li>
                                      <li class="">
                                          <a data-toggle="tab" href="#li">LICENSES</a>
                                      </li>
                                      <li class="">
                                          <a data-toggle="tab" href="#tc">TRAININGS / CERTIFICATION</a>
                                      </li>
                                      <li class="">
                                          <a data-toggle="tab" href="#dep">DEPENDENTS</a>
                                      </li>

                                  </ul>
                              </header>
                              <div class="panel-body">
                                  <div class="tab-content">
                                      <div id="educ" class="tab-pane active">
                                          <div id="educationalbackground">
                                            <div class="mb-20 mt-40">
                                              <span class="label label-primary">EDUCATIONAL BACKGROUND</span>  <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#addeducationmodal"><i class="fa fa-plus "></i></button>
                                            </div>  
                                              <div class="form-group">
                                                  <div class="col-sm-12">
                                                      <table class="table table-hover" id="education">
                                                          <thead>
                                                          <tr>
                                                              <th>School Name</th>
                                                              <th>Degree</th>
                                                              <th class="text-center">Inclusive Dates</th>
                                                              <th>Award</th>
                                                              <th>Action</th>
                                                          </tr>
                                                          </thead>
                                                          <tbody>                         
                                                          </tbody>
                                                      </table>
                                                  </div>  
                                              </div>
                                          </div>
                                      </div>
                                      <div id="work" class="tab-pane">
                                          <div id="employmenthistory">
                                              <div class="mb-20 mt-40">
                                                <span class="label label-primary">EMPLOYMENT HISTORY</span> <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#addworkhistorymodal"><i class="fa fa-plus "></i></button>
                                              </div>  
                                              <div class="form-group">
                                                  <div class="col-sm-12">
                                                      <table class="table table-hover" id="workhistory">
                                                          <thead>
                                                          <tr>
                                                              <th>Company Name</th>
                                                              <th>Designation</th>
                                                              <th>Date</th>
                                                              <th>Contact</th>
                                                              <th>Action</th>
                                                          </tr>
                                                          </thead>
                                                          <tbody>
                                                          </tbody>
                                                      </table>
                                                  </div>  
                                              </div>                            
                                          </div>
                                      </div>
                                      <div id="li" class="tab-pane">
                                          <div id="licenses">
                                            <div class="mb-20 mt-40">
                                              <span class="label label-primary">LICENSES</span> <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#addlicensemodal"><i class="fa fa-plus "></i></button>
                                            </div>  
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <table class="table table-hover" id="license">
                                                        <thead>
                                                        <tr>
                                                            <th>License Name</th>
                                                            <th>Issuer</th>
                                                            <th>Validity</th>
                                                            <th>Action</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                </div>  
                                            </div>                            
                                          </div>
                                      </div>
                                      <div id="tc" class="tab-pane">

                                          <div id="trainingsandcerts">
                                            <div class="mb-20 mt-40">
                                              <span class="label label-primary">TRAININGS AND CERTIFICATES</span> <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#addtrainingmodal"><i class="fa fa-plus "></i></button>
                                            </div>  
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <table class="table table-hover" id="training">
                                                        <thead>
                                                        <tr>
                                                            <th>Training/Certificate</th>
                                                            <th>Issuer</th>
                                                            <th>Date</th>
                                                            <th>Action</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                </div>  
                                            </div>                             
                                          </div>

                                      </div>
                                      <div id="dep" class="tab-pane">

                                          <div id="dependentstable">
                                            <div class="mb-20 mt-40">
                                              <span class="label label-primary">DEPENDENTS</span> <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#adddependentmodal"><i class="fa fa-plus "></i></button>
                                            </div>  
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <table class="table table-hover" id="dependents">
                                                        <thead>
                                                        <tr>
                                                            <th>Full Name</th>
                                                            <th>Relation</th>
                                                            <th>Birthdate</th>
                                                            <th>Action</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                </div>  
                                            </div>                             
                                          </div>

                                      </div>

                                  </div>
                              </div>                            
                          </div>
                         
                            <div class=" add-task-row">
                                <button class="btn btn-success btn-sm pull-right" type="submit" id="employeesubmit">Submit</button>
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

                            <div data-date-minviewmode="months" class="input-group input-large date dpMonths col-lg-12" data-date="13/07/2013" data-date-format="mm/dd/yyyy">
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