<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'first.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-image: url(image/4.png); background-size: cover; font-size: 36px; color: #00CCCC;">
   <div style = "position: absolute; left:15%; top: -2px; width: 1246px; height: 60;font-size: 60px ;text-align: center;">宁夏理工学院网上报名平台</div>
  <div style = "position:absolute;left:50;top:100;width:200;height:40;
 font-size: 40px;color:#5CACEE;">
 <input type="button" name="button" value="前往报名" style="width: 200px; height: 40px;" onclick="javascrtpt: window.location.href = 'login.jsp'">
 </div>
  <div style = "position:absolute;left:50;top:200;width:200;height:40;
  font-size: 40px;color:#5CACEE;">
  <input type="button" name="button" value="报名指南" style="width: 200px; height: 40px;">
  </div>
  <div style = "position:absolute;left:50;top:300;width:200;height:40;
  font-size: 40px;color:#5CACEE;">
  <input type="button" name="button" value="注意事项" style="width: 200px; height: 40px;">
  </div>
  <div style = "position:absolute;left:50;top:400;width:200;height:40;
  font-size: 40px;color:#5CACEE;">
  <input type="button" name="button" value="我校简介" style="width: 200px; height: 40px;" onclick="javascrtpt: window.location.href = 'http://www.nxist.com/views/font/content.form?moduleId=8ee34577-3ea2-11e7-bd98-00ac9c2c0afa'">
  </div>
  <div style = "position:absolute;left:50;top:500;width:200;height:40;
  font-size: 40px;color:#5CACEE;">
  <input type="button" name="button" value="宁夏理工官网" style="width: 200px; height: 40px;" onclick="javascrtpt: window.location.href = 'http://www.nxist.com/views/font/homepage.form'">
  </div>
  
  <div style = "position:absolute;left:300;top:70;width:800;height:600;">
<iframe id="rightContent" src="first/notice.jsp" width="100%" height="100%" frameborder="0">
   				</iframe>
</div>

  <div style = "position:absolute;right:50;top:350;width:300;height:450;
  font-size: 40px;color:#5CACEE;">
  <form action="login_check.jsp" method="post">
  <table width="250" height = "150" border="0" align="center" valign="center">
  <tr>
  <th>用户名</th> 
  <td><input id="name" type="text" name = "username" /> </td>
  </tr>
  <tr>
  <th>密码 </th>
  <td><input type="password" name = "password"></td>
  </tr>
  <tr>
  <td colspan = "2" align = "center">
  <input type = "submit" value = "登录" onclick="a()">
  <input type="button" name="button" value="注册" onclick="javascrtpt: window.location.href = 'register.jsp'">
  </td>
  </tr>
</table>
</form>
 <script>
 function a(){
 	if( $("#name").val() =="")
 		alert("密码为空");

 }
 	
 </script>
  </div>
</body>
</html>

