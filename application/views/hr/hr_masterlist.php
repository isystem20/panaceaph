<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Employee Masterlist
                        <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
                    </header>
                    <div class="panel-body">
                          <div class="clearfix">
                              <button type="button" class="btn btn-primary">Add <i class="fa fa-plus"></i></button>
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
                                          <label class="label_check" for="checkbox-01">
                                              <input name="sample-checkbox-01" id="checkbox-01" value="1" type="checkbox" checked />
                                          </label>
                                        </td>
                                        <td><?php echo $row->LastName; ?></td>
                                        <td><?php echo $row->FirstName; ?></td>
                                        <td><?php echo $row->PositionId; ?></td>
                                        <td><?php echo $row->DepartmentId; ?></td>
                                        <td><?php echo $row->Leader1; ?></td>   

                                        <td>
                                              <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
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