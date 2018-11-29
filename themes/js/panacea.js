
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

//LOGIN ACTION
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
  $('#generic-add-form').attr('action',action);
  $('input[name=code]').attr('placeholder','Unique Code of this Item');
  $('input[name=code]').attr('required',true);  
  $('input[name=name]').attr('placeholder','Input the Item Name'); 
  $('input[name=name]').attr('required',true);   
  $('textarea[name=desc]').attr('placeholder','Short Description for this Item.');  
  $('#add-generic-item-modal').modal();
  $('input[name=id]').val('');
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



                if ($('input[name=id]').val() != '') {

                    var Id = data[0].Id;
                    $('#del-generic-item-modal').modal('hide');
                    var t = $('#dynamic-table').DataTable();
                    t
                    .row($('#row'+data[0].Id))
                    .remove()
                    .draw();

                }

                var code = data[0].Code;
                var name = data[0].Name;
                var desc = data[0].Description.substr(0, 40);
                var modifieddate = $.datepicker.formatDate('yy-dd-mm', new Date(data[0].ModifiedAt));  
                if (data[0].Active == '1') {
                  var status = '<span class="label label-success">Active</span>';
                }
                else {
                  var status = '<span class="label label-default">Inactive</span>';
                }
                var btns = '<button data-id="'+data[0].Id+'" class="btn btn-success btn-xs open-generic-item-btn" data-action="'+controller+'/read"><i class="fa fa-info-circle"></i></button>'+
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
                $( trDOM ).find("td").eq(4).attr('data-active',data[0].Active);
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
$('.actions').on('click','.delete-generic-item-btn',function() {
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
$('.actions').on('click','.edit-generic-item-btn',function() {
  var action = $('#site_url').attr('href') + $(this).data('action');
  $('#add-edit-form-title').text('Edit Item');
  $('#add-edit-form-header').text('Edit item details');  
  $('#generic-add-form').attr('action',action);
  $('input[name=id]').val($(this).data('id'));
  $('#add-generic-item-modal').modal();
  var tr = $('#row'+$(this).data('id'));
  // $('input[name=code]').val(tr.find("td").eq(0).text());
  // $('input[name=name]').val(tr.find("td").eq(1).text());
  // $('textarea[name=desc]').val(tr.find("td").eq(2).text());
  $('input[name=code]').attr('placeholder',tr.find("td").eq(0).text());
  $('input[name=code]').attr('required',false);  
  $('input[name=name]').attr('placeholder',tr.find("td").eq(1).text()); 
  $('input[name=name]').attr('required',false);   
  $('textarea[name=desc]').attr('placeholder',tr.find("td").eq(2).text());    
  $('select[name=status]').val(tr.find("td").eq(4).attr('data-active'));
});

//OPEN GENERIC ITEM
$('.actions').on('click','.open-generic-item-btn',function(e) {

    e.preventDefault();

    $("#del-submit-btn").prop("disabled", true);

    var newURL = $('#site_url').attr('href') + $(this).data('action');
    var newData  = {
            'Id' : $(this).data('id'),            
        }
      $.ajax({
          url: newURL,
          type:'POST',
          dataType: "json",
          data: newData,
          success: function(data) {
            console.log(data);
            if($.isEmptyObject(data.error)){
                // toastr.success("Record Updated", "Successful");                      
                $('#view-form-title').text('Item Details');
                var modifieddate = $.datepicker.formatDate('yy-dd-mm', new Date(data[0].ModifiedAt));  
                var createddate = $.datepicker.formatDate('yy-dd-mm', new Date(data[0].CreatedAt));  
                $('#item-code').text(data[0].Code);
                $('#item-name').text(data[0].Name);
                $('#item-desc').text(data[0].Description);
                $('#item-created').text(data[0].cFirstName+' '+data[0].cLastName+' ('+createddate+')');
                $('#item-modified').text(data[0].mFirstName+' '+data[0].mLastName+' ('+modifieddate+')');
                $('#item-version').text(data[0].VersionNo);
                if (data[0].Active == '1') {
                  var status = '<span class="label label-success">Active</span>';
                }
                else {
                  var status = '<span class="label label-default">Inactive</span>';
                }    
                $('#item-active').html(status);
                $('#open-generic-item-modal').modal();
              }
              else{
                  toastr.error(data.error, "Error");
              }
            $("#del-submit-btn").prop("disabled", false);                   

          }
          
      }); 
});

//CUSTOM EXPORT TO EXCEL BUTTON
$("#export_excel").on("click", function() {
    var table = $('#dynamic-table').DataTable();
    table.button( '.buttons-excel' ).trigger();
});

//CUSTOM EXPORT TO COPY BUTTON
$("#export_copy").on("click", function() {
    var table = $('#dynamic-table').DataTable();
    table.button( '.buttons-copy' ).trigger();
});

//CUSTOM EXPORT TO CSV BUTTON
$("#export_csv").on("click", function() {
    var table = $('#dynamic-table').DataTable();
    table.button( '.buttons-csv' ).trigger();
});

//CUSTOM EXPORT TO PDF BUTTON
$("#export_pdf").on("click", function() {
    var table = $('#dynamic-table').DataTable();
    table.button( '.buttons-pdf' ).trigger();
});

//SHOW DROPBOX FOR CITY LIST
if ($('select[name=city]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=city]').attr('get'), function( data ) {
    $('select[name=city]').html(data);
  });
}

//SHOW DROPBOX FOR NATIONALITY LIST
if ($('select[name=nationality]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=nationality]').attr('get'), function( data ) {
    $('select[name=nationality]').html(data);
  });
}

