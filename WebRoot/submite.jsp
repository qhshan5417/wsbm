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
    <meta http-equiv="refresh" content="1;URL=userexam.jsp">
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
Random a = new Random();  
int B;
B=a.nextInt(100000000);
%>
   <%
    request.setCharacterEncoding("utf-8"); 
     try{
         String T="报名中";
         String teacher="无";
         String Tname = (String)session.getAttribute("UserName");
         String name=request.getParameter("name");
         String action=request.getParameter("action");
         String Tsite=request.getParameter("site");
         String Txh=request.getParameter("xh");
         String Ttime=request.getParameter("time");
         String Tmoney=request.getParameter("money");
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="insert into submit values('"+Tname+"','"+action+"','"+T+"','"+B+"','"+Tmoney+"','"+Ttime+"','"+Tsite+"','"+name+"','"+Txh+"',null,null,null,'"+teacher+"')";
         stmt.executeUpdate(sql);     
            out.println("报名已提交，请耐心等代审核。");
          
        }catch(SQLException e){
            out.println("报名已提交，请勿多次报名");        
        } 
    %>

  </body>
</html>