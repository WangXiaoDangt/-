<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- 重置文件 -->
  <link rel="stylesheet" href="../css/loginnormalize.css">
  <link rel="stylesheet" href="../css/loginstyle.css">
  <title>河北省科技创新平台年报系统登录</title>
</head>
<body><img width="100%" height=100% src="../images/background.jpg" style="position:absolute; left:0; top:0; z-index:-1;"/>
<form action="<%=request.getContextPath() %>/LoginServlet" method="post">
  <div class="log_div">
    <p>登录</p>
    <ul class="log_ul">
    <li>
          <span>用户名：</span>
          <input type="type" name="username"  class="log_username">
          <span class="tip username_hint"></span>
    </li>
    <li>
          <span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
          <input type="password" name="password" class="log_password">
          <span class="tip password_hint"></span>
     </li>  
      <li>
        <button type="submit" name="button" class="log_button">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <button type="button" name="button" onclick="window.location.href='register.jsp';">注册</button>
      </li>
    </ul>
  </div>
  </form>
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/script.js"></script>
  <script> 
//取出传回来的参数error并与yes比较
  var errori ='<%=request.getParameter("error")%>';
  if(errori=='yes'){
   alert("登录失败!");
  }
</script>
</body>
</html>
