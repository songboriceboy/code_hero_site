<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet"> 


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/signin.css" rel="stylesheet">

  <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ie-emulation-modes-warning.js"></script>
<title>Insert title here</title>
<script>
function aaaa(){
	if($('#pass2').html() == "ok" && $('#user2').html() == "可以注册"){
		
		$('#reg').attr('disabled',false);
	};
};


$(function(){
	
	
	$('#inputEmail').blur(function(){
		if($('#inputEmail').val() != ''){
			$.get("check",{"username":$('#inputEmail').val()},function(data){
        
				 if(data==1){
					 $('#user2').html("用户名已存在")
				 }
				 else if(data==0){ 
					 $('#user2').html("可以注册")
					 }
			});
		}else{ 
			 $('#user2').html("用户名不能为空")
		 }
	});
	
	$('#againPassword').blur(function(){
		if($("#inputPassword").val()!=""){
         	if($("#inputPassword").val()==$("#againPassword").val()){
         		$('#pass2').html("ok")
         		
         		aaaa();
         	}else {
         		$('#pass2').html("两次密码不一致")
         		}
         } else {
        	 $('#pass2').html("密码不能为空")
        	 }   
		
	})	;
	
})


</script>

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${pageContext.request.contextPath}/">首页</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">欢迎咨询</a></li>
            <li><a href="#about">网站简介</a></li>
            <li><a href="#contact">关于我们</a></li> 
          </ul>
         
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<div class="container">

      <form class="form-signin" action="${pageContext.request.contextPath}/register" method="post">
        <h2 class="form-signin-heading">注册</h2>
        <label for="inputEmail" class="sr-only">username</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="" name="username">
       <span id="user2"></span>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="password">
        <label for="inputPassword" class="sr-only">againPassword</label>
        <input type="password" id="againPassword" class="form-control" placeholder="再一次输入密码" required="" name="agapassword">
        <span id="pass2"></span>
        <div class="checkbox">
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" id = "reg" disabled="disabled">Register</button>
      </form>
</div>
</body>
</html>