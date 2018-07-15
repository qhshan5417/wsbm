<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<html>
<head>

</head>
<body>

	<%  
	String type="考试";
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
			<th>
				<%out.print("可报名考试");%>
			</th>
			<th>
				<%out.print("报名费用");%>
			</th>
			<th>
				<%out.print("考试时间");%>
			</th>
			<th>
				<%out.print("考试地点");%>
			</th>
		</tr>

		<%   while (rs.next()) {   %>
		<tr>
			<td>
				<%out.print(rs.getString("action"));%>
			</td>
	        <td>
				<%out.print(rs.getString("money"));%>
			</td>
			<td>
				<%out.print(rs.getString("time"));%>
			</td>
			<td>
				<%out.print(rs.getString("site"));%>
			</td>
		</tr>
		
		<%   }  %>
	</table>
	<table border="0" width="95%">
	<tr>
			<tr>
			<th>
				<input type="button" name="button" value="新增" onclick="javascrtpt: window.location.href = 'addexam.jsp'" />&nbsp;&nbsp;&nbsp;
				<input type="button" name="button" value="删除" onclick="javascrtpt: window.location.href = 'deleteaction.jsp'"/>
			</th>
		</tr>
	</tr>
	</table>
	
	<%
		rs.close();
		statement.close();
		conn.close();
	%>
</body>
</html>