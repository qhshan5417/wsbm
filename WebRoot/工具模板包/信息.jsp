<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<html>  
<head>  
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 360px;  
}  
   
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style>  
</head>  
<body> 
<%
String username = (String)session.getAttribute("UserName");
String strTemp = username + "欢迎你！登陆成功！";
%>
<%=strTemp%> 
    <%  
       
        String driverName = "com.mysql.jdbc.Driver"; 
        String userName = "root";  
        String userPasswd = "1234";  
        String dbName = "school"; 
        String tableName = "userinfo"; 
        String url = "jdbc:mysql://localhost/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName;  
        ResultSet rs = statement.executeQuery(sql);  
    %>  
   
    <table align="center">  
        <tr>  
            <th>  
                <%  
                    out.print("zz");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("yy");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("xx");  
                %>  
            </th>  
       
        </tr>  
   
        <%  
            while (rs.next()) {  
        %>  
        <tr>  
            <td>  
                <%  
                    out.print(rs.getString(1));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(2));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
      
        </tr>  
        <%  
            }  
        %>  
    </table>  
    <%  
        rs.close();  
        statement.close();  
        connection.close();  
    %>  
</body>  
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
</span></span>
