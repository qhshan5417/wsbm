<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<html>
<head>
<title>action报名</title>

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
		String Name = (String) session.getAttribute("UserName");
		String strTemp = Name + "可选择";
	%>
	<% request.setCharacterEncoding("utf-8"); %>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
			Statement statement = conn.createStatement();
			String sql = "select*from notice";
			ResultSet rs = statement.executeQuery(sql);
		%>
		<br> <br>
		<table align="center" border="1"  style = "width:100%; width:100%;">

			<%
				while (rs.next()) {
			%>
			
				<tr>
				    <td width="5%">
					<img src="../image/lb2.png" hight="30px" width="30px"/>
					</td>
					<td width="70%">
					<%
						out.print(rs.getString("notice"));
					%> 
					<br>
					<%
						out.print(rs.getString("time"));
					%> 
				   </td>
				</tr>
			<% } %>
		</table>


</body>
</html>