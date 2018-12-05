<script>

//createing services
function GenerateParentModule(parent, service) {


  var el_parent =  document.getElementById(parent);
  var el_service = '#' + service;

    alert(el_service);
    $("#Human Resource Information System").append("<p>TESTTESTTESTTEST</p>");


  //<li id=\"parent-" + parent + "\"" + "class=\"sub-menu\"><span>" + parent + "</span></li>
//Human Resource Information System


}

function GenerateModule(name, view, service) {
 // alert(name + ' ' + view + ' ' + service);
}

</script>


  <!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
            <div id="package_container">
              <select id="package_select" class="form-control">
                <?php foreach($services as $service){ ?>
                  <option value="<?php echo $service; ?>">
                      <td><?php echo $service; ?></td>
                  </option>
                <?php } ?>
              </select>                     
            </div>

            <!-- Create services div -->
            <?php foreach($services as $service){ ?>
              <div id="<?php echo $service; ?>" class="system-services">Test</div>
            <?php } ?>
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>



  
<script>

<?php foreach($modules as $row){ ?>
      var name = "<?php echo $row->name ?>";
      var parent = "<?php echo $row->parent ?>";
      var view = "<?php echo $row->view ?>";
      var service = "<?php echo $row->service ?>";

      GenerateParentModule(parent, service);
      GenerateModule(name, view, service)


  <?php } ?>

</script>


<!-- no icon yet 

<?php foreach($services as $service){ ?>

 <div id="<?php echo $service; ?>" class="system-services">

    <?php foreach($parents as $parent_row){ ?>
      <a class="<?php if(!empty($hr_emp_list)) {echo 'active';} ?>" href="javascript:;" >
          <i class="fa fa-book"></i>
          
      </a>

    <li class="sub-menu">
        <a class="<?php if(!empty($hr_emp_list)) {echo 'active';} ?>" href="javascript:;" >
            <i class="fa fa-book"></i>
            <span><?php echo $parent_row; ?></span>
        </a>
        <ul class="sub">
          <?php foreach($modules as $row){ ?>

            <script>
            alert("<?php echo $row->Parent ?>");
            </script>
            <?php 
              
              if ($row->parent == $parent_row) {
                echo "<li><a href=\"".base_url().$row->view."\">". $row->name ."</a></li>";
              }
            ?>

          <?php } ?>


          <li><a href="<?php echo base_url(); ?>hr/employees">Masterlist</a></li>
          <li><a href="<?php echo base_url(); ?>hr/positions">Positions</a></li>
          <li><a href="<?php echo base_url(); ?>hr/employment-types">Types</a></li>
          <li><a href="<?php echo base_url(); ?>hr/ranks">Ranks</a></li>
          <li><a href="<?php echo base_url(); ?>hr/groups">Groups</a></li>
        </ul>
    </li>


    <?php } ?>

<?php } ?>




  <?php foreach($modules as $row){ ?>
  <tr> 

      <td><?php echo $row->parent; ?></td> 
      <td><?php echo $row->view; ?></td> 
      <td><?php echo $row->name; ?></td> 

  </tr> 
  <?php } ?>
</table>
<br /><br />
<table border="1">
  <?php foreach($parents as $parent_row){ ?>
  <tr> 
      <td><?php echo $parent_row; ?></td>

  </tr> 
  <?php } ?>
</table>
<br /><br />









  <!--sidebar end-->