<%@ page import ="java.util.*" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆成功</title>
</head>
<style type="text/css"> 
    body {color: red;background-color: #66FF66;}
    h1   {font-size: 500%;color: #F00;} 
    input {font-size:50px; font-family:"楷体"; color: #F00;}
    table,td,th
 </style>
  <style type="text/css">.image1 {background:url(image/1.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image2 {background:url(image/2.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image3 {background:url(image/3.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image4 {background:url(image/4.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image5 {background:url(image/5.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image6 {background:url(image/6.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
<body>
<%
String id = (String)session.getAttribute("ID");
String strTemp = "欢迎你！——"+id + "——管理面板已启用！";
%>
<%=strTemp%>
<%
Date today = new Date();
int d = today.getDay();
int h = today.getHours();
String s = "";
if(h>0 && h < 12)
s = "上午好";
else if(h>=12)
s = "下午好";
String day[] = {"日","一","二","三","四","五","六"};
out.println(s+ "，今天是星期" + day[d]);
%>

<table width="1500" height = "600" border="0" align="center" valign="center">
  <tr><td>
  <input type="button" name="button" value="报名管理"  style="width: 400px; height: 200px;"
  class="image1" 
     onclick="javascrtpt: window.location.href = 'submit1.jsp'"/>
     </td><td>
  <input type="button" name="button" value="公告管理" style="width: 400px; height: 200px;"
   class="image2"
     onclick="javascrtpt: window.location.href = 'publish.jsp'" />
     </td> <td>
  <input type="button" name="button" value="用户管理" style="width: 400px; height: 200px;"
  class="image3"
     onclick="javascrtpt: window.location.href = 'userlist.jsp'"/>
  </td></tr>
  <tr><td>
  <input type="button" name="button" value="占个位置" style="width: 400px; height: 200px;"
  class="image4"
     onclick="javascrtpt: window.location.href = 'userinfo.jsp'"/></td>
     <td>
  <input type="button" name="button" value="百度" style="width: 400px; height: 200px;"
  class="image5"
     onclick="javascrtpt: window.location.href = 'http://www.baidu.com'"/></td><td>
  <input type="button" name="button" value="敬请期待" style="width: 400px; height: 200px;"
  class="image6"
     onclick="javascrtpt: window.location.href = 'cs.jsp'"/></td></tr>
 
</table>
 
</body>
</html>