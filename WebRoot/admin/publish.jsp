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
		String sql = "select*from action_info where type='"+type+"'";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" border="1" width="95%">
		<tr>
			<th width="20%">
				<%out.print("可报名活动");%>
			</th>
			<th width="30%">
				<%out.print("活动时间");%>
			</th>
			<th width="20%">
				<%out.print("活动地点");%>
			</th>
			<th width="15%">
				<%out.print("参与人数");%>
			</th>
			<th width="15%">
				<%out.print("带队老师");%>
			</th>
		</tr>

		<%   while (rs.next()) {   %>
		<tr>
			<td>
				<%out.print(rs.getString("action"));%>
			</td>
			<td>
				<%out.print(rs.getString("time"));%>
			</td>
			<td>
				<%out.print(rs.getString("site"));%>
			</td>
			<td>
				<%out.print(rs.getString("number"));%>
			</td>
			<td>
				<%out.print(rs.getString("teacher"));%>
			</td>
		</tr>
		
		<%   }  %>

	</table>
	<table align="center" border="0" width="95%">
			<tr>
			<th>
				<input type="button" name="button" value="新增" onclick="javascrtpt: window.location.href = 'addaction.jsp'" />&nbsp;&nbsp;&nbsp;
				<input type="button" name="button" value="删除" onclick="javascrtpt: window.location.href = 'deleteaction.jsp'"/>
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