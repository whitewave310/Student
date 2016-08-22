<%@ page language="java" import="java.util.*,com.vo.Grade" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'meetingroom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery-2.1.4.min.js" ></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/main.css" />
	</head>
	<body>
		<div class="view">
		<div class="title">
		<h3>修改成绩</h3>
	</div>
   <div class="content col-sm-10">
  <%Grade grade=(Grade)request.getAttribute("grade"); 
  request.setAttribute("grade",grade);%>
    <form action="EditServlet" method="post" name="registerForm" novalidate>
		<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">姓名</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.name}" name="name" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="number" class="control-label col-xs-2">学号</label>
	  		<div class="col-xs-10">
	  			<input id="number"  value="${grade.number}" name="number" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">平时成绩1</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.ugrade1}" name="ugrade1" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">平时成绩2</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.ugrade2}" name="ugrade2" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">平时成绩3</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.ugrade3}" name="ugrade3" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">平时成绩4</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.ugrade4}" name="ugrade4" type="text"/>
	  		</div>
	  	</div>
		<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">实验成绩1</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.egrade1}" name="egrade1" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">实验成绩2</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.egrade2}" name="egrade2" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">考试成绩</label>
	  		<div class="col-xs-10">
	  			<input id="name"  value="${grade.grade}" name="grade" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<input class="btn btn-success col-xs-12" value="修改" type="submit" />
	  	</div>
	  	</form>
	  	</div>
	  	</div>
  </body>
</html>
