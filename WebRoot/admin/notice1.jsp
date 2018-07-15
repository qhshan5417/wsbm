<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<html>
<head>

</head>
<body>

	<%  
	    String type="活动";
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String sql = "select*from notice";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" border="1" width="95%">
		<tr>
			<th width="40%">
				<%out.print("公告信息");%>
			</th>
			<th width="40%">
				<%out.print("报名时间");%>
			</th>
		</tr>

		<%   while (rs.next()) {   %>
		<tr>
			<td>
				<%out.print(rs.getString("notice"));%>
			</td>
			<td>
				<%out.print(rs.getString("time"));%>
			</td>
		</tr>
		
		<%   }  %>

	</table>
	<table align="center" border="0" width="95%">
			<tr>
			<th>
				<input type="button" name="button" value="新增" onclick="javascrtpt: window.location.href = 'addnotice.jsp'" />&nbsp;&nbsp;&nbsp;
				<input type="button" name="button" value="删除" onclick="javascrtpt: window.location.href = 'deletenotice1.jsp'"/>
				</th>
		</tr>
	</table>
	<%
		rs.close();
		statement.close();
		conn.close();
	%>
</body>
</html>