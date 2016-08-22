<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
	<script src="js/jquery-2.1.4.min.js" ></script>
	<script src="js/bootstrap.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/login.css">
  </head>
  
  <body >
		<div>
	  	    <div class="logo">
	  		    <h3>学生成绩在线查询系统</h3>
	      	</div>
	      	<div class="login-box col-xs-offset-1 col-xs-10 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6">
	          	<div class="box-top">
	                <ul id="myTab" class="nav nav-pills">
	                    <li class="active"><a href="#login" data-toggle="tab">登陆</a></li>
	         	        <li><a href="#register" data-toggle="tab">注册</a></li>
	                 </ul>
	           	</div>
	        	<div id="myTabContent" class="tab-content">
	  	        	<div class="tab-pane active" id="login">
	  	              	<form action="LoginServlet" method="post" name="loginForm" novalidate>
	  		                <div class="form-group">
	  			                <label for="account" class="control-label col-xs-4 col-sm-3">学号</label>
	  			                <div class="col-xs-8">
	  			                    <input id="account" required placeholder="输入用户名或邮箱" name="number" type="text"/>
	  			                </div>
	  		                </div>
	  		                <div class="form-group">
	  		                    <label for="password" class="control-label col-xs-4 col-sm-3">密码</label>
	  		                    <div class="col-xs-8">
	  		                    	    <input id="password" required placeholder="输入用户密码" name="password" type="password" />
	  		                    </div>
	  		                </div>
	  		                <div class="form-group">
	  			                <input class="btn btn-success" value="立即登录" type="submit" />
	  		                </div>
	  	               	</form>
	            	</div>	             
	            	<div class="tab-pane" id="register">
	  	            	<form action="RegisterServlet" method="post" name="registerForm" novalidate>
	  		            	<div class="form-group">
	  			            	<label for="name" class="control-label col-xs-4">姓名</label>
	  			                	<div class="col-xs-8">
	  			                		<input id="name" required placeholder="输入真实姓名" name="name" type="text" />
	  		                    	</div>
	  		            	</div>
	  		            	<div class="form-group">
	  			            	<label for="account1" class="control-label col-xs-4">学号</label>
	  			                	<div class="col-xs-8">
	  			                		<input id="account1" required placeholder="输入账号名" name="number" type="text" />
	  			                  
	  		                    	</div>
	  		            	</div>
	  		            	<div class="form-group">
	  		                	<label for="password1" class="control-label col-xs-4">密码</label>
	  			            	<div class="col-xs-8"> 
	  			                	<input id="password1" required placeholder="输入用户密码" name="password" type="password" />
	  			               	
	  			            	</div>
	  			        	</div>
	  		            	<div class="form-group">
	  			            	<input class="btn btn-success col-xs-12" value="立即注册" type="submit" />
	  		            	</div>
	                	</form>
	            	</div>
	        	</div>
	       </div>
        </div>
	</body>
</html>
