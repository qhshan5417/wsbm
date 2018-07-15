<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'select.jsp' starting page</title>
    
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
        String url="jdbc:mysql://localhost/school";
        String user="root";
        String password="1234";
        Connection conn=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");     //加载JDBC驱动
            out.println("加载驱动类成功");
            conn=DriverManager.getConnection(url,user,password);        //连接MySQL数据库
            out.println("连接MySQL成功");
        } catch (ClassNotFoundException e) {
            out.println("找不到驱动类");      //处理ClassNotFoundException异常
        }catch(SQLException e){
            out.println("连接MySQL失败");       //处理SQLException异常
        }
            
        try{
             Statement stmt=conn.createStatement();
            String selectUser="select*from userinfo where username='1111'";
            out.println("a");
            out.println("a");
          
            stmt.executeUpdate(selectUser);      
            out.println("查看用户信息成功");
        }catch(SQLException e){
            out.println("查看用户信息成功");        
        }


    %>
  </body>
</html>
