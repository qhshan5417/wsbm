<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>报名结果</title>
    
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
String strTemp = Name + "的成绩";
%>
    <% request.setCharacterEncoding("utf-8"); %>
	<%  
		 String name1=request.getParameter("name");
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String aName = (String)session.getAttribute("UserName"); 
		String sql = "select*from achievement where username='"+aName+"'";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" width="100%" border="1" width="95%">
		<tr>
		    <th width="30%">
				<%out.print("报名项目");%>
			</th>
			<th width="20%">
				<%out.print("姓名");%>
			</th>
			<th width="30%">
				<%out.print("成绩");%>
			</th>
		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
			<td>
				<%out.print(rs.getString("action"));%>
			</td>
			<td>
				<%out.print(rs.getString("name"));%>
			</td>
			<td>
            <%out.print(rs.getString("achievement"));%>
			</td>
		
		
		</tr>
		<%
			}
		%>
	</table>
	
	<%
		rs.close();
		statement.close();
		conn.close();
	%>
  </body>
</html>