//SHOW DROPBOX FOR REGIONS LIST
if ($('select[name=region]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=region]').attr('get'), function( data ) {
    $('select[name=region]').html(data);
  });
}

//SHOW DROPBOX FOR SITE/BRANCH LIST
if ($('select[name=site]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=site]').attr('get'), function( data ) {
    $('select[name=site]').html(data);
  });
}

//SHOW DROPBOX FOR DEPARTMENTS LIST
if ($('select[name=department]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=department]').attr('get'), function( data ) {
    $('select[name=department]').html(data);
  });
}


//SHOW DROPBOX FOR DEPARTMENTS LIST
if ($('select[name=costcenter]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=costcenter]').attr('get'), function( data ) {
    $('select[name=costcenter]').html(data);
  });
}

//SHOW DROPBOX FOR DEPARTMENTS LIST
if ($('select[name=superior]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=superior]').attr('get'), function( data ) {
    $('select[name=superior]').html(data);
  });
}

//SHOW DROPBOX FOR GROUPS/TEAM LIST
if ($('select[name=team]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=team]').attr('get'), function( data ) {
    $('select[name=team]').html(data);
  });
}

//SHOW DROPBOX FOR POSITION LIST
if ($('select[name=position]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=position]').attr('get'), function( data ) {
    $('select[name=position]').html(data);
  });
}

//SHOW DROPBOX FOR RANKS LIST
if ($('select[name=rank]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=rank]').attr('get'), function( data ) {
    $('select[name=rank]').html(data);
  });
}

//SHOW DROPBOX FOR EMPLOYMENT TYPE LIST
if ($('select[name=type]').length > 0) {
  $.get( $('#thispage').data('url')+$('select[name=type]').attr('get'), function( data ) {
    $('select[name=type]').html(data);
  });
}


//ADD SCHOOLS IN TABLE 
if ($('#addschool').length > 0) {
  $('#addschool').on("click", function() {
    var s = $('#schoolname');
    var c =  $('#course');
    var g = $('#graduatedate');
    var f = $('#edfrom');
    var t = $('#edto');
    var a = $('#award');
    if (s.val() == '' || g.val() == '') {
        toastr.error('School Name and Year are required.', "");
        return false;
    }
    var str = '';
    str = str + '<tr>';
    str = str + '  <td><input type="text" placeholder="Can not be empty." class="form-control school" name="school" value="'+ s.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control degree" name="degree" value="'+ c.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control eyear" name="eyear" value="'+ f.val() + ' to ' + t.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control award" name="award" value="'+ a.val() +'"></td>';
    str = str + '  <td class="actions"><button class="btn btn-danger btn-xs tr-remover"><i class="fa fa-trash-o "></i></button></td>';
    str = str + '</tr>';
    $('#education tbody').append(str);
    s.val('');
    c.val('');
    g.val('');
    t.val(''); 
    f.val('');  
    a.val('');
    toastr.info('Education Successfully Added', "");
  });
}


