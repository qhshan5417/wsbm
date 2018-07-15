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
<style type="text/css">
input {
	font-size: 10px;
	font-family: "楷体";
	color: #F00;
}

table {
	border: 2px #CCCCCC solid;
	width: 360px;
}

td, th {
	height: 30px;
	border: #CCCCCC 1px solid;
}
</style>
</head>
<body>
	<%
		String Name = (String) session.getAttribute("UserName");
		String strTemp = Name + "可选择";
	%>
	<form action="submit.jsp" method="post">
	<% request.setCharacterEncoding("utf-8"); %>
		<%
		    String ks="考试";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
			Statement statement = conn.createStatement();
			String sql = "select*from action_info where type='"+ks+"'";
			ResultSet rs = statement.executeQuery(sql);
		%>
		<br> <br>
		<table align="center" width="100%" border="1" style = "width:700px;">
			<tr>
				<th width="20%">
					<%
						out.print("可报名考试");
					%>
				</th>
				<th width="10%">
					<%
						out.print("报名费用");
					%>
				</th>
				<th width="30%">
					<%
						out.print("考试时间");
					%>
				</th>
				<th width="30%">
					<%
						out.print("考试地点");
					%>
				</th>
			</tr>

			<%
				while (rs.next()) {
			%>
			<tr>
				<td>
					<%
						out.print(rs.getString("action"));
					%> 
				</td>
				<td>
					<%
						out.print(rs.getString("money"));
					%> 
				</td>
				<td>
					<%
						out.print(rs.getString("time"));
					%> 
				</td>
				<td>
					<%
						out.print(rs.getString("site"));
					%> 
				</td>
				<td>
					<a  href="submit.jsp?action=<%=rs.getString("action")%>&money=<%=rs.getString("money")%>"> 报名</a>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
</body>
</html>


</body>
</html>
