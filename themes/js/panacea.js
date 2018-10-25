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


});