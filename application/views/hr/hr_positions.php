<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Positions Masterlist
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">
                          <div class="clearfix">
                              <button id="add-new-position-btn" type="button" class="btn btn-primary">Add <i class="fa fa-plus"></i></button>
                              <button type="button" class="btn btn-primary">Upload Bulk <i class="fa fa-cloud-upload"></i></button>
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Tools <i class="fa fa-angle-down"></i>
                                  </button>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#">Print</a></li>
                                      <li><a href="#">Save as PDF</a></li>
                                      <li><a href="#">Export to Excel</a></li>
                                  </ul>
                              </div>
                          </div>
                        <div class="adv-table">
                            <table class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                    <tr>
                                        <th class="code-header">Code</th>
                                        <th class="name-header">Item Name</th>
                                        <th class="desc-header">Description</th>
                                        <th class="modat-header">Last Modified</th>
                                        <th class="status-header">Status</th>
                                        <th class="action-header">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php

                                      if ($positions->num_rows() >0) {

                                        foreach ($positions->result() as $row) {  ?>
                                    <tr class="gradeX">
                                        <td>
                                          <?php echo $row->Code; ?>
                                        </td>
                                        <td><?php echo $row->Name; ?></td>
                                        <td><?php echo character_limiter($row->Description, 50); ?></td>
                                        <td><?php echo date('Y-m-d',strtotime($row->ModifiedAt)); ?></td> 
                                        <td>
                                          <?php 
                                          if ($row->Active == '1') {
                                            echo '<span class="label label-success">Active</span>';
                                          }else {
                                            echo '<span class="label label-default">Inactive</span>';
                                          }
                                          ?>
                                            
                                        </td>  
                                        <td>
                                              <button class="btn btn-success btn-xs "><i class="fa fa-check"></i></button>
                                              <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                              <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                                        </td>                                       
                                    </tr>
                                      <?php 
                                        }
                                      }
                                    ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Code</th>
                                        <th>Item Name</th>
                                        <th>Description</th>
                                        <th>Last Modified</th>
                                        <th>Status</th>
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


<div class="modal fade " id="add-new-position" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
      <div class="modal-content-wrap">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title">Add New Client</h4>
              </div>
              <div class="modal-body">

              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                            Please input client basic information.
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                <?php echo form_open('clients/add','class="cmxform form-horizontal tasi-form"'); ?>
                                      <div class="form-group ">
                                          <label for="firstname" class="control-label col-lg-3">Client Name</label>
                                          <div class="col-lg-9">
                                            <?php echo form_input(['name'=>'clientname', 'type'=>'text','class'=>'form-control', 'placeholder'=>'Input Client Complete Business Name','required'=>'']); ?>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Client Address</label>
                                          <div class="col-lg-9">
                                            <?php echo form_input(['name'=>'clientaddress', 'type'=>'text','class'=>'form-control', 'placeholder'=>'Input Client Complete Address', 'required'=>'']); ?>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-3">Industry Type</label>
                                          <div class="col-lg-9">
                                              <select class="form-control" required name="natureofbusiness">
                                                  <option value="">Select Industry</option>                                                
                                                  <?php
                                                  if ($industries->num_rows() > 0) {
                                                      foreach($industries->result() as $row) {
                                                      ?>
                                                  <option value="<?php echo $row->Id; ?>"><?php echo $row->Name; ?></option>
                                                    <?php 
                                                        }
                                                      }
                                                    ?>
                                              </select>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="username" class="control-label col-lg-3">Contract Type</label>
                                          <div class="col-lg-9">
                                              <select class="form-control" name="contract">
                                                  <option value="">Select Contract</option>
                                                  <?php
                                                  if ($contracts->num_rows() > 0) {
                                                      foreach($contracts->result() as $row) {
                                                      ?>
                                                  <option value="<?php echo $row->Id; ?>"><?php echo $row->Name; ?></option>
                                                    <?php 
                                                        }
                                                      }
                                                    ?>
                                              </select>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="firstname" class="control-label col-lg-3">Contact Person</label>
                                          <div class="col-lg-9">
                                            <?php echo form_input(['name'=>'contactperson', 'type'=>'text','class'=>'form-control', 'placeholder'=>'Who should we reach out to?','required'=>'']); ?>
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="lastname" class="control-label col-lg-3">Designation</label>
                                          <div class="col-lg-9">
                                            <?php echo form_input(['name'=>'designation', 'type'=>'text','class'=>'form-control', 'placeholder'=>"Contact person's designation", 'required'=>'']); ?>
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
                  <button class="btn btn-warning" type="submit"> Save</button>
              </div>
              <?php echo form_close(); ?>
          </div>
      </div>
  </div>
</div>







