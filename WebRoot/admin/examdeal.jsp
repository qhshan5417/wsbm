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
    <meta http-equiv="refresh" content="1;URL=admin/exam.jsp">
    <meta http-equiv= "Content-Type " content= "text/html; charset=utf-8">
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
String username = (String)session.getAttribute("UserName");
String strTemp = username + "欢迎你！登陆成功！";
%>
   <%
    request.setCharacterEncoding("utf-8"); 
     try{
         String type="考试";
         String number="1000";
         String action=request.getParameter("action");
         String site=request.getParameter("place");
         String money=request.getParameter("money");
         String time=request.getParameter("time");
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="insert into action_info values('"+action+"','"+money+"','"+time+"','"+number+"','"+site+"','"+type+"',null)";
         stmt.executeUpdate(sql);     
            out.println("考试添加成功。");
        }catch(SQLException e){
            out.println("考试已经添加。");        
        } 
    %>
  </body>
</html>