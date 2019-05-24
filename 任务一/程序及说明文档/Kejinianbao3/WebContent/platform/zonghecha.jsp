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
                <li id="active"><a href="UpdateTeacher.jsp">综合查询</a></li>
                <li><a href="Teacher.jsp">用户信息</a></li>
                <li><a href="login.jsp">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>基本信息填报</span>
            </div>
<div align="center">
<div  style="background-color:#ececec;width:100%;height:250px;border: 1px solid ;">
		<span style="font-size:50px;color:red">综合查询</span>
		<form action="<%=request.getContextPath() %>/ChaXunServlet"  method="post">
		<div>
				<a href="#" onclick="blockDiv()"><img src="../images/加.jpg" width="20px" height="20px"></a>
				<a href="#" onclick="noneDiv()"><img src="../images/减.jpg" width="20px" height="20px"></a>
				<select name="sname">
								<option value ="platformname" >平台名称</option>
								<option value ="platformnum">平台编号</option>
								<option value="approvalnum">批准文号</option>
								<option value="technicalfield">技术领域</option>
								<option value="platformlevel">平台级别</option>
				</select>
				<input type="text" name="neirong">
				<select name="cx">
								<option value ="like" >模糊</option>
								<option value ="=">精确</option>
				</select>
		
		</div>
		<table>
				<tr>
					<td>
						<div id="hiddenDiv1" style="display:none;">
							<select name="tiaojian1">
								<option value ="and">并且</option>
								<option value ="or">或者</option>
								<option value="not">不含</option>
							</select>
							<select name="sname1">
								<option value ="platformname" >平台名称</option>
								<option value ="platformnum" >平台编号</option>
								<option value="approvalnum">批准文号</option>
								<option value="technicalfield">技术领域</option>
								<option value="platformlevel">平台级别</option>
							</select>
		<!-- 					<input  placeholder="" type="text" / > -->
							<input type="text" name="neirong1">
							<select name="cx1">
								<option value ="like" >模糊</option>
								<option value ="=">精确</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="hiddenDiv2" style="display:none;">
							<select name="tiaojian2">
								<option value ="and">并且</option>
								<option value ="or">或者</option>
								<option value="not">不含</option>
							</select>
							<select name="sname2">
								<option value ="platformname" >平台名称</option>
								<option value ="platformnum" >平台编号</option>
								<option value="approvalnum" >批准文号</option>
								<option value="technicalfield">技术领域</option>
								<option value="platformlevel">平台级别</option>
							</select>
		<!-- 					<input  placeholder="" type="text" / > -->
							<input type="text" name="neirong2">
							<select name="cx2">
								<option value ="like" >模糊</option>
								<option value ="=">精确</option>
							</select>
							
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="hiddenDiv3" style="display:none;">
							<select name="tiaojian3">
								<option value ="and">并且</option>
								<option value ="or">或者</option>
								<option value="not">不含</option>
							</select>
							<select name="sname3">
								<option value ="platformname" >平台名称</option>
								<option value ="platformnum">平台编号</option>
								<option value="approvalnum">批准文号</option>
								<option value="technicalfield" >技术领域</option>
								<option value="platformlevel">平台级别</option>
							</select>
		<!-- 					<input  placeholder="" type="text" / > -->
							<input type="text" name="neirong3">
							<select name="cx3">
								<option value ="like" >模糊</option>
								<option value ="=">精确</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div id="hiddenDiv4" style="display:none;">
							<select name="tiaojian4">
								<option value ="and">并且</option>
								<option value ="or">或者</option>
								<option value="not">不含</option>
							</select>
							<select name="sname4">
								<option value ="platformname" >平台名称</option>
								<option value ="platformnum" >平台编号</option>
								<option value="approvalnum">批准文号</option>
								<option value="technicalfield">技术领域</option>
								<option value="platformlevel" >平台级别</option>
							</select>
		<!-- 					<input  placeholder="" type="text" / > -->
							<input type="text" name="neirong4">
							<select name="cx4">
								<option value ="like" >模糊</option>
								<option value ="=">精确</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td align="center">
							<!-- <a target="bottom" type="submit" onclick="document.getElementById('subform').submit();return false" href="#">查询</a>-->
							   <center> <input style="text-align:center;width:100px;"type="submit" name="chaxun" value="查询"/>
                                  <input type="reset" style="text-align:center;width:100px;" value="重置"></center>
						</td>
					</tr>
		</table>
		</form>
	</div>
</div>
</div>
<script type="text/javascript">
               function blockDiv(){
               var idj = 'hiddenDiv';
               	id=idj+1;
               		div=document.getElementById("hiddenDiv1").style.display;
               for(var i=1;i<=5;i++){
            	   		if(div=='none'){
            	   			document.getElementById(id).style.display='block';
            	   			
            	   			
            	   		}else{
            	   			id=idj+i;
            	   			if(id=='hiddenDiv5'){
            	   				alert('到达上限');
            	   			}
            	   			div=document.getElementById(id).style.display;
            	   		}
            	   
            	   }
               }
               function noneDiv(){
                   var idj = 'hiddenDiv';
                   	id=idj+4;
                   		div=document.getElementById("hiddenDiv4").style.display;
                   for(var i=4;i>=0;i--){
                	   		if(div=='block'){
                	   			document.getElementById(id).style.display='none';
                	   			
                	   		}else{
                	   			id=idj+i;
                	   			div=document.getElementById(id).style.display;
                	   		}
                	   
                	   }
                   }
               
             </script>
</body>
</html>