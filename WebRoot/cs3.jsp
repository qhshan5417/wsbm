<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<head>
    <title>无标题页</title>
    <style type="text/css">
        .test{ width:200px; height:200px; position:absolute}
        .d1 { background-color:Blue}
        .d2 { background-color:Fuchsia}
        .d3 { background-color:Gray}
    </style>
</head>
<script type="text/javascript"> 
var i =1;
function changes(){ 
    var a = document.getElementById('d1');
    var b = document.getElementById('d2');
    var c = document.getElementById('d3');
    switch(i % 3)
    {
    case 0:
        a.style.zIndex=1;
        b.style.zIndex=0;
        c.style.zIndex=0;
        break;
    case 1:
        a.style.zIndex=0;
        b.style.zIndex=1;
        c.style.zIndex=0;
        break;
    case 2:
        a.style.zIndex=0;
        b.style.zIndex=0;
        c.style.zIndex=1;
        break;
    }
    i++ ; 
} 
setInterval('changes()',2000);
</script>
<body>
    <div id="d1" class="test d1">123</div>
    <div id="d2" class="test d2">456</div>
    <div id="d3" class="test d3">789</div>
</body>
</html>