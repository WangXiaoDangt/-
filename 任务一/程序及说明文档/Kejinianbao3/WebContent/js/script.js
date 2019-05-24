//
var platformname_Boolean = false;
var platformnum_Boolean = false;
var supportinstitution_Boolean = false;
var approvaltime_Boolean = false;
var approvalnum_Boolean = false;
var technicalfield_Boolean = false;
var password_Boolean = false;
var password1_Boolean = false;
var password2_Boolean = false;
var logpassword_Boolean = false;
var confirm_Boolean=false;
var confirm1_Boolean=false;
var confirm2_Boolean=false;
var logconfirm_Boolean=false; 
var regusername_Boolean = false; 
var logusername_Boolean = false; 

/**********************************填报人员注册*********************************************/
//注册用户名
//1-6位的汉字、英文、数字、下划线
$('.reg_username').blur(function(){
	  if ((/^[\u4e00-\u9fa5\w]{1,20}$/).test($(".reg_username").val())){
	    $('.username_hint').html("✔").css("color","green");
	    regusername_Boolean = true;
	  }else {
	    $('.userame_hint').html("×").css("color","red");
	    regusername_Boolean = false;
	  }
	});



//平台名称 
//1-6位的汉字、英文、数字、下划线
$('.reg_platformname').blur(function(){
	  if ((/^[\u4e00-\u9fa5\w]{1,20}$/).test($(".reg_platformname").val())){
	    $('.platformname_hint').html("✔").css("color","green");
	    platformname_Boolean = true;
	  }else {
	    $('.platformname_hint').html("×").css("color","red");
	    platformname_Boolean = false;
	  }
	});

//平台编号
//8位数字
$('.reg_platformnum').blur(function(){
	  if ((/^\d{8}$/).test($(".reg_platformnum").val())){
	    $('.platformnum_hint').html("✔").css("color","green");
	    platformnum_Boolean = true;
	  }else {
	    $('.platformnum_hint').html("×").css("color","red");
	    platformnum_Boolean = false;
	  }
	});


//依托单位
//中英文，数字，下划线
$('.reg_supportinstitution').blur(function(){
	  if ((/^[\u4E00-\u9FA5A-Za-z0-9_]+$/).test($(".reg_supportinstitution").val())){
	    $('.supportinstitution_hint').html("✔").css("color","green");
	    supportinstitution_Boolean = true;
	  }else {
	    $('.supportinstitution_hint').html("×").css("color","red");
	    supportinstitution_Boolean = false;
	  }
	});

//批准年月
//日期类型为YYYY-MM-DD格式的类型   
$('.reg_approvaltime').blur(function(){
	  if ((/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/).test($(".reg_approvaltime").val())){
	    $('.approvaltime_hint').html("✔").css("color","green");
	    approvaltime_Boolean = true;
	  }else {
	    $('.approvaltime_hint').html("×").css("color","red");
	    approvaltime_Boolean = false;
	  }
});   
//批准文号
	//8位数字
	  $('.reg_approvalnum').blur(function(){
	  	  if ((/^\d{8}$/).test($(".reg_approvalnum").val())){
	  	    $('.approvalnum_hint').html("✔").css("color","green");
	  	  approvalnum_Boolean = true;
	  	  }else {
	  	    $('.approvalnum_hint').html("×").css("color","red");
	  	  approvalnum_Boolean = false;
	  	  }
	  	}); 
	  
//技术领域
//中英文，数字，下划线
	  $('.reg_technicalfield').blur(function(){
	  	  if ((/^[\u4E00-\u9FA5A-Za-z0-9_]+$/).test($(".reg_technicalfield").val())){
	  	    $('.technicalfield_hint').html("✔").css("color","green");
	  	  technicalfield_Boolean = true;
	  	  }else {
	  	    $('.technicalfield_hint').html("×").css("color","red");
	  	  technicalfield_Boolean = false;
	  	  }
	  	});
