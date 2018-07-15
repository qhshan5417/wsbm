<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script language="javascript" type="text/javascript">
        var xhr;
        var num;
        function CreateXmlHttp() {
            if (window.ActiveXObject) {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else {
                xhr = new XMLHttpRequest();
            }
        }
        function SendReq() {
            num = document.getElementById("txtNum").value;
            CreateXmlHttp();
            var url = "adminuser.jsp?num=" + num;//这儿应该是你请求的那个JSP页面
            xhr.open("GET", url, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var result = xhr.responseText;
                    //解析服务器返回的数据
                }
            }
            xhr.send(null);
        }
        function ProcessRequest() {
            var requestId = setInterval("SendReq()",2000);
        }
    </script>
</head>
<body>
    <input type="button" value="获得数据"  onclick="ProcessRequest()"/>
</body>
</html> 
