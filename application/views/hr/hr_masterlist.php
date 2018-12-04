<?php
$class = $extra['class'];
?>

<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">

                <ul class="breadcrumb">
                  <li><a href="#"><i class="fa fa-home"></i> Human Resources</a></li>
                  <li class="active">Employees</li>
                </ul>

                <section class="panel">
                    <header class="panel-heading">
                        Employee Masterlist
                        <span class="tools pull-right">
                          <div class="btn-group">
                              <button class="btn btn-info active" type="button">Employees</button>
                              <button class="btn btn-white" type="button">Positions</button>
                              <button class="btn btn-white" type="button">Types</button>
                              <button class="btn btn-white" type="button">Ranks</button>
                          </div>
                            <!-- <a href="javascript:;" class="fa fa-chevron-down"></a> -->
                            <!-- <a href="javascript:;" class="fa fa-times"></a> -->
                         </span>
                    </header>
                    <div class="panel-body">
                          <div class="clearfix">
                              <a href="<?=base_url(); ?>hr/employees/new" id="" type="button" class="btn btn-info add-new-emp-btn">Add <i class="fa fa-plus"></i></a>
                              <div class="btn-group">
                                  <button data-toggle="dropdown" class="btn btn-info dropdown-toggle" type="button">Manage <span class="caret"></span></button>
                                  <ul role="menu" class="dropdown-menu">
                                      <li><a href="#">Advanced Edit</a></li>
                                      <li><a href="#">Manage Access</a></li>
                                      <li><a href="#">Transfer</a></li>
                                      <li><a href="#">Promote</a></li>
                                      <li><a href="#">File Offense</a></li>
                                      <li class="divider"></li>
                                      <li><a href="#">Leaves</a></li>
                                      <li><a href="#">Accountabilities</a></li>
                                      <li><a href="#">Loans</a></li>
                                  </ul>
                              </div>
                              <div class="btn-group">
                                  <button data-toggle="dropdown" class="btn btn-info dropdown-toggle" type="button">History <span class="caret"></span></button>
                                  <ul role="menu" class="dropdown-menu">
                                      <li><a href="#">Change History</a></li>
                                      <li><a href="#">Offenses Records</a></li>     
                                  </ul>
                              </div>
                              <div class="btn-group">
                                  <button data-toggle="dropdown" class="btn btn-info dropdown-toggle" type="button">Others <span class="caret"></span></button>
                                  <ul role="menu" class="dropdown-menu">
                                      <li><a href="#">Awards</a></li>
                                      <li><a href="#">Certificates</a></li>
                                      <li><a href="#">Employment History</a></li>
                                      <li><a href="#">Educational Background</a></li>
                                      <li><a href="#">Skills</a></li>
                                      <li><a href="#">Training History</a></li>
                                  </ul>
                              </div>


                              <div class="btn-group pull-right">

                                <button type="button" class="btn btn-default">Import <i class="fa fa-upload"></i></button>
                                  <button class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Export <i class="fa fa-download"></i>
                                  </button>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#" id="export_copy">Copy</a></li>
                                      <li><a href="#" id="export_csv">CSV</a></li>
                                      <li><a href="#" id="export_pdf">Save as PDF</a></li>
                                      <li><a href="#" id="export_excel">Export to Excel</a></li>
                                  </ul>
                              </div>
                          </div>
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped masterlist" id="dynamic-table" data-type="hr/<?php echo $class; ?>">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Last Name</th>
                                        <th>First Name</th>
                                        <th>Position</th>
                                        <th>Department</th>
                                        <th>Line Manager</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php

                                      if ($employees->num_rows() >0) {

                                        foreach ($employees->result() as $row) {  ?>
                                    <tr class="gradeX">
                                        <td>
                                     

                                              <input name="emps[]" id="<?php echo $row->Id ?>" type="checkbox" style="width: 17px" class="checkbox form-control">


                                        </td>
                                        <td><label class="text-reg" for="<?php echo $row->Id ?>"><?php echo $row->LastName; ?></label></td>
                                        <td><label class="text-reg" for="<?php echo $row->Id ?>"><?php echo $row->FirstName; ?></label></td>
                                        <td><label class="text-reg" for="<?php echo $row->Id ?>"><?php echo $row->PositionName; ?></label></td>
                                        <td><label class="text-reg" for="<?php echo $row->Id ?>"><?php echo $row->DepartmentName; ?></label></td>
                                        <td><label class="text-reg" for="<?php echo $row->Id ?>"><?php echo $row->SFirstName.' '.$row->SLastName; ?></label>
                                        </td>   
                                        <td>
                                              <button data-id="<?php echo $row->Id; ?>" class="btn btn-success btn-xs open-generic-item-btn"data-action="hr/<?php echo $class; ?>/read"><i class="fa fa-info-circle"></i></button>
                                              <a href="<?=base_url('hr/employees/'.$row->Id); ?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
                                              <button data-id="<?php echo $row->Id; ?>" class="btn btn-danger btn-xs delete-generic-item-btn" data-action="hr/<?php echo $class; ?>/delete"><i class="fa fa-trash-o "></i></button>

                                        </td>                                       
                                    </tr>

                                  <?php 

                                        }
                                        
                                      }



                                    ?>

