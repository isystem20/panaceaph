
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        User Account Masterlist
                        <span class="tools pull-right">
                            <a href="javascript:;">Filter</a>
                            <a href="javascript:;">Options</a>
                        </span>
                    </header>
                    <div class="panel-body">
                          <div class="clearfix">
                              <a type="button" class="btn btn-primary" href="<?=base_url('admin/users/new'); ?>">Add User <i class="fa fa-plus"></i></a>
                              <button type="button" class="btn btn-primary">Upload Bulk <i class="fa fa-cloud-upload"></i></button>

                     <!--          <div class="btn-group">
                                  <button id="editable-sample_new" class="btn green">
                                      Add New <i class="fa fa-plus"></i>
                                  </button>
                                  <button id="editable-sample_new" class="btn green">
                                      Upload <i class="fa fa-plus"></i>
                                  </button>
                                  
                              </div> -->
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
                            <table class="display table table-bordered" id="hidden-table-info">
                                <thead>
                                    <tr>
                                        <th>Company</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Account Name</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php
                                  if ($masterlist->num_rows() > 0) {
                                      foreach($masterlist->result() as $row) {
                                        $accesslist = json_encode($row->Access);
                                        // foreach ($row->services as $service) {
                                        //     $servicelist .= $service->servicename . ',';
                                        // }
                                      ?>
                                        <tr class="gradeX" data-contact="" data-designation="" data-access='<?php echo $accesslist; ?>'>
                                            <td><?php echo $row->CompanyName ?></td>
                                            <td><?php echo $row->FirstName ?></td>
                                            <td><?php echo $row->LastName ?></td>
                                            
                                            <td><?php echo $row->LoginName ?></td>
                                            <td>
                                                <?php 
                                                if($row->Active == '1') {
                                                    echo '<span class="label label-success">Active</span>';
                                                }
                                                else {
                                                    echo '<span class="label label-danger">Inactive</span>';
                                                } 

                                                ?> 
                                            </td>
                                        </tr>
                                    <?php 
                                        }
                                      }
                                    ?>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- page end-->
    </section>
</section>
<!--main content end-->





<script type="text/javascript">
    
function fnFormatDetails ( oTable, nTr , par)
{
    var aData = oTable.fnGetData( nTr );

    var services = jQuery.parseJSON(JSON.stringify(par.data('access')));

    var servicestring = '';

    for(var i =0;i < services.length;i++)
    {
        var item = services[i];
        servicestring = servicestring + item.servicename + '<br>';
    } 


    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;" width="90%">';
    sOut += '<tr><td>Service</td><td>Module</td><td>Read</td><td>Add</td><td>Edit</td><td>Delete</td><td>Print</td><td>Export</td><td>Admin?</td></tr>';
    for(var i =0;i < services.length;i++)
    {
        sOut += '<tr>';
        var item = services[i];
        sOut += '<td>'+item.ServiceName+'</td><td>'+item.ModuleName+'</td><td>'+YN(item.AllowRead)+'</td><td>'+YN(item.AllowAdd)+'</td><td>'+YN(item.AllowEdit)+'</td><td>'+YN(item.AllowDelete)+'</td><td>'+YN(item.AllowPrint)+'</td><td>'+YN(item.AllowExport)+'</td><td>'+YN(item.isAdmin)+'</td>';
        sOut += '</tr>';
    } 

    sOut += '</table>';

    return sOut;
}

function YN(val) {
    if (val == '1') {
        return 'YES'
    }
    else {
        return 'NO';
    }
}


</script>