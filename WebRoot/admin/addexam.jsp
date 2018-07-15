<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cs6.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form action="admin/examdeal.jsp" method="post">
   <center>
<table>
    <tr>
    <td>考试名称：</td>
    <td><input type="text" name="action">
    </td></tr>
    <td>考试时间：</td>
    <td><input type="datetime-local" name="time">
    </td></tr>
    <tr>
    <td>报名费用：</td>
    <td><input type="text" name="money">
    </td></tr>
    <tr>
    <td>考试地点：</td>
    <td><input type="text" name="place">
    </td></tr>
</table>
    <br><br>
    <input type="submit" name="确认"></center>
 </form>
  </body>
</html>