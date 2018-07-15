<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<html>
<head>
<title>exam报名</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</style>
</head>
<body>
	<%
		String Name = (String) session.getAttribute("UserName");
		String strTemp = Name + "可选择";
	%>

	<form action="../select/transit.jsp" method="post">
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
		<table align="center" width="100%" border="1" width="95%">
			<tr>
				<th width="20%">
					<%
						out.print("可报名考试");
					%>
				</th>
				<th width="20%">
					<%
						out.print("考试时间");
					%>
				</th>
					<th width="20%">
					<%
						out.print("报名费用");
					%>
				</th>
				<th width="20%">
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
						out.print(rs.getString("time"));
					%> 
				</td>
				<td>
					<%
						out.print(rs.getString("money"));
					%> 
				</td>
				<td>
					<%
						out.print(rs.getString("site"));
					%> 
				</td>
				<td>
					<a  href="../select/transit.jsp?action=<%=rs.getString("action")%>&money=<%=rs.getString("money")%>&site=<%=rs.getString("site")%>&time=<%=rs.getString("time")%>"> 报名</a>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</form>

</body>
</html>