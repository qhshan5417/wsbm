<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tree' starting page</title>
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
   				<iframe id="rightContent" src="treeselect/begin.jsp" width="100%" height="100%" frameborder="0">
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
		zNodes.push({id:1,pId:0,name:"用户信息"});
		zNodes.push({id:11,pId:1,name:"管理用户"});
		
		zNodes.push({id:2,pId:0,name:"报名事务管理"});
		zNodes.push({id:21,pId:2,name:"报名审核"});
		zNodes.push({id:22,pId:2,name:"活动管理"});
		zNodes.push({id:23,pId:2,name:"考试管理"})
		
		zNodes.push({id:3,pId:0,name:"公告信息"});
		zNodes.push({id:31,pId:3,name:"公告管理"});
		
		$.fn.zTree.init($("#tree"), setting, zNodes);
		
		var menus=[
			{name:"管理用户",url:"/wsbm/admin/userlist.jsp"},
			{name:"报名审核",url:"/wsbm/admin/submit1.jsp"},
			{name:"活动管理",url:"/wsbm/admin/publish.jsp"},
			{name:"考试管理",url:"/wsbm/admin/exam.jsp"},
			{name:"公告管理",url:"/wsbm/admin/notice1.jsp"}
		];
		//左侧菜单点击事件
		function clickMenu(){
			var zTree = $.fn.zTree.getZTreeObj("tree").getSelectedNodes();
			var clickName=zTree[0].name;
			if(zTree[0].isParent == false){//如果不是父类
				if(clickName=="管理用户"){
					$("#rightContent").attr("src",menus[0].url);}
				if(clickName=="报名审核"){
					$("#rightContent").attr("src",menus[1].url);}
				if(clickName=="活动管理"){
					$("#rightContent").attr("src",menus[2].url);}
				if(clickName=="考试管理"){
					$("#rightContent").attr("src",menus[3].url);}
				if(clickName=="公告管理"){
					$("#rightContent").attr("src",menus[4].url);}
	
	
			}
		}
  </script>
</html>
