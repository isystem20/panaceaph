$(document).ready(function() {


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



	if ($("#package_select").length) {
	    // $("#package_select")[0].selectedIndex = 0;

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

$('.add-new-generic-btn').click(function() {
    $('#add-generic-item-modal').modal();
});

$('#generic-add-form').submit(function(e) {
    e.preventDefault();

    $("#submit-btn").prop("disabled", true);

    var newURL = $('#generic-add-form').attr('action');
    var newData  = {
            'CompanyId' : $('input[name=company]').val(),
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
                  '           <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>'+
                  '           <button class="btn btn-danger btn-xs delete-generic-item-btn"><i class="fa fa-trash-o "></i></button>';                 

                  var t = $('#dynamic-table').DataTable();
                  t.row.add( [
                    code,
                    name,
                    desc,
                    modifieddate,
                    status,
                    btns,
                  ] ).draw( false );

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

$('.delete-generic-item-btn').click(function(e) {
    $('#del-generic-item-modal').modal();
});


$('#generic-del-form').submit(function(e) {
    e.preventDefault();

    $("#submit-btn").prop("disabled", true);

    var newURL = $('#generic-add-form').attr('action');
    var newData  = {
            'CompanyId' : $('input[name=company]').val(),
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
                  '           <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>'+
                  '           <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>';                 

                  var t = $('#dynamic-table').DataTable();
                  t.row.add( [
                    code,
                    name,
                    desc,
                    modifieddate,
                    status,
                    btns,
                  ] ).draw( false );

                  $('#add-modal').modal('hide');
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



});