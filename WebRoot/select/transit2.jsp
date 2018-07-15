<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
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
	
<style type="text/css">
table {
	border: 2px #CCCCCC solid;
	width: 360px;
}

td,th {
	height: 30px;
	border: #CCCCCC 1px solid;
}
</style>
</head>
<body>
<%

String Name = (String)session.getAttribute("UserName");
String strTemp = Name + "个人信息";
String action=request.getParameter("action");
String time=request.getParameter("time");
String site=request.getParameter("site");
String teacher=request.getParameter("teacher");
 byte[] bytes =action.getBytes("iso8859-1");
action = new String(bytes, "utf-8");
  byte[] bytes1 =site.getBytes("iso8859-1");
 site = new String(bytes1, "utf-8");
   byte[] bytes2 =teacher.getBytes("iso8859-1");
 teacher = new String(bytes2, "utf-8");
%>
<%=strTemp%>

	<form action="../submita.jsp" method="post">
	<table align="center" border="2px" >
	

	 <tr>
    <td>报名活动：</td><td>
    <input type="text" name="action" value="<%=action%>">
    </td></tr>
     <tr>
    <td>活动时间：</td><td>
    <input type="text" name="time" value="<%=time%>">
    </td></tr>
     <tr>
    <td>活动地点：</td><td>
    <input type="text" name="site" value="<%=site%>">
    </td></tr>
     <tr>
    <td>带队老师：</td><td>
    <input type="text" name="teacher" value="<%=teacher%>">
    </td></tr>
    <tr>
    <td>报名者：</td><td>
    <input type="text" name="name">
    </td></tr>
     <tr>
    <td>学号：</td><td>
    <input type="text" name="xh">
    </td></tr>
   <br><br>
    <input type="submit" name="确认">			
	</table>
	</form>

</body>
</html>
