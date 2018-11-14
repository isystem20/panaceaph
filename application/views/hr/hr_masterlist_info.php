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

                <section class="panel">
                    <header class="panel-heading">
                        <?=$labels['header']; ?>
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                         </span>
                    </header>
                    <div class="panel-body">

                      <div class="item-group">
                          <?php $hidden = array(
                            'companyid'=>$this->session->userdata('companyid'),
                            'id' => '',
                          ); ?>
                          <?=form_open('hr/employees/add','id="employeeform" class="form-horizontal tasi-form" role="form"',$hidden);?>

                          <div id="basicinfo" class="mb-20">
                            <div style="margin-bottom: 20px;">
                              <span class="label label-primary">BASIC INFORMATION</span> 
                            </div>  
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Full Name</label>
                                <div class="col-sm-3">
                                  <input type="text" class="form-control" name="firstname" placeholder="First Name">
                                </div>

                                <div class="col-sm-3">
                                  <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                                </div>

                                <div class="col-sm-3">
                                  <input type="text" class="form-control" name="middlename" placeholder="Middle Name">
                                </div>

                                <div class="col-sm-1">
                                  <input type="text" class="form-control" name="suffix" placeholder="Suffix">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Birth Date</label>
                                <div class="col-sm-2">
                                    <input class="form-control form-control-inline input-medium default-date-picker" name="birthdate" size="16" type="text" value="">
                                </div>

                                <label class="col-sm-2 control-label">Civil Status</label>
                                <div class="col-sm-2">
                                    <select class="form-control" name="civilstatus">
                                        <option>Single</option>
                                        <option>Married</option>
                                        <option>Separated</option>
                                    </select>
                                </div>

                                <label class="col-sm-2 control-label">Nationality</label>
                                <div class="col-sm-2">
                                    <select class="js-example-basic-single" name="nationality" get="json/nationalities/options">
                                        <option value="AL">Select City</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>                                  
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Address</label>
                                <div class="col-sm-6">
                                  <input type="text" name="address" class="form-control" placeholder="House No., Street, Subdivision">
                                </div>
                                <div class="col-sm-2">
                                    <select class="js-example-basic-single" name="city" get="json/cities/options">
                                        <option value="AL">Select City</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <select class="js-example-basic-single" name="region" get="json/regions/options">
                                        <option value="AL">Select Region</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </div>                                  
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Contact Details</label>
                                <div class="col-sm-3">
                                  <input type="text" name="email" class="form-control" placeholder="Email">
                                </div>

                                <div class="col-sm-3">
                                  <input type="text" name="mobile" class="form-control" placeholder="Mobile Number">
                                </div>

                                <div class="col-sm-3">
                                  <input type="text" name="landline" class="form-control" placeholder="Landline">
                                </div>

                                <div class="col-sm-1">
                                  <input type="text" name="local" class="form-control" placeholder="Local">
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
                                    <input type="text" name="employeenumber" class="form-control" placeholder="Employee Number">
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Email</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="companyemail" class="form-control" placeholder="Company Email">
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
                                    <select class="js-example-basic-single" name="site">
                                        <option value="">Assigned Site/Branch</option>
                                    </select>
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Department</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="department">
                                        <option value="">Assigned Department</option>
                                    </select>
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">CostCenter</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="costcenter">
                                        <option value="">Cost Center</option>
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                  <label class="col-sm-4 control-label">Group</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="team">
                                        <option value="">Assigned Group/Team</option>
                                    </select>
                                  </div>
                                </div>
                                
                                <div class="col-sm-6">
                                  <label class="col-sm-4 control-label">Reporting To</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="superior">
                                        <option value="">Inline Manager</option>
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Designation</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="position">
                                        <option value="">Designation</option>
                                    </select>
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Rank</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="rank">
                                        <option value="">Rank</option>
                                    </select>
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Type</label>
                                  <div class="col-sm-8">
                                    <select class="js-example-basic-single" name="type">
                                        <option value="">Employment Type</option>
                                    </select>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Date Hired</label>
                                  <div class="col-sm-8">
                                    <input class="form-control form-control-inline input-medium default-date-picker" name="hiredate" size="16" type="text" value="">
                                  </div>
                                </div>

                                
                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Duration</label>
                                  <div class="col-sm-8">
                                    <input type="text" name="duration" class="form-control" placeholder="Current Status Duration">
                                  </div>
                                </div>

                                <div class="col-sm-4">
                                  <label class="col-sm-4 control-label">Shift</label>
                                  <div class="col-sm-8">
                                    <input class="form-control form-control-inline input-medium default-date-picker" name="shift" size="16" type="text" value="">
                                  </div>
                                </div>
                            </div>                            
                          </div>

                          <div id="educationalbackground">
                            <div class="mb-20 mt-40">
                              <span class="label label-primary">EDUCATIONAL BACKGROUND</span> 
                            </div>  
                              <div class="form-group">

                                <div class="col-sm-3">
                                  
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">School</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="School Name" id="schoolname">
                                      </div>
                                    </div> 
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Degree</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="Course/Degree" id="course">
                                      </div>
                                    </div>  
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Year</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="MM/YY-MM/YY" id="graduatedate">
                                      </div>
                                    </div>                                   
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Award</label> 
                                      <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="Awards" id="award">
                                      </div>
                                      <div class="col-sm-3">
                                        <button type="button" class="btn btn-info btn-sm" id="addschool">Add</button>
                                      </div>                                      
                                    </div>                                   
                                </div>                            
                              <div class="form-group">
                                  <div class="col-sm-12">
                                      <table class="table table-hover" id="education">
                                          <thead>
                                          <tr>
                                              <th>School Name</th>
                                              <th>Degree</th>
                                              <th>Date</th>
                                              <th>Award</th>
                                              <th>Action</th>
                                          </tr>
                                          </thead>
                                          <tbody>
                                            <td>QCPU</td>
                                            <td>BSIT</td>
                                            <td>2009-2013</td>
                                            <td></td>
                                            <td></td>                             
                                          </tbody>
                                      </table>
                                  </div>  
                              </div>
                            </div>                            
                          </div>

                          <div id="employmenthistory">
                              <div class="mb-20 mt-40">
                                <span class="label label-primary">EMPLOYMENT HISTORY</span> 
                              </div>  
                              <div class="form-group">

                                <div class="col-sm-3">
                                  
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Company</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="Company Name">
                                      </div>
                                    </div> 
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Position</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="Designation">
                                      </div>
                                    </div>  
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Year</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="MM/YY-MM/YY">
                                      </div>
                                    </div>                                   
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Contact</label> 
                                      <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="Contact Num">
                                      </div>
                                      <div class="col-sm-3">
                                        <button type="button" class="btn btn-info btn-sm">Add</button>
                                      </div>                                      
                                    </div>                                   
                                </div>                            
                              </div> 
                              <div class="form-group">
                                  <div class="col-sm-12">
                                      <table class="table table-hover" id="workhistory">
                                          <thead>
                                          <tr>
                                              <th>#</th>
                                              <th>School Name</th>
                                              <th>Degree</th>
                                              <th>Date</th>
                                              <th>Action</th>
                                          </tr>
                                          </thead>
                                          <tbody>
                                          <tr>
                                              <td>Quezon City</td>
                                              <td>Mark</td>
                                              <td>Otto</td>
                                              <td>@mdo</td>
                                              <td>
                                                <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                              </td>
                                          </tr>

                                          </tbody>
                                      </table>
                                  </div>  
                              </div>                            
                          </div>

                          <div id="licenses">
                            <div class="mb-20 mt-40">
                              <span class="label label-primary">LICENSES</span> 
                            </div>  
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">License</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="License Name">
                                      </div>
                                    </div> 
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Issued by</label> 
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="Issuing Institution">
                                      </div>
                                    </div>  
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                      <label class="col-sm-3 control-label">Validity</label> 
                                      <div class="col-sm-7">
                                        <input type="text" class="form-control" placeholder="MM/YY-MM/YY">
                                      </div>
                                      <div class="col-sm-2">
                                        <button type="button" class="btn btn-info btn-sm">Add</button>                                  
                                      </div>                                       
                                    </div>  
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <table class="table table-hover" id="license">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>School Name</th>
                                            <th>Degree</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Quezon City</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>
                                              <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>  
                            </div>                            
                          </div>

                          <div id="trainingsandcerts">
                            <div class="mb-20 mt-40">
                              <span class="label label-primary">TRAININGS AND CERTIFICATES</span> 
                            </div>  
                            <div class="form-group">
                              <div class="col-sm-4">
                                  <div class="form-group">
                                    <label class="col-sm-3 control-label">Name</label> 
                                    <div class="col-sm-9">
                                      <input type="text" class="form-control" placeholder="Training/Certificate">
                                    </div>
                                  </div> 
                              </div>
                              <div class="col-sm-4">
                                  <div class="form-group">
                                    <label class="col-sm-3 control-label">Issued by</label> 
                                    <div class="col-sm-9">
                                      <input type="text" class="form-control" placeholder="Issuing Institution">
                                    </div>
                                  </div>  
                              </div>
                              <div class="col-sm-4">
                                  <div class="form-group">
                                    <label class="col-sm-3 control-label">Date</label> 
                                    <div class="col-sm-7">
                                      <input type="text" class="form-control" placeholder="Validity/Training Duration">
                                    </div>
                                    <div class="col-sm-2">
                                      <button type="button" class="btn btn-info btn-sm">Add</button>                                  
                                    </div>                                       
                                  </div>  
                              </div>                          
                            </div> 
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <table class="table table-hover" id="training">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>School Name</th>
                                            <th>Degree</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Quezon City</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>
                                              <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>  
                            </div>                             
                          </div>

                          <div id="governmentalrecords">
                            <div class="mb-20 mt-40">
                            <span class="label label-primary">GOVERNMENTAL RECORDS</span> 
                            </div>  
                            <div class="form-group">
                                <div class="col-sm-4">

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">SSS</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" name="sss" placeholder="SSS Number">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">TIN</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" name="tin" placeholder="Tax Identity Number">
                                        </div>
                                    </div>

                                   <div class="form-group">
                                        <label class="col-sm-3 control-label">Philhealth</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" name="philhealth" placeholder="Philhealth Number">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">HDMF</label>
                                        <div class="col-sm-9">
                                          <input type="text" class="form-control" name="hdmf" placeholder="HDMF Number">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <span class="label label-default">DEPENDENTS</span> <button class="btn btn-primary btn-xs"><i class="fa fa-plus "></i></button>
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>Full Name</th>
                                            <th>Relation</th>
                                            <th>Birthdate</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>
                                              <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
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