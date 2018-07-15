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
	<style>
			.ztree * {
			    font-size: 16px;
			}
			.ztree li span.button.ico_close {
			    width: 15px;
			    height: 15px;
			}
			.ztree li span.button.ico_docu {
			    width: 15px;
			    height: 15px;
			}
			.ztree li span.button.ico_open {
			    width: 15px;
			    height: 15px;
			}
		</style>
  </head>
  
  <body>
    <div style="height:100%;width:100%">
			<div style="height:99%;width:15%;overflow-y:scroll;float:left">
   				<ul id="tree" class="ztree" style="float:left"></ul>
   			</div>
   			<div style="height:99%;width:85%;overflow-y:scroll">
   				<iframe id="rightContent" src="http://www.baidu.com" width="100%" height="100%" frameborder="0">
   				</iframe>
   			</div>
		</div>
  </body>
  <script type="text/javascript">//树菜单配置
		var setting = {  
            data: {  
                simpleData: {  
                    enable: true  
                }  
            },
            callback:{
            	onClick:clickMenu
            } 
        };
        var zNodes=[];
		zNodes.push({id:1,pId:0,name:"高考管理"});
		zNodes.push({id:11,pId:1,name:"首页消息"});
		zNodes.push({id:12,pId:1,name:"学校管理"});
		zNodes.push({id:12,pId:1,name:"专业管理"});
		zNodes.push({id:13,pId:1,name:"省控线管理"});
		zNodes.push({id:14,pId:1,name:"学校分数管理"});
		zNodes.push({id:12,pId:1,name:"学校专业管理"});
		
		zNodes.push({id:2,pId:0,name:"考友圈管理"});
		zNodes.push({id:21,pId:2,name:"话题管理"});
		
		zNodes.push({id:3,pId:0,name:"个人中心管理"});
		zNodes.push({id:31,pId:3,name:"意见反馈"});
		zNodes.push({id:32,pId:3,name:"用户管理"});
		zNodes.push({id:33,pId:3,name:"用户设置管理"});
		zNodes.push({id:34,pId:3,name:"Android端版本管理"});
		$.fn.zTree.init($("#tree"), setting, zNodes);
		
		var menus=[
			{name:"首页消息",url:"/wsbm/login.jsp"},
			{name:"意见反馈",url:"../admin/feedbackManage"},
			{name:"话题管理",url:"../admin/topicManage"},
			{name:"学校管理",url:"../admin/collegeManage"},
			{name:"用户管理",url:"../admin/userManage"}
		];
		//左侧菜单点击事件
		function clickMenu(){
			var zTree = $.fn.zTree.getZTreeObj("tree").getSelectedNodes();
			var clickName=zTree[0].name;
			if(zTree[0].isParent == false){//如果不是父类
				if(clickName=="首页消息"){
					alert(menus[0].url);
					$("#rightContent").attr("src",menus[0].url);
				}
			}
		}
  </script>
</html>