//ADD WORK HISTORY IN TABLE 
if ($('#addworkhistory').length > 0) {
  $('#addworkhistory').on("click", function() {
    var s = $('#ehcompany');
    var c =  $('#ehposition');
    var g = $('#ehyear');
    var f = $('#ehfrom');
    var t = $('#ehto');
    var a = $('#ehcontact');
    if (s.val() == '' || g.val() == '') {
        toastr.error('Company Name, Position and Year are required.', "");
        return false;
    }
    var str = '';
    str = str + '<tr>';
    str = str + '  <td><input type="text" placeholder="Can not be empty." class="form-control" name="ehcompany" value="'+ s.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="ehposition" value="'+ c.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="ehyear" value="'+ f.val() + ' to ' + t.val() +'"></td>';   
    str = str + '  <td><input type="text" class="form-control" name="ehcontact" value="'+ a.val() +'"></td>';
    str = str + '  <td class="actions"><button class="btn btn-danger btn-xs tr-remover"><i class="fa fa-trash-o "></i></button></td>';
    str = str + '</tr>';
    $('#workhistory tbody').append(str);
    s.val('');
    c.val('');
    g.val(''); 
    t.val(''); 
    f.val('');    
    a.val('');
    toastr.info('Previous Employment Successfully Added', "");
  });
}

//ADD LICENSE IN TABLE 
if ($('#addlicense').length > 0) {
  $('#addlicense').on("click", function() {
    var s = $('#license');
    var c =  $('#liprovider');
    var g = $('#livalidity');
    if (s.val() == '' || g.val() == '') {
        toastr.error('License Name, Issuer and Validity are required.', "");
        return false;
    }
    var str = '';
    str = str + '<tr>';
    str = str + '  <td><input type="text" placeholder="Can not be empty." class="form-control" name="license" value="'+ s.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="liprovider" value="'+ c.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="livalidity" value="'+ g.val() +'"></td>';
    str = str + '  <td class="actions"><button class="btn btn-danger btn-xs tr-remover"><i class="fa fa-trash-o "></i></button></td>';
    str = str + '</tr>';
    $('#license tbody').append(str);
    s.val('');
    c.val('');
    g.val('');
    toastr.info('License Successfully Added', "");
  });
}

//ADD TRAINING IN TABLE 
if ($('#addtraining').length > 0) {
  $('#addtraining').on("click", function() {
    var s = $('#training');
    var c =  $('#tcprovider');
    var g = $('#tcdate');
    if (s.val() == '' || g.val() == '') {
        toastr.error('License Name, Issuer and Validity are required.', "");
        return false;
    }
    var str = '';
    str = str + '<tr>';
    str = str + '  <td><input type="text" placeholder="Can not be empty." class="form-control" name="training" value="'+ s.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="tcprovider" value="'+ c.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="tcdate" value="'+ g.val() +'"></td>';
    str = str + '  <td class="actions"><button class="btn btn-danger btn-xs tr-remover"><i class="fa fa-trash-o "></i></button></td>';
    str = str + '</tr>';
    $('#training tbody').append(str);
    s.val('');
    c.val('');
    g.val('');
    toastr.info('Training/Certificate Successfully Added', "");
  });
}

//ADD DEPENDENT IN TABLE 
if ($('#adddependent').length > 0) {
  $('#adddependent').on("click", function() {
    var s = $('#dependent');
    var c =  $('#relation');
    var g = $('#depbdate');
    if (s.val() == '' || g.val() == '') {
        toastr.error('License Name, Issuer and Validity are required.', "");
        return false;
    }
    var str = '';
    str = str + '<tr>';
    str = str + '  <td><input type="text" placeholder="Can not be empty." class="form-control" name="dependent" value="'+ s.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="relation" value="'+ c.val() +'"></td>';
    str = str + '  <td><input type="text" class="form-control" name="depbdate" value="'+ g.val() +'"></td>';
    str = str + '  <td class="actions"><button class="btn btn-danger btn-xs tr-remover"><i class="fa fa-trash-o "></i></button></td>';
    str = str + '</tr>';
    $('#dependents tbody').append(str);
    s.val('');
    c.val('');
    g.val('');
    toastr.info('Dependent Successfully Added', "");
  });
}


//REMOVE EDUC/WORK/LICENSE ENTRY
$('.table').delegate(".tr-remover", "click", function() {
  var tr = $(this).closest('tr');
  $(tr).remove();
});


