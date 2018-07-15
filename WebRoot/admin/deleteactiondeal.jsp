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
    
    <title>添加新报名项目处理</title>
    
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
    <%    
    try{
         String uinfo=request.getParameter("info");
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="delete from action_info where action=('"+uinfo+"')";
         stmt.executeUpdate(sql);     //执行更新
            out.println("移除活动信息成功");
        }catch(SQLException e){
            out.println("移除活动信息失败");        //处理SQLException异常
        } 
    %>

  </body>
</html>