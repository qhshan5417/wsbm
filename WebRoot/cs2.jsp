<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="DB.DBConnection"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>状态变化</title>
    
    <meta http-equiv= "Content-Type " content= "text/html; charset=utf-8">
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
String username = (String)session.getAttribute("UserName");
String strTemp = username + "欢迎你！登陆成功！";
Random h= new Random();  
int H;
H=h.nextInt(28);
if(H<1){H=H++;}
int H1=H;

Random s= new Random(); 
int S;
S=s.nextInt(100);
if(S<1){S=S++;}
int S1=S;
out.print(H1);
%>
&nbsp;
<%out.print(S1); %>
   <%
    request.setCharacterEncoding("utf-8"); 
     try{
     String B1=request.getParameter("B");
     out.print(B1);
     String T1="报名完成";
         String Tname = (String)session.getAttribute("UserName");
         DBConnection dbconn=new DBConnection();
         Connection conn=dbconn.getConnection();
         Statement stmt=conn.createStatement();
         String sql="update submit set h= '"+H1+"',s='"+S1+"',T='"+T1+"' where B= '"+B1+"' ";
         
         stmt.executeUpdate(sql);     
            out.println("成功。");
          
        }catch(SQLException e){
            out.println("失败");        
        } 
    %>
  </body>
</html>