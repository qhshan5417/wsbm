<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<%@ page import="DB.DBConnection"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录验证</title>
</head>
<body>
 
<%
 String id=request.getParameter("id");
 String password=request.getParameter("password");
%>
 
<%
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
   Statement stmt=conn.createStatement();
   String queryNumberSQL="SELECT*from admin where id='"+id+"' and password='"+password+"'";
   ResultSet rs=stmt.executeQuery(queryNumberSQL);
   boolean flag=false;
   if(rs.next()){
     flag=true;
     session.setAttribute("ID", id);
   }else{
     flag=false;
  }
%>
<%
 if(flag){
%>
<jsp:forward page="cs5.jsp"></jsp:forward>
<%
 }else{
 
%>
<jsp:forward page="cw.jsp"></jsp:forward>
<%
 }
%>
 
 
 
</body>
</html>

