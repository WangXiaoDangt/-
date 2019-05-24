
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- 重置文件 -->
  <link rel="stylesheet" href="../css/normalize.css">
  <link rel="stylesheet" href="../css/style1.css">
  <title>河北省科技创新平台年报系统注册</title>
</head>
<body><img width="100%" height=100% src="../images/background.jpg" style="position:absolute; left:0; top:0; z-index:-1;"/>
<form action="<%=request.getContextPath() %>/RegisterServlet" method="post">
<div class="reg_topdiv" id="top"style ="display:block;">
  <p>注册</p>
    <h2> 
       <input type="radio" id="btn1" name="leixing" value="0" checked>填报人员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="radio" id="btn2" name="leixing" value="1">审核人员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="radio" id="btn3" name="leixing" value="2">管理员
    </h2>
   <ul class="reg_ul">
      <li>
          <span>用户名：</span>
          <input type="text" name="username"  placeholder="1-6位汉字、英文、数字、下划线" class="reg_username">
          <span class="tip username_hint"></span>
      </li>
      
     <li>
          <span>密码：</span>
          <input type="password" name="password"  placeholder="1-6的英文、数字、下划线、@、#、*" class="reg_password">
          <span class="tip password_hint"></span>
      </li>
      <li>
          <span>确认密码：</span>
          <input type="password" name="confirmpassword"  placeholder="确认密码" class="reg_confirm">
          <span class="tip confirm_hint"></span>
      </li>
</div>
<div class="reg_middlediv" id="middle"style ="display:block;">
 <ul class="reg_ul">
      <li>
          <span>平台类型：</span>
          <select name="platformtype">
          <option >请选择</option>
          <option  value="重点实验室">重点实验室</option>
          <option  value="工程技术研究中心">工程技术研究中心</option>
          <option  value="产业技术研究院">产业技术研究院</option>
          </select>
      </li>
      <li>
          <span>平台名称：</span>
          <input type="text" name="platformname"  placeholder="1-6位汉字、英文、数字、下划线" class="reg_platformname">
          <span class="tip platformname_hint"></span>
      </li>
      <li>
          <span>平台编号：</span>
          <input type="text" name="platformnum"  placeholder="8位数字" class="reg_platformnum">
          <span class="tip platformnum_hint"></span>
      </li>
      <li>
          <span>依托单位：</span>
          <input type="text" name="supportinstitution"  placeholder="中英文，数字，下划线 "class="reg_supportinstitution">
          <span class="tip supportinstitution_hint"></span>
      </li>
       <li>
          <span>批准年月：</span>
          <input type="text" name="approvaltime"  placeholder="YYYY-MM-DD" class="reg_approvaltime">
          <span class="tip approvaltime_hint"></span>
      </li>
      <li>
          <span>批准文号：</span>
          <input type="text" name="approvalnum"  placeholder="8位数字" class="reg_approvalnum">
          <span class="tip approvalnum_hint"></span>
      </li>
      <li>
          <span>技术领域：</span>
          <input type="text" name="technicalfield"  placeholder="中英文，数字，下划线" class="reg_technicalfield">
          <span class="tip technicalfield_hint"></span>
      </li>
</div>
<div class="reg_bottomdiv" id="bottom"style ="display:block;">   
<ul class="reg_ul">       
      <li>
        <button  type="submit" name="button" class="reg_button">注册</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <button type="button" name="button" >返回</button>
      </li>
    </ul>
  </div>
  </form> 
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/script.js"></script>
  <script>
       var oBtn1 = document.getElementById('btn1');
       var oBtn2 = document.getElementById('btn2');
       var oBtn3 = document.getElementById('btn3');
       var top = document.getElementById('top');
       var middle = document.getElementById('middle');
       var bottom = document.getElementById('bottom');
        oBtn1.onclick = function(){
            	top.style.display = 'block';
            	middle.style.display = 'block';
            	bottom.style.display = 'block';

           
        };
        oBtn2.onclick = function(){
            
            	top.style.display = 'block';
            	middle.style.display = 'none';
            	bottom.style.display = 'block';
           
            	
        };
        oBtn3.onclick = function(){
           
            	top.style.display = 'block';
            	middle.style.display = 'none';
            	bottom.style.display = 'block';
           
            
           
        };
     </script>
       <script> 
//取出传回来的参数error并与yes比较
  var errori ='<%=request.getParameter("registererror")%>';
  if(errori=='yes'){
   alert("注册失败!");
  }
</script>
</body>
</html>
