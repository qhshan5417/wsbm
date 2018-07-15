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
   <form action="cs/cs7.jsp" method="post">
   <center>
<table>
    <tr>
    <td>活动名称：</td>
    <td><input type="text" name="action">
    </td></tr>
    <tr>
    <td>活动时间：</td>
    <td><input type="datetime-local" name="time">
    <tr>
    <td>活动人数：</td>
    <td><input type="text" name="number">
    </td></tr>
    <tr>
    <td>集合地点：</td>
    <td><input type="text" name="place">
    </td></tr>
    <tr>
    <td>带队老师：</td>
    <td><input type="text" name="teacher">
    </td></tr>
</table>
    <br><br>
    <input type="submit" name="确认"></center>
 </form>
  </body>
</html>
