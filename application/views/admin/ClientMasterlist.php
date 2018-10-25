
<section id="main-content">
    <section class="wrapper">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Manage Clients
                        <span class="tools pull-right">
                            <a href="javascript:;">Filter</a>
                            <a href="javascript:;">Options</a>
                        </span>
                    </header>
                    <div class="panel-body">
                          <div class="clearfix">
                              <button type="button" class="btn btn-primary" data-toggle="modal" href="#addclient">Add Client <i class="fa fa-plus"></i></button>
                        <!--      <div class="btn-group">
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
                                        <th>Client Name</th>
                                        <th>Address</th>
                                        <th>Business Type</th>
                                        <th>Contract Type</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php
                                  if ($clients->num_rows() > 0) {
                                      foreach($clients->result() as $row) {
                                        $servicelist = json_encode($row->services);
                                        // foreach ($row->services as $service) {
                                        //     $servicelist .= $service->servicename . ',';
                                        // }
                                      ?>
                                        <tr class="gradeX" data-contact="<?php echo $row->ContactPerson?>" data-designation="<?php echo $row->Designation?>" data-services='<?php echo $servicelist; ?>'>
                                            <td><?php echo $row->CompanyName ?></td>
                                            <td><?php echo $row->CompanyAddress ?></td>
                                            <td><?php echo $row->industryName ?></td>
                                            <td><?php echo $row->contractName ?></td>
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


<div class="modal fade " id="addclient" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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


<script type="text/javascript">
    
function fnFormatDetails ( oTable, nTr , par)
{
    var aData = oTable.fnGetData( nTr );

    var services = jQuery.parseJSON(JSON.stringify(par.data('services')));

    var servicestring = '';

    for(var i =0;i < services.length;i++)
    {
        var item = services[i];
        servicestring = servicestring + item.servicename + '<br>';
    } 


    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;" width="90%">';
    sOut += '<tr>';
    sOut += '<td width="10%" valign="top"><strong>Company Name:<br>Contact Person:<br>Designation:</strong></td>';
    sOut += '<td width="22%">'+aData[1]+'<br>'+par.data('contact')+'<br>'+par.data('designation')+'</td><td width="10%" rowspan="3" valign="top"><strong>Subscriptions:</strong></td><td width="22%" rowspan="3" valign="top">'+servicestring+'</td><td width="10%" valign="top"><strong>Contract Details:</strong></td><td width="22%">-</td>';
    sOut += '</tr>';
    sOut += '</table>';

    return sOut;
}

</script>