<!--                                         <div  style="width:10px !important;" >
                                            <label class="container">
                                              <input type="checkbox" checked="checked">
                                              <span class="checkmark"></span>
                                            </label>
                                        </div> -->
                                    
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>#</th>
                                        <th>Last Name</th>
                                        <th>First Name</th>
                                        <th>Position</th>
                                        <th>Department</th>
                                        <th>Line Manager</th>
                                        <th>Actions</th>
                                    </tr>
                                </tfoot>
                            </table>
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
</style>


<div class="modal fade " id="add-emp-item-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
      <div class="modal-content-wrap">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title" id="add-edit-form-title">Add New Employee</h4>
              </div>
              <div class="modal-body">

              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header id="add-edit-form-header" class="panel-heading">
                            Please input new item details
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                <?php
                                $hidden = array(
                                  'company' => $this->session->userdata('companyid'),
                                  'id' => '', );
                                ?>
                                <?php echo form_open('','class="cmxform form-horizontal tasi-form" id="emp-add-form"',$hidden); ?>
                                      <div class="form-group ">
                                          <label for="firstname" class="control-label col-lg-3">Code</label>
                                          <div class="col-lg-9">
                                            <?php echo form_input(['name'=>'code', 'type'=>'text','class'=>'form-control', 'placeholder'=>'Unique Code of this Item','required'=>'']); ?>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Name</label>
                                          <div class="col-lg-9">
                                            <?php echo form_input(['name'=>'name', 'type'=>'text','class'=>'form-control', 'placeholder'=>'Input the Item Name', 'required'=>'']); ?>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-3">Description</label>
                                          <div class="col-lg-9">
                                            <textarea class="form-control" name="desc" placeholder="Short Description for this Item."></textarea>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-3">Current Status</label>
                                          <div class="col-lg-9">
                                              <select class="form-control" name="status">
                                                  <option selected value="1">Active</option>
                                                  <option value="0">Inactive</option>
                                              </select>
                                          </div>
                                      </div>
                              </div>
                          </div>
                      </section>
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                  <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                  <button class="btn btn-warning" id="submit-btn" type="submit"> Submit</button>
              </div>
              <?php echo form_close(); ?>
          </div>
      </div>
  </div>
</div>



<div class="modal fade" id="del-emp-item-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <?php
            $hidden = array(
              'company' => $this->session->userdata('companyid'), 
              'id' => '',
            );
            ?>
            <?php echo form_open('hr/positions/add','class="cmxform form-horizontal tasi-form" id="emp-del-form"',$hidden); ?>
            <div class="modal-header" style="background-color: #ff6c60;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Warning</h4>
            </div>
            <div class="modal-body">
                <center>
                You are about to delete this record. <br><b>Are you sure?</b>                  
                </center>
            </div>
            <div class="modal-footer">
                  <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                  <button class="btn btn-danger" id="del-submit-btn" type="submit"> Confirm</button>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>



<div class="modal fade " id="open-emp-item-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
      <div class="modal-content-wrap">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title" id="view-form-title">Add employees</h4>
              </div>
              <div class="modal-body">

              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                     <!--      <header id="view-form-header" class="panel-heading">
                            Please input new item details
                          </header> -->
                          <div class="panel-body">
                              <div class="form">
                                    <form class="form-horizontal">
                                      <div class="form-group ">
                                          <label for="firstname" class="control-label col-lg-3">Code</label>
                                          <div class="col-lg-9">
                                            <p id="item-code" class="form-control-static"></p>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Name</label>
                                          <div class="col-lg-9">
                                            <p id="item-name" class="form-control-static"></p>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-3">Description</label>
                                          <div class="col-lg-9">
                                            <textarea id="item-desc" class="form-control text-static" readonly></textarea>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Created</label>
                                          <div class="col-lg-9">
                                            <p id="item-created" class="form-control-static"></p>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Last Modified</label>
                                          <div class="col-lg-9">
                                            <p id="item-modified" class="form-control-static"></p>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Version Num</label>
                                          <div class="col-lg-9">
                                            <p id="item-version" class="form-control-static"></p>
                                          </div>
                                      </div>                                      
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-3">Current Status</label>
                                          <div class="col-lg-9">
                                              <p id="item-active" class="form-control-static"></p>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </section>
                  </div>
                </div>
              </div>
<!--               <div class="modal-footer">
                  <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
              </div> -->
          </div>
      </div>
  </div>
</div>