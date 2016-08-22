<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addmeetingroom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<script src="js/jquery-2.1.4.min.js" ></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/top.css">
	</head>
	<body class="top">
		<div class="header" > 
              <div class="col-xs-6">  
                <h3>学生成绩在线查询系统</h3>  
              </div>
              <div class="col-xs-6 pdright">
                <ul class="pull-right list-unstyled list-inline">  
                  <li class="wordColor"><span class="glyphicon glyphicon-user"></span>&#12288;欢迎<span>${number}</span>登录</li>
                  <li><input type="button" value="退出" onClick="parent.location.href='login.jsp'"></li>
                </ul> 
               </div>
        </div>   
	</body>
</html>
