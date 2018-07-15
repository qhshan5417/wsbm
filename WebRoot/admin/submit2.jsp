<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>状态变化</title>
    
    <meta http-equiv="refresh" content="1;URL=admin/submit1.jsp">
    <meta http-equiv="refresh" content="3;URL=admin/submit1.jsp">
    <meta http-equiv= "Content-Type " content= "text/html; charset=gb2312 ">
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
  <% request.setCharacterEncoding("utf-8"); %>
    <% try{
         String T1="未交费";
         String TB=request.getParameter("B");
         out.print(TB);
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="update submit set T ='"+T1+"' where B='"+TB+"'";
         stmt.executeUpdate(sql);     
            out.println("已同意报名");
          
        }catch(SQLException e){
            out.println("再来一次");        
        } 
    %>

  </body>
</html>