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
            Class.forName("com.mysql.jdbc.Driver");     
            out.println("加载驱动类成功");
            conn=DriverManager.getConnection(url,user,password);        
            out.println("连接MySQL成功");
        } catch (ClassNotFoundException e) {
            out.println("找不到驱动类");      
        }catch(SQLException e){
            out.println("连接MySQL失败");       
        }

        try{
         Statement stmt=conn.createStatement();
            String addUser="insert into user(username,password)values('q5hs','123456')";
            stmt.executeUpdate(addUser);
            out.println("添加用户信息成功");
        }catch(SQLException e){
            out.println("添加用户信息成功");
        }

    %>
</body>
</html>
