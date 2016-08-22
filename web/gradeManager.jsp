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
		<h3 style="margin-bottom: 25px;">成绩管理</h3>
	<ul class="nav nav-tabs">
			<li class="active"><a data-target="#managergrade" data-toggle="tab">管理成绩</a></li>
			<li><a data-target="#addgrade" data-toggle="tab">添加成绩</a></li>
	</div>
	<div class="pay tab-content">
		<div class="tab-pane active view newRole" id="managergrade" style="margin-top: 20px;margin-left: 20px;">
			<div class="content col-sm-10">
				<table class="table table-striped">
   <thead>
      <tr>
         <th>学号</th>
         <th>姓名</th>
         <th>平时成绩1</th>
         <th>平时成绩2</th>
         <th>平时成绩3</th>
         <th>平时成绩4</th>
         <th>实验成绩1</th>
         <th>实验成绩2</th>
         <th>考试成绩</th>
         <th>总成绩</th>
         <th>操作</th>
      </tr>
   </thead>
   <tbody>
   <%ArrayList<Grade> gradeList=(ArrayList<Grade>)request.getAttribute("gradeList") ;%>
  <%for(Grade grade :gradeList) {
  pageContext.setAttribute("grade", grade);%>
  <tr>
    <td>${grade.number}</td>
    <td>${grade.name}</td>
        <td>${grade.ugrade1}</td>
        <td>${grade.ugrade2}</td>
        <td>${grade.ugrade3}</td>
        <td>${grade.ugrade4}</td>
        <td>${grade.egrade1}</td>
        <td>${grade.egrade2}</td>
        <td>${grade.grade}</td>
        <td>${grade.tgrade}</td>
    <td>
    <a href="DeleteServlet?number=${grade.number}"><img src='image/delete.jpg' alt='删除' width='20px' height='20px'></a>
    <a href="UpdateServlet?number=${grade.number}"><img src='image/update.png' alt='修改' width='20px' height='20px'></a>
    </td>
  </tr>
  <% } %> 
   </tbody>
</table>
			</div>
		</div>
		<div class="tab-pane  view newRole" id="addgrade" style="margin-left: 0px;">
			<div class="content col-sm-10">
			<%Grade grade=(Grade)request.getAttribute("grade"); 
  request.setAttribute("grade",grade);%>
    <form action="AddServlet" method="post" name="addGradeForm" novalidate>
		<div class="form-group">
	  		<label for="name" class="control-label col-xs-2">姓名</label>
	  		<div class="col-xs-10">
	  			<input id="name"  name="name" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="number" class="control-label col-xs-2">学号</label>
	  		<div class="col-xs-10">
	  			<input id="number" name="number" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="ugrade1" class="control-label col-xs-2">平时成绩1</label>
	  		<div class="col-xs-10">
	  			<input id="ugrade1" name="ugrade1" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="ugrade2" class="control-label col-xs-2">平时成绩2</label>
	  		<div class="col-xs-10">
	  			<input id="ugrade2" name="ugrade2" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="ugrade3" class="control-label col-xs-2">平时成绩3</label>
	  		<div class="col-xs-10">
	  			<input id="ugrade3"  name="ugrade3" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="ugrade4" class="control-label col-xs-2">平时成绩4</label>
	  		<div class="col-xs-10">
	  			<input id="ugrade4" name="ugrade4" type="text"/>
	  		</div>
	  	</div>
		<div class="form-group">
	  		<label for="egrade1" class="control-label col-xs-2">实验成绩1</label>
	  		<div class="col-xs-10">
	  			<input id="egrade1" name="egrade1" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="egrade2" class="control-label col-xs-2">实验成绩2</label>
	  		<div class="col-xs-10">
	  			<input id="egrade2"  name="egrade2" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<label for="grade" class="control-label col-xs-2">考试成绩</label>
	  		<div class="col-xs-10">
	  			<input id="grade"  name="grade" type="text"/>
	  		</div>
	  	</div>
	  	<div class="form-group">
	  		<input class="btn btn-success col-xs-12" value="添加" type="submit" />
	  	</div>
	  	</form>
	  	</div>
		</div>
	</div>
</div>
	</body>
</html>
