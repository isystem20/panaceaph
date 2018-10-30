      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2018 &copy; Panacea by IT Solutions Inc.
              <a href="#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->





<div class="modal fade " id="add-generic-item-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog ">
      <div class="modal-content-wrap">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title">Add New Item</h4>
              </div>
              <div class="modal-body">

              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                            Please input new item details
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                <?php
                                $hidden = array('company' => $this->session->userdata('companyid'), );
                                ?>
                                <?php echo form_open('hr/positions/add','class="cmxform form-horizontal tasi-form" id="generic-add-form"',$hidden); ?>
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



<div class="modal fade" id="del-generic-item-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <?php
            $hidden = array('company' => $this->session->userdata('companyid'), );
            ?>
            <?php echo form_open('hr/positions/add','class="cmxform form-horizontal tasi-form" id="generic-del-form"',$hidden); ?>
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
                  <button class="btn btn-danger" id="submit-btn" type="submit"> Confirm</button>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>