//SUBMIT ADD EMPLOYEE
$('#employeeform').submit(function(e) {
    e.preventDefault();

    var school = new Array();
    $("input[name=school]").each(function() {
       school.push($(this).val());
    });
    var degree = new Array();
    $("input[name=degree]").each(function() {
       degree.push($(this).val());
    });
    var eyear = new Array();
    $("input[name=eyear]").each(function() {
       eyear.push($(this).val());
    });

    var award = new Array();
    $("input[name=award]").each(function() {
       award.push($(this).val());
    });
    var ehcompany = new Array();
    $("input[name=ehcompany]").each(function() {
       ehcompany.push($(this).val());
    });
    var ehposition = new Array();
    $("input[name=ehposition]").each(function() {
       ehposition.push($(this).val());
    });
    var ehyear = new Array();
    $("input[name=ehyear]").each(function() {
       ehyear.push($(this).val());
    });
    var ehcontact = new Array();
    $("input[name=ehcontact]").each(function() {
       ehcontact.push($(this).val());
    });
    var license = new Array();
    $("input[name=license]").each(function() {
       license.push($(this).val());
    });
    var liprovider = new Array();
    $("input[name=liprovider]").each(function() {
       liprovider.push($(this).val());
    });
    var livalidity = new Array();
    $("input[name=livalidity]").each(function() {
       livalidity.push($(this).val());
    });
    var training = new Array();
    $("input[name=training]").each(function() {
       training.push($(this).val());
    });
    var tcprovider = new Array();
    $("input[name=tcprovider]").each(function() {
       tcprovider.push($(this).val());
    });
    var tcdate = new Array();
    $("input[name=tcdate]").each(function() {
       tcdate.push($(this).val());
    });
    var dependent = new Array();
    $("input[name=dependent]").each(function() {
       dependent.push($(this).val());
    });
    var relation = new Array();
    $("input[name=relation]").each(function() {
       relation.push($(this).val());
    });
    var depbdate = new Array();
    $("input[name=depbdate]").each(function() {
       depbdate.push($(this).val());
    });




    $("#employeesubmit").prop("disabled", true);
    var newURL = $(this).attr('action');
    var newData  = {
            'CompanyId' : $('input[name=companyid]').val(),
            'FirstName' : $('input[name=firstname]').val(),
            'LastName' : $('input[name=lastname]').val(),
            'MiddleName' : $('input[name=middlename]').val(),
            'Suffix' :  $('input[name=suffix]').val(),
            'Birthdate' : $('input[name=birthdate]').val(),
            'CivilStatus' : $('select[name=civilstatus]').val(),
            'NationalityId' : $('select[name=nationality]').val(),
            'Address1' : $('input[name=address]').val(),
            'CityId' : $('select[name=city]').val(),
            'ProvinceId' : $('select[name=region]').val(),
            'PersonalEmail' : $('input[name=email]').val(),
            'MobileNo' : $('input[name=mobile]').val(),
            'TelNo' : $('input[name=landline]').val(),
            'Code' : $('input[name=employeenumber]').val(),
            'CompanyEmail' : $('input[name=companyemail]').val(),
            'CompanyContact' : $('input[name=contactnumber]').val(),
            'SiteId' : $('select[name=site]').val(),
            'DepartmentId' : $('select[name=department]').val(),
            'CostCenterId' : $('select[name=costcenter]').val(),
            'EmployeeGroupId' : $('select[name=team]').val(),
            'Leader1' : $('select[name=superior]').val(),
            'PositionId' : $('select[name=position]').val(),
            'EmployeeRankId' : $('select[name=rank]').val(),
            'EmployeeTypeId' : $('select[name=type]').val(),
            'DateHired' : $('input[name=hiredate]').val(),
            'Duration' :$('input[name=duration]').val(), 
            'Shift' :  $('input[name=shift]').val(),
            'SSS' : $('input[name=sss]').val(),
            'TIN' : $('input[name=tin]').val(),
            'PHILHEALTH' : $('input[name=philhealth]').val(),
            'PAGIBIG' : $('input[name=hdmf]').val(),
            'education_school' : school,
            'education_degree' : degree,
            'education_year' : eyear,
            'education_award' : award,
            'work_company' : ehcompany,
            'work_position' : ehposition,
            'work_year' : ehyear,
            'work_contact' : ehcontact,
            'license_name' : license,
            'license_provider' : liprovider,
            'license_validity' : livalidity,
            'training_name' : training,
            'training_provider' : tcprovider,
            'training_date' : tcdate,
            'dependent_name' : training,
            'dependent_relation' : relation,
            'dependent_bdate' : depbdate,

        }
      $.ajax({
          url: newURL,
          type:'POST',
          dataType: "json",
          data: newData,
          success: function(data) {
            console.log(data);
            if($.isEmptyObject(data.responses)){
                  toastr.success("Record Updated", "Successful");  
              }
              else{
                  toastr.error(data.error, "Error");
                  $.each(data.responses, function(key,value) {
                    var element = $('.'+key);
                    element.next('.help-block').remove();
                    element.removeClass('field-error');
                    element.addClass(value.length > 0 ? 'field-error' : '');
                    element.after(value);
                  });
              }
            $("#employeesubmit").prop("disabled", false);                   

          }
          
      });        
});

});