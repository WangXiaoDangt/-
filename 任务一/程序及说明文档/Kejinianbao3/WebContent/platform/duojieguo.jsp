<%@page import="Model.User" %>
<%@page import="Model.Platform" %>
<%@page import="Bean.UserDao" %>
<%@page import="Bean.PlatformDao" %>
<%@page import="java.util.List"%>
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
            <p><span style="color: #fff21b"> &nbsp;&nbsp;</span> , 欢迎你！</p>
            <a href="../user/login.jsp">退出</a>
        </div>
    </header>
    <section class="publicTime">
       
    </section>
<!--主体内容-->
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                    <li ><a href="jibenxinxi.jsp">基本信息填报</a></li>
                <li><a href="TeacherResult.jsp">分类浏览</a></li>
                <li ><a href="zonghecha.jsp">综合查询</a></li>
                <li id="active"><a href="duojieguo.jsp">用户信息</a></li>
                <li><a href="../user/login.jsp">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span></span>
            </div>
            
<%

      PlatformDao platformDao=new PlatformDao();
		List<Platform> platforms=(List)session.getAttribute("platforms");
		if(platforms!=null){
%>
	
<table class="providerTable" cellpadding="0" cellspacing="0">
		
			<tr>
				<th>平台名称</th>
				<th>平台编号</th>
				<th>批准文号</th>
				<th>技术领域</th>
				<th>状态</th>
				<th>修改</th>
			</tr>
	
		<tbody>
		<%
		
				for(Platform platform : platforms){
					
				
 		%>
		<tr>
			<td><%=platform.getPlatformname() %></td>
			<td><%=platform.getPlatformnum() %></td>
			<td><%=platform.getApprovaltime() %></td>
			<td><%=platform.getApprovalnum() %></td>
			<td><%=platform.getTechnicalfield() %></td>
		
				<td><span style="color:red">暂时保存</span></td>
				<td>修改或查看</td>
			<%
 				}
			%>
			
		</tr>
<%
 			}
		
%>


		</tbody>
	</table>
 </section>
</body>
</html>