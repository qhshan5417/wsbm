<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="DB.DBConnection"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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

</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String Name = (String)session.getAttribute("UserName");
String strTemp = Name + "个人信息";
String username=request.getParameter("username");
String name=request.getParameter("name");
String xh=request.getParameter("xh");
String sex=request.getParameter("sex");
String class1=request.getParameter("class");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String ID=request.getParameter("ID");
String place=request.getParameter("place");
 byte[] bytes =name.getBytes("iso8859-1");
 name = new String(bytes, "utf-8");
  byte[] bytes1 =class1.getBytes("iso8859-1");
 class1 = new String(bytes1, "utf-8");
  byte[] bytes2 =place.getBytes("iso8859-1");
 place = new String(bytes2, "utf-8");
  byte[] bytes3 =sex.getBytes("iso8859-1");
 sex = new String(bytes3, "utf-8");
out.print(name);
%>

<form action="userdeal.jsp" method="post">
<table align="center" border="2px">

    <tr>
    <td>用户名：</td><td>
    <input type="text" name="username" value="<%=username%>">
    </td></tr>
     <tr>
    <td>姓名：</td><td>
    <input type="text" name="name" value="<%=name%>">
    </td></tr>
    <tr>
    <td>性别：</td><td>
    <input type="text" name="sex" value="<%=sex%>">
    </td></tr>
     <tr>
    <td>学号：</td><td>
    <input type="text" name="xh" value="<%=xh%>">
    </td></tr>
    <tr>
    <td>班级：</td><td>
    <input type="text" name="class" value="<%=class1%>">
    </td></tr>
     <tr>
    <td>电话：</td><td>
    <input type="text" name="phone" value="<%=phone%>">
    </td></tr>
    <tr>
    <td>邮箱：</td><td>
    <input type="text" name="email" value="<%=email%>">
    </td></tr>
     <tr>
    <td>身份证号：</td><td>
    <input type="text" name="ID" value="<%=ID%>">
    </td></tr>
    <tr>
    <td>籍贯：</td><td>
    <input type="text" name="place" value="<%=place%>">
    </td></tr>
     <tr>
     <div style="position:absolute;top:50%;left:48%;">
     <input type="submit" name="保存"/>
     <input type="button" name="button" value="取消" onclick="javascrtpt: window.location.href = 'userinfo.jsp'"/>
     </div>
</table>
</form>
</body>
</html>