<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<link rel="stylesheet" type="text/css" href="css/menu.css">
		<title></title>
	</head>
	<body>
		<div class="content menu">
		<nav class="navbar" role="navigation" id="leftmenu">
     <div class="navbar-collapse">
          <ul class="nav nav-pills nav-stacked">
          <c:if test="${number!='100000'}">
              <li>
              	<a href="firstpage.html" style="font-weight: bold;" target="showframe">首页</a>
              </li>
              <li>
              
              </li><li>
              	<a href="/Student/SingleGradeServlet?number=${number}" style="font-weight: bold;" target="showframe">成绩</a>
              </li>
			   </c:if>
			   <c:if test="${number=='100000'}">
			   <li>
              	<a href="firstpage.html" style="font-weight: bold;" target="showframe">首页</a>
              </li>
        	  <li><a href="/Student/GradeManagerServlet" target="showframe">成绩管理</a></li>
			   <li class="dropdown" id="droptest3">
    			<a id="droptest3" href="#droptest3" role="button" class="dropdown-toggle" data-toggle="dropdown">学生成绩<b class="caret"></b></a>
    			<ul class="dropdown-menu bkg" role="menu" aria-labeledby="droptest3">
        			<li><a href="/Student/BadGradeServlet" target="showframe">不及格学生成绩</a></li>
        			<li><a href="/Student/GoodGradeServlet" target="showframe">优秀学生成绩</a></li>
    			</ul>
			   </li>
			   </c:if>
           </ul>
      </div>
</nav>
</div>
	</body>
</html>
