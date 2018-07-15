<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆界面</title>
</head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="./js/jquery-3.3.1.js"></script>  
<style type="text/css"> 
    body {color:red}
    h1   {font-size:500%} 
    table,td,th
    </style>
    
<body style="background-image:url(image/2.png); background-size:cover">

 <h1 align="center">宁夏理工学院网上报名平台登录</h1><br>
 
<form action="login_check.jsp" method="post">
<table width="250" height = "150" border="0" align="center" valign="center">
  <tr>
  <th>用户名</th> 
  <td><input type="text" name = "username" /> </td>
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

</body>
</html>
 <script>
 function a(){
 	if( $("#name").val() =="")
 		alert("密码为空");

 }
 	
 </script>
