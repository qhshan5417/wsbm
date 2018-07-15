<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>报名结果</title>
    
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
	    String t="报名中";
	    String t1="未交费";
	    String t2="报名成功";
	    String t3="报名完成";
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String sql = "select*from submit";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" width="100%" border="1" width="95%">
		<tr>
		    <th width="15%">
				<%out.print("报名用户");%>
			</th>
		    <th width="30%">
				<%out.print("报名项目");%>
			</th>
			<th width="15%">
				<%out.print("报名编号");%>
			</th>

			<th width="15%">
				<%out.print("报名费用");%>
			</th>
			<th >
				<%out.print("报名状态");%>
			</th>
		</tr>

		<%
			while (rs.next()) {
		%>
		<tr>
			<td>
				<%out.print(rs.getString("name"));%>
			</td>
			<td>
				<%out.print(rs.getString("action"));%>
			</td>
			<td>
				<%out.print(rs.getString("B"));%>
			</td>
			<td>
            <%out.print(rs.getString("money"));%>
			</td>
			<td>
			<% String R=rs.getString("T");
			%>
			<% if(R.equals(t)){%>
				<a  href="admin/submit2.jsp?B=<%=rs.getString("B")%>"> 同意报名</a>
				<%}
				if(R.equals(t1)){%>
				<%out.print("未交费"); %>
				<%}
				if(R.equals(t2)){%>
				<%out.print("报名成功"); %>
				<%}
				else if(R.equals(t3)){%>
				<%out.print("报名成功"); %>
				<%}%>
				
			</td>
		</tr>
		<%
			}
		%>
	</table>
	
  </body>
</html>