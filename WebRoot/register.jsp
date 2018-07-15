<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<html>  
  <head>  
  	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
    <title>注册页面</title>       
  </head>  
    
   <body style="background-image:url(image/login.jpg); background-size:cover">

  <br><br>
<form action="register_check.jsp" method="post">
   <center>
<table>
    <tr>
    <td>用户账号：</td><td>
    <input type="text" name="username">
    </td></tr>
    <tr>
    <td>密码：</td><td>
    <input type="password" name="password">
    </td>
     <tr>
    <td>学号：</td><td>
    <input type="text" name="xh">
    </td>
    </tr> 
</table>
    <br><br>
    <input type="submit" name="确认"><input type="reset" name="重置"></center>
 </form>
 
  </body>  
</html> 
