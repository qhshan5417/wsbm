<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
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
<form action="condition.jsp" method="post">
<center> 
<table>
    <%out.print("请输入搜索条件");%>
    <input type="text" name = "condition"/>
    <input type="submit" name = "submit" value="搜索"  onclick="javascrtpt: window.location.href = 'condition.jsp'"/>
    </table></center>
    </form>

	<%  
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String sql = "select*from user";
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
			<td>
			      <input type="button" name="button" value="删除" onclick="javascrtpt: window.location.href = 'adminuser.jsp'"/>
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

