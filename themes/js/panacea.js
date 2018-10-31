
$(document).ready(function() {

//NOTIFICATIONS
toastr.options = {
  "closeButton": true,
  "debug": false,
  "progressBar": true,
  "positionClass": "toast-top-right",
  // "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

//SELECT SERVICES
if ($("#package_select").length) {

    $('.system-services').hide();
    var elem = $("#package_select").val();
    $('#'+elem).show();  

    $('#package_select').on("change", function() {
        $('.system-services').hide();
        var elem = $(this).val();
        $('#'+elem).show();  
    });
}

$('#loginform').submit(function(e) {
        e.preventDefault();

        $("#loginbtn").prop("disabled", true);

        var newURL = $('#loginform').attr('action');
        var newData  = {
                'UserName' : $('input[name=UserName]').val(),
                'Password' : $('input[name=Password]').val(),
                'Reference' : $('input[name=ref]').val(),
            }
          $.ajax({
              url: newURL,
              type:'POST',
              dataType: "json",
              data: newData,
              success: function(data) {
                console.log(data);
                if($.isEmptyObject(data.error)){
                  toastr.success("Login Successful", "Welcome!");
                    window.setTimeout(function(){
                      window.location.href = data.url;  
                    }, 1000);
                  }
                  else{
                      // toastr.options.onclick = function () {
                      //     alert('You can perform some custom action after a toast goes away');
                      // };
                      toastr.error(data.error, "Error");
                  }
                $('input[name=UserName]').val('');
                $('input[name=Password]').val('');
                $("#loginbtn").prop("disabled", false);                   

              }
              
          });        
});


//SHOW GENERIC FORM/MODAL TO ADD ITEM
$('.add-new-generic-btn').click(function() {
  var action = $('#site_url').attr('href') + $(this).data('action');
  $('#add-edit-form-title').text('Add New Item');
  $('#add-edit-form-header').text('Please input new item details');  
  $('#generic-add-form').attr('action',action)
  $('#add-generic-item-modal').modal();
});

//SUBMIT GENERIC FORM TO ADD ITEM
$('#generic-add-form').submit(function(e) {
    e.preventDefault();

    $("#submit-btn").prop("disabled", true);
    var site = $('#site_url').attr('href');
    var controller = $('.masterlist').data('type');
    var newURL = $('#generic-add-form').attr('action');
    var newData  = {
            'CompanyId' : $('input[name=company]').val(),
            'Id' : $('input[name=id]').val(),   
            'Code' : $('input[name=code]').val(),
            'Name' : $('input[name=name]').val(),
            'Description' : $('textarea[name=desc]').val(),
            'Active' : $('select[name=status]').val(),                
        }
      $.ajax({
          url: newURL,
          type:'POST',
          dataType: "json",
          data: newData,
          success: function(data) {
            console.log(data);
            if($.isEmptyObject(data.error)){
                toastr.success("Record Updated", "Successful");                      
                  var code = data[0].Code;
                  var name = data[0].Name;
                  var desc = data[0].Description.substr(0, 50);
                  var modifieddate = $.datepicker.formatDate('yy-dd-M', new Date(data[0].ModifiedAt));  
                  if (data[0].Active == '1') {
                    var status = '<span class="label label-success">Active</span>';
                  }
                  else {
                    var status = '<span class="label label-default">Inactive</span>';
                  }
                  var btns = '<button class="btn btn-success btn-xs "><i class="fa fa-check"></i></button>'+
                  '           <button data-id="'+data[0].Id+'" class="btn btn-primary btn-xs edit-generic-item-btn" data-action="'+controller+'/edit"><i class="fa fa-pencil"></i></button>'+
                  '           <button data-id="'+data[0].Id+'" class="btn btn-danger btn-xs delete-generic-item-btn" data-action="'+controller+'/delete"><i class="fa fa-trash-o "></i></button>';                 

                  var t = $('#dynamic-table').DataTable();
                  var trDOM = t.row.add( [
                    code,
                    name,
                    desc,
                    modifieddate,
                    status,
                    btns,
                  ] ).draw().node();
                  $( trDOM ).attr('id','row'+data[0].Id);
                  $( trDOM ).find("td").eq(3).attr('data-active',data[0].Active);
                  $('#add-generic-item-modal').modal('hide');
              }
              else{
                  toastr.error(data.error, "Error");
              }
            $('input[name=code]').val('');
            $('input[name=name]').val('');
            $('textarea[name=desc]').val('');
            $("#submit-btn").prop("disabled", false);                   

          }
          
      });        
});


//SHOW GENERIC FORM/MODAL TO DELETE ITEM
$('.delete-generic-item-btn').click(function() {
  var action = $('#site_url').attr('href') + $(this).data('action');
  $('#generic-del-form').attr('action',action);
  $('input[name=id]').val($(this).data('id'));
  $('#del-generic-item-modal').modal();
});

//SUBMIT GENERIC FORM TO DELETE ITEM
$('#generic-del-form').submit(function(e) {
    e.preventDefault();

    $("#del-submit-btn").prop("disabled", true);

    var newURL = $('#generic-del-form').attr('action');
    var newData  = {
            'CompanyId' : $('input[name=company]').val(),
            'Id' : $('input[name=id]').val(),            
        }
      $.ajax({
          url: newURL,
          type:'POST',
          dataType: "json",
          data: newData,
          success: function(data) {
            console.log(data);
            if($.isEmptyObject(data.error)){
                toastr.success("Record Updated", "Successful");                      
                  var Id = data.Id;
                  $('#del-generic-item-modal').modal('hide');
                  var t = $('#dynamic-table').DataTable();
                  t
                  .row($('#row'+data.Id))
                  .remove()
                  .draw();
              }
              else{
                  toastr.error(data.error, "Error");
              }
            $("#del-submit-btn").prop("disabled", false);                   

          }
          
      });        
});

//SHOW GENERIC FORM/MODAL TO EDIT ITEM
$('.edit-generic-item-btn').click(function() {
  var action = $('#site_url').attr('href') + $(this).data('action');
  $('#add-edit-form-title').text('Edit Item');
  $('#add-edit-form-header').text('Edit item details');  
  $('#generic-add-form').attr('action',action);
  $('input[name=id]').val($(this).data('id'));
  $('#add-generic-item-modal').modal();
  var tr = $('#row'+$(this).data('id'));
  $('input[name=code]').val(tr.find("td").eq(0).text());
  $('input[name=name]').val(tr.find("td").eq(1).text());
  $('textarea[name=desc]').val(tr.find("td").eq(2).text());
  $('select[name=status]').val(tr.find("td").eq(4).attr('data-active'));
});










});