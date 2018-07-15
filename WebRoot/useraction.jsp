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
String Name = (String)session.getAttribute("UserName");
String strTemp = Name + "的报名结果";
%>
    <% request.setCharacterEncoding("utf-8"); %>
	<%  
	    String c="报名完成";
	    String T=request.getParameter("T");
	    String aName = (String)session.getAttribute("UserName");
		Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/school", "root", "1234");
		Statement statement = conn.createStatement();
		String bName = (String)session.getAttribute("UserName"); 
		String sql = "select*from submit where username='"+bName+"' and money='0'";
		ResultSet rs = statement.executeQuery(sql);
	%>
	<br>
	<br>
	<table align="center" width="100%" border="1" width="95%">
		<tr>
		    <th width="10%">
				<%out.print("姓名");%>
			</th>
		    <th width="20%">
				<%out.print("报名项目");%>
			</th>
			<th width="20%">
				<%out.print("活动时间");%>
			</th>
			<th width="15%">
				<%out.print("集合地点");%>
			</th>
			<th width="15%">
				<%out.print("报名状态");%>
			</th>
			<th width="10%">
				<%out.print("带队老师");%>
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
				<%out.print(rs.getString("time"));%>
			</td>
			<td>
				<%out.print(rs.getString("site"));%>
			</td>
			<td>
            <%out.print(rs.getString("T"));%>
			</td>
			<td>
            <%out.print(rs.getString("teacher"));%>
			</td>
			<td>
			<% String R=rs.getString("T");%>
			<% if(R.equals(c)){%>
			<%out.print("成功");%>
			<%}else{%>
			<%out.print("未审核");%>
			</td>
			<%}%>
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
