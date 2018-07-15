<%@ page import ="java.util.*" contentType="text/html; charset=gb2312"
pageEncoding="gb2312"%>
<%@ page import="DB.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>登陆成功</title>
<script src="js/jquery-3.3.1.js"></script>
		
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
    body {background-color: #EDEDED;}
    h1   {font-size: 500%;color: #000000;} 
     h2   {font-size: 200%;color: #000000;} 
    table,td,th
 </style>
  <style type="text/css">.image1 {background:url(image/1.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image2 {background:url(image/2.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image3 {background:url(image/3.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>
  <style type="text/css">.image4 {background:url(image/4.png) no-repeat;width:400px;height:200px;border:0;cursor:pointer;}</style>

<body>
<%
String username = (String)session.getAttribute("UserName");
String strTemp = username ;

%>
<%
Date today = new Date();
int d = today.getDay();
int h = today.getHours();
int m = today.getMinutes();
String s = "";%>
<br>
<%if(h>0 && h < 12)
s = "上午好";
else if(h>=12)
s = "下午好";
String day[] = {"日","一","二","三","四","五","六"};
out.println(s+ "，今天是星期" + day[d]);
%><br><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.print(h);  out.print(":");  out.print(m); %>
<div>
</div>
<div style="position:absolute;left:90%;top:10px;">
<input type="button" name="button" value="注销" style="font-size: 150%;color:red" onclick="javascrtpt: window.location.href = 'login.jsp'"/>
</div>


<div style="position:absolute;left:5px;top:100px;height:80%;width: 200px;">
<table>
<h2><h2>
 
     <tr><td>
  <input type="button" name="button" value="可报名考试" style="position:absolute;font-size: 150%;color: #303030;top:0;width: 200px; height: 60px;"
   class="image4"
     onclick="clickTop(2)" />
    </td></tr>
   <tr><td>
  <input type="button" name="button" value="已报名考试" style="position:absolute;top:12%;width: 200px; height: 60px;font-size: 150%;color: #303030;"
  class="image4"
     onclick="clickTop(3)"/>
     </td></tr>
     
      <tr><td>
  <input type="button" name="button" value="可报名活动" style="position:absolute;top:24%;width: 200px; height: 60px;font-size: 150%;color: #303030;"
   class="image4"
     onclick="clickTop(4)" />
    </td></tr>
        <tr><td>
  <input type="button" name="button" value="已报名活动" style="position:absolute;top:36%;width: 200px; height: 60px;font-size: 150%;color: #303030;"
  class="image4"
     onclick="clickTop(5)"/>
     </td> </tr>
     
  <tr><td>
  <input type="button" name="button" value="个人信息" style="position:absolute;top:48%;width: 200px; height: 60px;font-size: 150%;color: #303030;"
  class="image4"
     onclick="clickTop(6)"/>
    </td> </tr>
    <tr><td>
  <input type="button" name="button" value="公告信息" style="position:absolute;top:60%;width: 200px; height: 60px;font-size: 150%;color: #303030;"
  class="image4"
     onclick="clickTop(7)"/></td> </tr>
</table>
</div>

<div style="position:absolute;left:210px;top:100px;height:80%;width:80%;">
<iframe id="bottomContent" src="select/began.jsp" width="100%" height="100%" frameborder="0">
   				</iframe>
</div>
</body>
<script>
	function clickTop(clickItem){
	if(clickItem==2)
			$("#bottomContent").attr("src","select/Sexam.jsp");
	if(clickItem==3)
			$("#bottomContent").attr("src","userexam.jsp");
	if(clickItem==4)
			$("#bottomContent").attr("src","select/Saction.jsp");
	if(clickItem==5)
			$("#bottomContent").attr("src","useraction.jsp");
	if(clickItem==6)
			$("#bottomContent").attr("src","userinfo.jsp");
	if(clickItem==7)
			$("#bottomContent").attr("src","first/notice.jsp");
	}
</script>
</html>
