<script>

  //createing services
  function GenerateParentModule(parent, service) {
    var parent_id = 'parent-' + parent;
    var el_parent =  document.getElementById(parent_id);
    var el_service_id = '#' + service;

    if (el_parent == null && parent.length > 0) {
      $(el_service_id).append("<li id=\"" + parent_id + "\"" + "class=\"sub-menu\">"
        + "<a class=\"active\" href=\"javascript:;\">"
        + "<i class=\"fa fa-book\"></i>"
        + "<span>" + parent + "</span>"
        + "</a>"
        + "<ul id=\"child-" + parent_id + "\" class=\"sub\">"
        + "</ul>"
        + "</li>"
       
        );
    }

  }

  function GenerateModule(name, view, parent) {
    var view_url = " <?php echo base_url(); ?>" + view;
    var child_parent_id = '#child-parent-' + parent;
    var child_id = 'child-' + name;
    var el_child =  document.getElementById(child_id);

  if (el_child == null && name.length > 0) {
      $(child_parent_id).append("<li id=\"" + child_id +  "\"><a href=\"" + view_url + "\">" + name + "</a></li>");
  }


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
                <div id="<?php echo $service; ?>" class="system-services"></div>
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
        var service = "<?php echo $row->service_code ?>";
        GenerateParentModule(parent, service);
        GenerateModule(name, view, parent)
    <?php } ?>
</script>
  <!--sidebar end-->