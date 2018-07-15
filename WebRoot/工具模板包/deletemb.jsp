<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>

<title>向数据库添加信息</title>

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
            String deletUser="delete from user where username='asd'";
            stmt.executeUpdate(deletUser);      //执行删除
            out.println("删除用户信息成功");
        }catch(SQLException e){
            out.println("删除用户信息失败");        //处理SQLException异常
        }


    %>
</body>
</html>