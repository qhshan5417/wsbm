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
	

</head>
<body>
<%

String Name = (String)session.getAttribute("UserName");
String strTemp = Name + "个人信息";
%>
	<% 
	    String name1=request.getParameter("name");
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String aName = (String)session.getAttribute("UserName"); 
		String sql = "select*from user where username='"+aName+"'";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" border="2px" width="40%">
	  <%
			while (rs.next()) {
		%>
		<tr>
			<th>
				<%
					out.print("用户名：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("username"));
				%>
			</td>
			</tr>
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
					out.print("性别：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("sex"));
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
					out.print("班级：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("class"));
				%>
			</td>
			</tr>
			<tr>
			<th>
				<%
					out.print("电话：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("phone"));
				%>
			</td>
			</tr><tr>
			<th>
				<%
					out.print("邮箱：");
				%>
			</th>
						<td>
				<%
					out.print(rs.getString("email"));
				%>
			</td>
		</tr>
		<tr>
			<th>
				<%
					out.print("身份证号：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("ID"));
				%>
			</td>
			</tr>
			<tr>
			<th>
				<%
					out.print("籍贯：");
				%>
			</th>
			<td>
				<%
					out.print(rs.getString("place"));
				%>
			</td>
			</tr>
	  <div style="position:absolute;top:50%;left:50%;">
			<a  href="userupdate.jsp?username=<%=rs.getString("username")%>&name=<%=rs.getString("name")%>&sex=<%=rs.getString("sex")%>
			&xh=<%=rs.getString("xh")%>&class=<%=rs.getString("class")%>&email=<%=rs.getString("email")%>&ID=<%=rs.getString("ID")%>
			&place=<%=rs.getString("place")%>&phone=<%=rs.getString("phone")%>"> 修改信息</a>
		</div>
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
