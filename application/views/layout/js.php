
  </section>
    <!-- js placed at the end of the document so the pages load faster -->

    <script src="<?php echo base_url(); ?>themes/js/jquery.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery.scrollTo.min.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script class="include" type="text/javascript" src="<?php echo base_url(); ?>themes/js/jquery.dcjqaccordion.2.7.js"></script> 
    <script src="<?php echo base_url(); ?>themes/js/jquery-migrate-1.2.1.min.js"></script>

<?php 
if (!empty($charts)) {
 ?>

    <!--right slidebar-->
    <script src="<?php echo base_url(); ?>themes/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="<?php echo base_url(); ?>themes/js/common-scripts.js"></script>


    <script src="<?php echo base_url(); ?>themes/js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>themes/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/owl.carousel.js" ></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery.customSelect.min.js" ></script> 
    <script src="<?php echo base_url(); ?>themes/js/sparkline-chart.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/easy-pie-chart.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/count.js"></script>
    <script>

      //owl carousel

      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true,
        autoPlay:true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

      $(window).on("resize",function(){
          var owl = $("#owl-demo").data("owlCarousel");
          owl.reinit();
      });

    </script>
<?php
}
?>

<?php 
if (!empty($form)) { ?>

    <!--custom switch-->
    <script src="<?php echo base_url(); ?>themes/js/bootstrap-switch.js"></script>
    <!--custom tagsinput-->
    <script src="<?php echo base_url(); ?>themes/js/jquery.tagsinput.js"></script>
    <!--custom checkbox & radio-->
    <script type="text/javascript" src="<?php echo base_url(); ?>themes/js/ga.js"></script>

    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-daterangepicker/date.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/ckeditor/ckeditor.js"></script>

    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>

    <script src="<?php echo base_url(); ?>themes/js/respond.min.js" ></script>
    <!--right slidebar-->
    <script src="<?php echo base_url(); ?>themes/js/slidebars.min.js"></script>
    <!--common script for all pages-->
    <script src="<?php echo base_url(); ?>themes/js/common-scripts.js"></script>
    <!--script for this page-->
    <script src="<?php echo base_url(); ?>themes/js/form-component.js"></script>
<?php
}
?>


<?php 
if (!empty($advancedform)) { ?>
<!--     <script src="<?php echo base_url(); ?>themes/js/jquery.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery.scrollTo.min.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script class="include" type="text/javascript" src="<?php echo base_url(); ?>themes/js/jquery.dcjqaccordion.2.7.js"></script>  -->


    <!--right slidebar-->
    <script src="<?php echo base_url(); ?>themes/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="<?php echo base_url(); ?>themes/js/common-scripts.js"></script>


      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/fuelux/js/spinner.min.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-daterangepicker/moment.min.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/jquery-multi-select/js/jquery.multi-select.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/jquery-multi-select/js/jquery.quicksearch.js"></script>
      <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/select2/js/select2.min.js"></script>

      <script src="<?php echo base_url(); ?>themes/assets/summernote/dist/summernote.min.js"></script>
      <script src="<?php echo base_url(); ?>themes/js/advanced-form-components.js"></script>
      <script src="<?php echo base_url(); ?>themes/assets/bootstrap-switch/static/js/bootstrap-switch.js"></script> 
      <!-- <script src="<?php echo base_url(); ?>themes/assets/switchery/switchery.js"></script> -->


      <script type="text/javascript">

          $(document).ready(function () {
              $(".js-example-basic-single").select2();

              $(".js-example-basic-multiple").select2();
          });
      </script>
      <script type="text/javascript">
        $(document).ready(function () {
            // Resets to the regular style
            $('#dimension-switch').bootstrapSwitch('setSizeClass', '');
            // Sets a mini switch
            $('#dimension-switch').bootstrapSwitch('setSizeClass', 'switch-mini');
            // Sets a small switch
            $('#dimension-switch').bootstrapSwitch('setSizeClass', 'switch-small');
            // Sets a large switch
            $('#dimension-switch').bootstrapSwitch('setSizeClass', 'switch-large');


            $('#change-color-switch').bootstrapSwitch('setOnClass', 'success');
            $('#change-color-switch').bootstrapSwitch('setOffClass', 'danger');
        });
      </script>

        <!-- swithery-->
        <!--   <script type="text/javascript">
          $(document).ready(function () {
              //default
              var elem = document.querySelector('.js-switch');
              var init = new Switchery(elem);


              //small
              var elem = document.querySelector('.js-switch-small');
              var switchery = new Switchery(elem, { size: 'small' });

              //large
              var elem = document.querySelector('.js-switch-large');
              var switchery = new Switchery(elem, { size: 'large' });


              //blue color
              var elem = document.querySelector('.js-switch-blue');
              var switchery = new Switchery(elem, { color: '#7c8bc7', jackColor: '#9decff' });

              //green color
              var elem = document.querySelector('.js-switch-yellow');
              var switchery = new Switchery(elem, { color: '#FFA400', jackColor: '#ffffff' });

              //red color
              var elem = document.querySelector('.js-switch-red');
              var switchery = new Switchery(elem, { color: '#ff6c60', jackColor: '#ffffff' });


          });
      </script> -->
<?php
}
?>



<?php 
if (!empty($datatable)) { ?>

    <!--right slidebar-->
    <script src="<?php echo base_url(); ?>themes/js/slidebars.min.js"></script>

    <!--common script for all pages-->
    <script src="<?php echo base_url(); ?>themes/js/common-scripts.js"></script>



    <!-- 
    <script src="<?php echo base_url(); ?>themes/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/jquery-migrate-1.2.1.min.js"></script> -->
    <!-- <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>       -->
    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/js/datatable/jquery.dataTables.min.js"></script>   

    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/js/datatable/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/js/datatable/jszip.min.js"></script>
    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/js/datatable/pdfmake.min.js"></script>
    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/js/datatable/vfs_fonts.js"></script>
    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/js/datatable/buttons.html5.min.js"></script>

    <script type="text/javascript" language="javascript" src="<?php echo base_url(); ?>themes/assets/advanced-datatable/media/js/jquery.dataTables.js"></script>
    
    <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/data-tables/DT_bootstrap.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/dynamic_table_init.js"></script>
<?php
}
?>

<?php 
if (!empty($datepicker)) { ?>

  <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-daterangepicker/moment.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>themes/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
<?php } ?>


<?php 
if (!empty($tree)) { ?>
    <script src="<?php echo base_url(); ?>themes/assets/fuelux/js/tree.min.js"></script>
    <script src="<?php echo base_url(); ?>themes/js/tree.js"></script>

  <script>
      jQuery(document).ready(function() {
          TreeView.init();
      });
  </script>
<?php } ?>


    <script src="<?php echo base_url(); ?>themes/assets/toastr-master/toastr.js"></script>
    <!--script for this page-->
    <script src="<?php echo base_url(); ?>themes/js/panacea.js"></script>
    <script type="text/javascript">
          $('#package_select option[value=<?php echo $service; ?>]').attr('selected','');
    </script>

  </body>

</html>
