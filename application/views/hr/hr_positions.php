<?php
$class = $extra['class'];
?>

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
                            <!-- <a href="javascript:;" class="fa fa-times"></a> -->
                         </span>
                    </header>
                    <div class="panel-body">
                          <div class="clearfix">
                              <button id="" type="button" class="btn btn-primary add-new-generic-btn" data-action="hr/<?php echo $class; ?>/add">Add <i class="fa fa-plus"></i></button>
                              <!-- <button type="button" class="btn btn-primary">Upload Bulk <i class="fa fa-cloud-upload"></i></button> -->
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Tools <i class="fa fa-angle-down"></i>
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
                                    <tr class="gradeX" id="row<?php echo $row->Id; ?>">
                                        <td><?php echo $row->Code; ?></td>
                                        <td><?php echo $row->Name; ?></td>
                                        <td><?php echo character_limiter($row->Description, 50); ?></td>
                                        <td><?php echo date('Y-m-d',strtotime($row->ModifiedAt)); ?></td> 
                                        <td data-active="<?php echo $row->Active; ?>">
                                          <?php 
                                          if ($row->Active == '1') {
                                            echo '<span class="label label-success">Active</span>';
                                          }else {
                                            echo '<span class="label label-default">Inactive</span>';
                                          }
                                          ?>
                                            
                                        </td>  
                                        <td class="actions">
                                              <button data-id="<?php echo $row->Id; ?>" class="btn btn-success btn-xs open-generic-item-btn"data-action="hr/<?php echo $class; ?>/read"><i class="fa fa-info-circle"></i></button>
                                              <button data-id="<?php echo $row->Id; ?>" class="btn btn-primary btn-xs edit-generic-item-btn" data-action="hr/<?php echo $class; ?>/edit"><i class="fa fa-pencil"></i></button>
                                              <button data-id="<?php echo $row->Id; ?>" class="btn btn-danger btn-xs delete-generic-item-btn" data-action="hr/<?php echo $class; ?>/delete"><i class="fa fa-trash-o "></i></button>
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




