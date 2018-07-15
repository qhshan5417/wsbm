<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
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

String Name = (String)session.getAttribute("UserName");
String strTemp = Name + "个人信息";
%>
	<% 
	    String B=request.getParameter("B");
	    String name1=request.getParameter("name");
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String aName = (String)session.getAttribute("UserName"); 
		String sql = "select*from submit where B='"+B+"'";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" border="2px" >
	  <%
			while (rs.next()) {
		%>
		<tr>
			<th>
				<%
					out.print("姓名：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("name"));
				%>
			</td>
			</tr>
		    <tr>
			<th>
				<%
					out.print("学号：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("xh"));
				%>
			</td>
			</tr>
			<tr>
			<th>
				<%
					out.print("考试时间：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("time"));
				%>
			</td>
			</tr>
			<tr>
			<th>
				<%
					out.print("考试地点：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("site"));
				%>
			</td>
			</tr>
			<tr>
			<th>
				<%
					out.print("考场号：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("s"));
					out.print("考场");
					out.print(rs.getString("h"));
					out.print("号");	
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
		conn.close();
	%>
</body>
</html>

