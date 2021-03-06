<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Skills List
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

                                      if ($skills->num_rows() >0) {

                                        foreach ($skills->result() as $row) {  ?>

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
                                        <th class="code-header">Code</th>
                                        <th class="name-header">Item Name</th>
                                        <th class="desc-header">Description</th>
                                        <th class="modat-header">Last Modified</th>
                                        <th class="status-header">Status</th>
                                        <th class="action-header">Actions</th>
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