<%@ page import ="java.util.*" contentType="text/html; charset=gb2312"
pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>假支付</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<style type="text/css">
body {background-color:#ffffff;}
</style>
<!-- background-image:url(image/zf.jpg);background-size:cover; -->
<body>
<%
String username = (String)session.getAttribute("UserName");
String strTemp = username + "进入支付页面";
String B=request.getParameter("B");
session.setAttribute("B1", B);
%>
<%=strTemp%>
<div style="position:absolute;left:20%;top:20%;height:60%;width:60%;background-image:url(image/zf.jpg);">


<form action="money2.jsp" method="post">

  <input type="button" name="button" style="position:absolute;left:5%;top:35%;width:14%; height:11%;background-image:url(image/zf0.png);" 
     onclick="javascrtpt: window.location.href = 'money2.jsp'"/>

</div>
 </form>
 
</body>
</html>