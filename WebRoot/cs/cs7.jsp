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
         String type="活动";
         String action=request.getParameter("action");
         String money=request.getParameter("money");
         String teacher=request.getParameter("teacher");
         String place=request.getParameter("place");
         String number=request.getParameter("number");
         String time=request.getParameter("time");

         out.print(action);
         
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="insert into action_info values('"+action+"',null,'"+time+"','"+number+"','"+place+"','"+type+"','"+teacher+"')";
         stmt.executeUpdate(sql);     
            out.println("活动添加成功。");
          
        }catch(SQLException e){
            out.println("活动已经添加。");        
        } 
    %>
  </body>
</html>