<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'XXX.jsp' starting page</title>
    <script src="js/jquery-3.3.1.js"></script>
		<script src="js/tree/zTree/jquery.ztree.core-3.5.min.js" type="text/javascript"></script>
		<link rel="stylesheet" type="text/css" href="js/tree/zTree/zTreeStyle/zTreeStyle.css" />
    
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
随机数
  <%
Random a = new Random();
int B;
B=a.nextInt(10);
if(B<1){B++;}
out.print(B);

    String c="jiushiyitiaogou";
    String s= c.substring(7,9);
    out.print(s); %> 
    &nbsp;<%
    out.print(c);
    String n= c + B;
    out.print(n);
    %>
  </body>

</html>