// password
//请输入1-6位的英文、数字、下划线、@、#、*
$('.reg_password').blur(function(){
  if ((/^[\w@#*]{1,6}$/).test($(".reg_password").val())){
    $('.password_hint').html("✔").css("color","green");
    password_Boolean = true;
  }else {
    $('.password_hint').html("×").css("color","red");
    password_Boolean = false;
  }
});


// password_confirm
$('.reg_confirm').blur(function(){
  if (($(".reg_password").val())==($(".reg_confirm").val())){
    $('.confirm_hint').html("✔").css("color","green");
    confirm_Boolean = true;
  }else {
    $('.confirm_hint').html("×").css("color","red");
   confirm_Boolean = false;
  }
});

//password
//请输入1-6位的英文、数字、下划线、@、#、*
$('.reg_password1').blur(function(){
if ((/^[\w@#*]{1,6}$/).test($(".reg_password1").val())){
  $('.password1_hint').html("✔").css("color","green");
  password1_Boolean = true;
}else {
  $('.password1_hint').html("×").css("color","red");
  password1_Boolean = false;
}
});


//password_confirm
$('.reg_confirm1').blur(function(){
if (($(".reg_password1").val())==($(".reg_confirm1").val())){
  $('.confirm1_hint').html("✔").css("color","green");
  confirm1_Boolean = true;
}else {
  $('.confirm1_hint').html("×").css("color","red");
  confirm1_Boolean = false;
}
});
//password2
//请输入1-6位的英文、数字、下划线、@、#、*
$('.reg_password2').blur(function(){
if ((/^[\w@#*]{1,6}$/).test($(".reg_password2").val())){
  $('.password2_hint').html("✔").css("color","green");
  password2_Boolean = true;
}else {
  $('.password2_hint').html("×").css("color","red");
  password2_Boolean = false;
}
});


//password_confirm2
$('.reg_confirm2').blur(function(){
if (($(".reg_password2").val())==($(".reg_confirm2").val())){
  $('.confirm2_hint').html("✔").css("color","green");
  confirm2_Boolean = true;
}else {
  $('.confirm2_hint').html("×").css("color","red");
  confirm2_Boolean = false;
}
});


// 注册click
$('.reg_button').click(function(){
  if((username_Boolean && password_Boolean && confirm_Boolean&& platformname_Boolean && platformnum_Boolean && supportinstitution_Boolean && approvaltime_Boolean && approvalnum_Boolean && technicalfield_Boolean == true)||((username_Boolean && password_Boolean && confirm_Boolean==true)||(!platformname_Boolean && !platformnum_Boolean && !supportinstitution_Boolean && !approvaltime_Boolean && !approvalnum_Boolean && !technicalfield_Boolean ))){
    alert("注册成功");
  }else {
    alert("请完善信息");
  }

});

/******************************************************登录************************************************************/
//登录用户名
//1-6位的汉字、英文、数字、下划线
$('.log_username').blur(function(){
	  if ((/^[\u4e00-\u9fa5\w]{1,20}$/).test($(".log_username").val())){
	    $('.username_hint').html("✔").css("color","green");
	    logusername_Boolean = true;
	  }else {
	    $('.userame_hint').html("×").css("color","red");
	    logusername_Boolean = false;
	  }
	});


//登录password
//请输入1-6位的英文、数字、下划线、@、#、*
$('.log_password').blur(function(){
if ((/^[\w@#*]{1,6}$/).test($(".log_password").val())){
$('.password_hint').html("✔").css("color","green");
logpassword_Boolean = true;
}else {
$('.password_hint').html("×").css("color","red");
logpassword_Boolean = false;
}
});


//password_confirm
$('.log_confirm').blur(function(){
if (($(".reg_password").val())==($(".log_confirm").val())){
$('.confirm_hint').html("✔").css("color","green");
logconfirm_Boolean = true;
}else {
$('.confirm_hint').html("×").css("color","red");
logconfirm_Boolean = false;
}
});


//登录click
$('.log_button').click(function(){
  if(logusername_Boolean&& logpassword_Boolean == true){
    alert("登录成功");
  }else {
    alert("请完善信息");
  }

});


