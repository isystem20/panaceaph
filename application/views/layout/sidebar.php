      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->

              <ul class="sidebar-menu" id="nav-accordion">
                  <div id="package_container">
                    <select id="package_select" class="form-control">
                      <?php
                      // print_r($this->session->userdata());
                      $services = $this->session->userdata('access');
                      $uniques = [];
                      foreach ($services as $row) {
                        if(!in_array($row->ServiceId, $uniques)){
                            $uniques[] = $row->ServiceId; ?>
                            <option value="<?php echo $row->ServiceCode; ?>"><?php echo $row->ServiceName; ?></option>
                      <?php } } ?>

                    </select>                     
                  </div>
               


                  <!--HR Information -->
                  <div id="HRService" class="system-services">
                    <li>
                        <a  class="<?php if(!empty($hr_dashboard)) {echo 'active';} ?>" href="<?php echo base_url('hr/dashboard/'); ?>">
                            <i class="fa fa-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>                    
                    <li class="sub-menu">
                        <a class="<?php if(!empty($hr_emp_list)) {echo 'active';} ?>" href="javascript:;" >
                            <i class="fa fa-book"></i>
                            <span>Employee</span>
                        </a>
                        <ul class="sub">
                          <li><a href="<?php echo base_url(); ?>hr/employees">Masterlist</a></li>
                          <li><a href="<?php echo base_url(); ?>hr/positions">Positions</a></li>
                          <li><a href="<?php echo base_url(); ?>hr/employment-types">Types</a></li>
                          <li><a href="<?php echo base_url(); ?>hr/ranks">Ranks</a></li>
                          <li><a href="<?php echo base_url(); ?>hr/groups">Groups</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="<?php if(!empty($hr_sites)) {echo 'active';} ?>" href="<?php echo base_url(); ?>hr/sites">
                            <i class="fa fa-dashboard"></i>
                            <span>Sites / Branches</span>
                        </a>
                    </li>                  
                    <li>
                        <a class="<?php if(!empty($hr_depts)) {echo 'active';} ?>" href="<?php echo base_url(); ?>hr/departments">
                            <i class="fa fa-dashboard"></i>
                            <span>Departments</span>
                        </a>
                    </li>
                    <li>
                        <a class="<?php if(!empty($hr_costcenters)) {echo 'active';} ?>" href="<?php echo base_url(); ?>hr/cost-centers">
                            <i class="fa fa-dashboard"></i>
                            <span>Cost Centers</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a class="<?php if(!empty($hr_others)) {echo 'active';} ?>" href="javascript:;" >
                            <i class="fa fa-book"></i>
                            <span>Other Records</span>
                        </a>
                        <ul class="sub">
                          <li><a  href="<?php echo base_url(); ?>hr/skills">Skills</a></li>
                          <li><a  href="<?php echo base_url(); ?>hr/certificates">Certificates</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a class="<?php if(!empty($hr_leaves)) {echo 'active';} ?>" href="javascript:;" >
                            <i class="fa fa-book"></i>
                            <span>Manage Leave</span>
                        </a>
                        <ul class="sub">
                            <li><a  href="javascript:;">Applications</a></li>
                            <li><a  href="javascript:;">Leave Types</a></li>
                            <li><a  href="javascript:;">Leave Records</a></li>
                            <li><a  href="javascript:;">Holidays</a></li>
                            <li><a  href="javascript:;">Leave Settings</a></li>
                            <li><a  href="javascript:;">Reports</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="<?php if(!empty($hr_settings)) {echo 'active';} ?>" href="<?php echo base_url(); ?>hr/settings">
                            <i class="fa fa-dashboard"></i>
                            <span>Settings</span>
                        </a>
                    </li>
                    <li>
                        <a class="<?php if(!empty($hr_reports)) {echo 'active';} ?>" href="<?php echo base_url(); ?>hr/reports">
                            <i class="fa fa-dashboard"></i>
                            <span>Reports</span>
                        </a>
                    </li>                    
                  </div>

                  <!--Administration -->
                  <div id="AdminService" class="system-services">
                    <li>
                        <a class="" href="index-2.html">
                            <i class="fa fa-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="<?php if(!empty($admin_client_list)) {echo $admin_client_list;} ?>" href="<?php echo base_url(); ?>admin/ClientController/ClientMasterList">
                            <i class="fa fa-dashboard"></i>
                            <span>Clients</span>
                        </a>
                    </li>                     
                    <li>
                        <a class="<?php if(!empty($admin_users)) {echo $admin_users;} ?>" href="<?php echo base_url(); ?>admin/users">
                            <i class="fa fa-dashboard"></i>
                            <span>Users</span>
                        </a>
                    </li>  

                    <li>
                        <a class="<?php if(!empty($admin_services)) {echo $admin_services;} ?>" href="index-2.html">
                            <i class="fa fa-dashboard"></i>
                            <span>Services</span>
                        </a>
                    </li>
                    <li>
                        <a href="index-2.html">
                            <i class="fa fa-dashboard"></i>
                            <span>Modules</span>
                        </a>
                    </li>
                    <li>
                        <a href="index-2.html">
                            <i class="fa fa-dashboard"></i>
                            <span>Settings</span>
                        </a>
                    </li>
                    <li>
                        <a href="index-2.html">
                            <i class="fa fa-dashboard"></i>
                            <span>Reports</span>
                        </a>
                    </li>                    
                  </div>


