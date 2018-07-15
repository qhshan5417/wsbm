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
    <base href="<%=basePath%>">
    
    <title>My JSP 'register_check.jsp' starting page</title>
    <meta http-equiv="refresh" content="2;URL=login.jsp">
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
  String newuser=request.getParameter("username");
  String newpsd=request.getParameter("password");
  String newxh=request.getParameter("xh");
   %>
    <%    
    try{
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
           String sql="insert into user values('"+newuser+"','"+newpsd+"',null,null,null,null,null,null,null,'"+newxh+"')";
      
        int i=stmt.executeUpdate(sql);
     if(i==1)
     {
     out.println("注册成功！");
     }
     else
     {
     out.println("注册失败");
   
     }
     }catch(Exception ex)
     {
     out.println("注册失败！");
    
     }

    %>

  </body>
</html>