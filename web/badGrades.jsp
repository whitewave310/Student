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
		<h3 style="margin-bottom: 25px;">不及格学生成绩</h3>
	</div>
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
      </tr>
   </thead>
   <tbody>
   <%ArrayList<Grade> gradeList=(ArrayList<Grade>)request.getAttribute("gradeList") ;%>
  <%for(Grade grade :gradeList) {
  if(grade.getTgrade()<60){
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
  </tr>
  <% };} %> 
   </tbody>
</table>
			</div>
		</div>
	</body>
</html>
