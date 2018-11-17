//defining view forms.
var department_view =   {
    id:{
      caption: 'Id',
      width: 100,
      visible: false,
      format: 0,
      data_type: 'integer'
    },
    code:{
      caption: 'department_code_caption',
      width: 200,
      visible: false,
      format: 0,
      data_type: 'string'
    },
    name:{
      caption: 'department_name_captions',
      width: 400,
      visible: false,
      format: 0,
      data_type: 'string'
    }
  };

var position_view =   {
    id:{
      caption: 'position_code_Id',
      width: 100,
      visible: false,
      format: 0,
      data_type: 'integer'
    },
    code:{
      caption: 'position_code_caption',
      width: 200,
      visible: false,
      format: 0,
      data_type: 'string'
    },
    name:{
      caption: 'position_name_captions',
      width: 400,
      visible: false,
      format: 0,
      data_type: 'string'
    }
  };

  var team_view = {
    id:{
      caption: 'Team_Id',
      width: 100,
      visible: false,
      format: 0,
      data_type: 'integer'
    },
    code:{
      caption: 'Team_code_caption',
      width: 200,
      visible: false,
      format: 0,
      data_type: 'string'
    },
    name:{
      caption: 'Team_name_captions',
      width: 400,
      visible: false,
      format: 0,
      data_type: 'string'
    }
  };

var view_forms = {department_view, position_view, team_view}










function test() {

    alert('test');
}

function test2(a) {
  alert(a);
}