<!--                   <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Task Manager</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">Masterlist</a></li>
                          <li><a  href="buttons.html">Categories</a></li>
                          <li><a  href="modal.html">Accounts</a></li>
                          <li><a  href="toastr.html">Task Defaults</a></li>
                          <li><a  href="widget.html">Help Topics</a></li>
                          <li><a  href="slider.html">SLA Plans</a></li>
                          <li><a  href="nestable.html">User Roles</a></li>
                          <li><a  href="font_awesome.html">User Teams</a></li>
                          <li><a  href="font_awesome.html">Settings</a></li>
                          <li><a  href="font_awesome.html">Reports</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Manage Assets</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="grids.html">Asset Masterlist</a></li>
                          <li><a  href="calendar.html">Categories</a></li>
                          <li><a  href="gallery.html">Assignment</a></li>
                          <li><a  href="todo_list.html">Scheduler</a></li>
                          <li><a  href="draggable_portlet.html">Settings</a></li>
                          <li><a  href="tree.html">Reports</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-envelope"></i>
                          <span>Document Controller</span>
                      </a>
                      <ul class="sub">
                          <li class="sub-menu">
                              <a  href="boxed_page.html">Company Policy</a>
                              <ul class="sub">
                                  <li><a  href="javascript:;">Policies</a></li>
                                  <li><a  href="javascript:;">Policy Groups</a></li>
                                  <li><a  href="javascript:;">Export</a></li>
                                  <li><a  href="javascript:;">Settings</a></li>
                              </ul>
                          </li>
                          <li class="sub-menu">
                              <a  href="boxed_page.html">Incident Reports</a>
                              <ul class="sub">
                                  <li><a  href="javascript:;">Masterlist</a></li>
                                  <li><a  href="javascript:;">Services/SLA</a></li>
                                  <li><a  href="javascript:;">Settings</a></li>
                                  <li><a  href="javascript:;">Reports</a></li>
                              </ul>
                          </li> 
                          <li class="sub-menu">
                              <a  href="boxed_page.html">Operating Procedures</a>
                              <ul class="sub">
                                  <li><a  href="javascript:;">Masterlist</a></li>
                                  <li><a  href="javascript:;">Categories</a></li>
                                  <li><a  href="javascript:;">Settings</a></li>
                                  <li><a  href="javascript:;">Reports</a></li>
                              </ul>
                          </li>                                                                
                          <li><a  href="boxed_page.html">Announcement</a></li>
                          <li><a  href="boxed_page.html">Settings</a></li>
                          <li><a  href="boxed_page.html">Reports</a></li>
                      </ul>
                  </li>                  
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Work & Time</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="basic_table.html">User Schedules</a></li>
                          <li><a  href="responsive_table.html">Schedule Templates</a></li>
                          <li><a  href="dynamic_table.html">Auxillaries</a></li>
                          <li class="sub-menu">
                              <a  href="boxed_page.html">Manage Tasks</a>
                              <ul class="sub">
                                  <li><a  href="javascript:;">Task list</a></li>
                                  <li><a  href="javascript:;">Categories</a></li>

                              </ul>
                          </li> 
                          <li><a  href="javascript:;">Settings</a></li>
                          <li><a  href="javascript:;">Reports</a></li>                          
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-glass"></i>
                          <span>Manage Clients</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="blank.html">Blank Page</a></li>
                          <li><a  href="sidebar_closed.html">Sidebar Closed</a></li>
                          <li><a  href="people_directory.html">People Directory</a></li>
                          <li><a  href="coming_soon.html">Coming Soon</a></li>
                          <li><a  href="lock_screen.html">Lock Screen</a></li>
                          <li><a  href="profile.html">Profile</a></li>
                          <li><a  href="invoice.html">Invoice</a></li>
                          <li><a  href="project_list.html">Project List</a></li>
                          <li><a  href="project_details.html">Project Details</a></li>
                          <li><a  href="search_result.html">Search Result</a></li>
                          <li><a  href="pricing_table.html">Pricing Table</a></li>
                          <li><a  href="faq.html">FAQ</a></li>
                          <li><a  href="fb_wall.html">FB Wall</a></li>
                          <li><a  href="404.html">404 Error</a></li>
                          <li><a  href="500.html">500 Error</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-sitemap"></i>
                          <span>Manage Vendors</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="javascript:;">Menu Item 1</a></li>
                          <li class="sub-menu">
                              <a  href="boxed_page.html">Menu Item 2</a>
                              <ul class="sub">
                                  <li><a  href="javascript:;">Menu Item 2.1</a></li>
                                  <li class="sub-menu">
                                      <a  href="javascript:;">Menu Item 3</a>
                                      <ul class="sub">
                                          <li><a  href="javascript:;">Menu Item 3.1</a></li>
                                          <li><a  href="javascript:;">Menu Item 3.2</a></li>
                                      </ul>
                                  </li>
                              </ul>
                          </li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-glass"></i>
                          <span>Settings</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="blank.html">Company</a></li>
                          <li><a  href="sidebar_closed.html">System</a></li>
                          <li><a  href="people_directory.html">Alert & Notices</a></li>
                          <li><a  href="coming_soon.html">Emails</a></li>
                          <li><a  href="lock_screen.html">Lock Screen</a></li>
                          <li><a  href="profile.html">Profile</a></li>
                          <li><a  href="invoice.html">Invoice</a></li>
                          <li><a  href="project_list.html">Project List</a></li>
                          <li><a  href="project_details.html">Project Details</a></li>
                          <li><a  href="search_result.html">Search Result</a></li>
                          <li><a  href="pricing_table.html">Pricing Table</a></li>
                          <li><a  href="faq.html">FAQ</a></li>
                          <li><a  href="fb_wall.html">FB Wall</a></li>
                          <li><a  href="404.html">404 Error</a></li>
                          <li><a  href="500.html">500 Error</a></li>
                      </ul>
                  </li> -->

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>




      <!--sidebar end-->