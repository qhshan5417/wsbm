<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>支付页面2</title>
</head>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css"> 
    body {color:red}
    h1   {font-size:500%} 
    table,td,th
    </style>
    
<body style="background-image:url(image/login.jpg); background-size:cover">

 <h1 align="center">注意环境安全</h1><br>
 
<form action="moneycheck.jsp" method="post">
<table width="250" height = "150" border="0" align="center" valign="center">
<%
String B1 = (String)session.getAttribute("B1");
String strTemp = B1 ;
%>
<%=strTemp%>
  <tr>
  <th>支付账号</th> 
  <td><input type="text" name = "id" /> </td>
  </tr>
  <tr>
  <th>支付密码 </th>
  <td><input type="password" name = "pass"></td>
  </tr>
  <tr>
  <td colspan = "2" align = "center">
  <input type = "submit" value = "确定支付">
  </td>
  </tr>
</table>
</form>

</body>
</html>