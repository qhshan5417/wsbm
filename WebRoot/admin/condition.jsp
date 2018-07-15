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
  request.setCharacterEncoding("utf-8");
  String condition1=request.getParameter("condition");
  out.print(condition1);
  %>
	<% 
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String sql = "select * from user where CONCAT(name,class,phone,sex,xh,ID,place) like '%"+condition1+"%'";
		ResultSet rs = statement.executeQuery(sql);
		
	%>
	<br>
	<br>
	<table align="center" width="100%" border="1" style = "width: 1000px;">
	 	<tr>
			<th width="8%">
				<%
					out.print("用户名");
				%>
			</th>
			<th width="8%">
				<%
					out.print("姓名");
				%>
			</th>
			<th width="10%">
				<%
					out.print("班级");
				%>
			</th>
			<th width="10%">
				<%
					out.print("学号");
				%>
			</th>
			
			<th width="5%">
				<% 
					out.print("性别");
				%>
			</th>
			<th width="8%">
				<%
					out.print("电话");
				%>
			</th>
			<th width="15%">
				<%
					out.print("email");
				%>
			</th>
			<th width="15%">
				<%
					out.print("身份证号");
				%>
			</th>
			<th width="15%">
				<%
					out.print("籍贯");
				%>
			</th>
			
		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
			<td>
				<%
					out.print(rs.getString("username"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("name"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("class"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("xh"));
				%>
			</td>
			<td >
				<%
					out.print(rs.getString("sex"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("phone"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("email"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("ID"));
				%>
			</td>
			<td>
				<%
					out.print(rs.getString("place"));
				%>
			</td>
		</tr>		<%
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
