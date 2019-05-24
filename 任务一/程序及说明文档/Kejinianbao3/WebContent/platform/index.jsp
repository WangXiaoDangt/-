<%@page import="Model.User" %>
<%@page import="Bean.UserDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/public.css"/>
    <link rel="stylesheet" href="../css/style.css"/>
<title>河北省创新年报系统</title>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>河北省创新年报系统</h1>
    <div class="publicHeaderR">
        <a href="../user/login.jsp">退出</a>
    </div>
</header>

<!--主体内容-->
<section class="publicMian">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li ><a href="jibenxinxi.jsp">基本信息填报</a></li>
                <li><a href="StudentJieguo.jsp">分类浏览</a></li>
                <li><a href="zonghecha.jsp">综合查询</a></li>
               <li><a href="Student.jsp">用户信息</a></li>
                <li><a href="login.jsp">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <img class="wColck" src="../images/clock.jpg" alt=""/>
        <div class="wFont">
            
            <p>欢迎来到河北省创新年报系统!</p>
			<span id="hours"></span>
        </div>
    </div>
</section>

<script src="js/time.js"></script>
</body>
</html>