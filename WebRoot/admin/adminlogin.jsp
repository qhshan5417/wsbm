<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登陆e</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <style type="text/css"> 
    body {color:red}
    h1   {font-size:500%} 
    table,td,th
    </style>
    
<body style="background-image:url(image/login.jpg); background-size:cover">

 <h1 align="center">管理员登陆入口</h1><br>
 
<form action="admin/admincheck.jsp" method="post">
<table width="250" height = "150" border="0" align="center" valign="center">
  <tr>
  <th>用户名</th> 
  <td><input type="text" name = "id" /> </td>
  </tr>
  <tr>
  <th>密码 </th>
  <td><input type="password" name = "password"></td>
  </tr>
  <tr>
  <td colspan = "2" align = "center">
  <input type = "submit" value = "登录">
  </td>
  </tr>
</table>
</form>
  </body>
</html>
