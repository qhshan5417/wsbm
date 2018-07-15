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
    
    <title>My JSP 'register_check.jsp' starting page</title>
    
    <meta http-equiv="refresh" content="1;URL=userinfo.jsp">
    
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
String Name = (String)session.getAttribute("UserName");
String username=request.getParameter("username");
String name=request.getParameter("name");
String sex=request.getParameter("sex");
String xh1=request.getParameter("xh");
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
%>
    <%    
    try{
    
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="update user set username='"+username+"',name='"+name+"',sex='"+sex+"',xh='"+xh1+"',class='"+class1+"',phone='"+phone+"',email='"+email+"',ID='"+ID+"',place='"+place+"' where username ='"+Name+"'";
        /*  ,class=='"+class1+"',phone=='"+phone+"',email=='"+email+"',ID='"+ID+"',place=='"+place+"' */
         stmt.executeUpdate(sql);    
            out.println("修改用户信息成功");
        }catch(SQLException e){
            out.println("修改用户信息失败");        
        } 

    %>

  </body>
</html>