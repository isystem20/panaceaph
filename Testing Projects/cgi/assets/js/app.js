function GenerateTableDisplay(data, id){

    var keys = [];
    var view = view_forms[id + '_view'];
    var field_caption = '';
    var field_width = 0;

    //remove created div form and its children once ni close yung tab.
    //create div form view form.
    //create tables

    var table_container_id = 'table-containter-' + id; //div
    var table_id = 'table-' + id; //table
    var thead_id = 'thead-' + id; //thead
    var tbody_id = 'tbody-' + id; //tbody

    var table_class = ' class=\"' + '\"';
    var thead_class = ' class=\"' + '\"';
    var tbody_class = ' class=\"' + '\"';



    var table_container_id_class_el = '<div id=\"' + table_container_id + '\"' + table_class + '>';//div
    var table_id_class_el = '<table id=\"' + table_id + '\"' + thead_class + '>';//table
    var thead_id_class_el = '<thead id=\"' + thead_id + '\"' + thead_class + '>';//thead
    var tbody_id_class_el = '<tbody id=\"' + tbody_id + '\"' + tbody_class + '>'; //tbody

    var container_el = document.getElementById(table_container_id_class_el);

    if ((container_el) || (container_el = 'null')) {

        var table_id_acc = '#' + table_id;
        var thead_id_acc = '#' + thead_id;
        var tbody_id_acc = '#' + tbody_id;


        $("#main-table-views").append(table_container_id_class_el);
        $('#' + table_container_id).append(table_id_class_el);
        $(table_id_acc).append(thead_id_class_el);
        $(table_id_acc).append(tbody_id_class_el);

        $(thead_id_acc).empty(); 
        $(tbody_id_acc).empty();

        var tr_class = ' class=\"' + '\"';
        var td_class = ' class=\"' + '\"';

        var td_attr = '';

        //generate columns/fields, define its width and captions
        $(thead_id_acc).append('<tr' + tr_class + ' >');
        for (key in data[0]) {
            td_attr = "<td class=\"\" ";
            if (view.hasOwnProperty(key)){
                field_caption = view[key].caption;
                field_width = "width=\"" + view[key].width + "px\"";
                td_attr += field_width;
             } else {
                field_caption = key;
                field_width = "width=\"110px\"";
                td_attr += field_width;                
             }
            $(thead_id_acc).append( td_attr + '>' + field_caption + '</td>');
        }
        $(thead_id_acc).append('</tr>');


        //generate columns/fields' values
        for (var i = 0; i < data.length; i++) {
            $(tbody_id_acc).append('<tr>');
            for (key in data[i]) {
            $(tbody_id_acc).append('<td>' + data[i][key] + '</td>');
          }
            $(tbody_id_acc).append('</tr>');
        }


    }

}

function GenerateViewData(id){
    //var AccessViewId = '#' + id;
    //var AccessViewId = '#' + id;
    var ControllerViewId = id;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var obj = JSON.parse(this.responseText);

            //GenerateTableDisplay(obj, id);
       }
    };
    xhttp.open("POST", CFG.url + ControllerViewId + "/index", true);
    xhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    xhttp.send();

    GenerateViewTab(id);
    //add tab
}

/*
   <ul id="list-tabs" class="nav nav-tabs" role="tablist">
        <li class="nav-item nav-link">
            <a href="#contact_01" data-toggle="tab">Joe Smith </a>
            <span class="close" aria-hidden="true">&times;</span>
        </li>
        <li class="nav-item nav-link">
            <a  href="#contact_02" data-toggle="tab">Molly Lewis</a>
            <span class="close" aria-hidden="true">&times;</span>
        </li>
        <li class="nav-item nav-link">
            <a class="" href="#" class="add-contact">+ Add Contact</a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="contact_01">Contact Form: Joe Smith</div>
        <div class="tab-pane" id="contact_02">Contact Form: Molly Lewis</div>
    </div>
*/

function GenerateViewTab(id){
    var tab_id = "\"tab-" + id + "\"";
    var tab_link_id = "\"tab-link-" + id + "\"";

    var tab_link = '';

    tab_links = '<li id=\"' + tab_link_id + '\" class=\"nav-item nav-link\">';
    tab_links += '<a href=\"#' + tab_id + '\" data-toggle=\"tab\">' + id + '</a>';
    tab_links += "<span class=\"close\" aria-hidden=\"true\">&times;</span>";

    var tab_panes = "<div  id=\"" + tab_id + "\" class=\"tab-pane\"> This is : " + id + "</div>";
    $(".tab-content").append(tab_panes);
}


$(document).ready(function() {


     $.ajaxSetup({data: {token: CFG.token}});
        $(document).ajaxSuccess(function(e,x) {
            var result = $.parseJSON(x.responseText);
            $('input:hidden[name="token"]').val(result.token);
            $.ajaxSetup({data: {token: result.token}});
        });


    $(".nav-tabs").on("click", "a", function(e){
          e.preventDefault();
          $(this).tab('show');
        })

        .on("click", "span", function () {
            var anchor = $(this).siblings('a');
            $(anchor.attr('href')).remove();
            $(this).parent().remove();
            $(".nav-tabs li").children('a').first().click();
        });

        $('.add-contact').click(function(e) {
            e.preventDefault();
            var id = $(".nav-tabs").children().length; //think about it ;)
            $(this).closest('li').before('<li><a href="#contact_'+id+'">New Tab</a><span>x</span></li>');         
            $('.tab-content').append('<div class="tab-pane" id="contact_'+id+'">Contact Form: New Contact '+id+'</div>');
    });


});





