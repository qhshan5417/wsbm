<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<%@ page import="DB.DBConnection"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录验证</title>
</head>
<body>
 
<%
 String name=request.getParameter("username");
 String password=request.getParameter("password");
%>
 
<% 
   DBConnection dbconn=new DBConnection();
   Connection conn=dbconn.getConnection();
   Statement stmt=conn.createStatement();
   String SQL="SELECT*from user where username='"+name+"' and password='"+password+"'";
   ResultSet rs=stmt.executeQuery(SQL);
   boolean flag=false;
   if(rs.next()){
     flag=true;
     session.setAttribute("UserName", name);
     session.setAttribute("name", name);
   }else{
     flag=false;
  }
%>
<%
 if(flag){
%>
<jsp:forward page="welcome.jsp"></jsp:forward>
<%
 }else{
 
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
 }
%>
 
 
 
</body>
</html>
