<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0052)http://ife.baidu.com/2016/group/profile?groupId=2628 -->
<html>
  
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-sweb-app-capable" content="yes">
      <meta name="keywords" content="编程任务, 编程案例, 编程实战, 前端案例, java实战, 编程实践">
      <meta name="description" content="代码英雄网，发布趣味性和知识性相结合编程任务，给出编程思路，编程初学者和爱好者完成这些编程任务后，可以不知不觉提高自身的编码水平。">
      <title>代码英雄网</title>
    <link href="${pageContext.request.contextPath}/assets/css/groupShow_041647bf.css" rel="stylesheet">
     <script src="${pageContext.request.contextPath}/assets/js/jquery-3.1.0.min.js"></script>


 <script src="${pageContext.request.contextPath}/assets/js/template.js"></script>

    <script data-require-id="user/groupShow_8b037e50" src="${pageContext.request.contextPath}/assets/js/groupShow_8b037e50.js" async=""></script>
    <script data-require-id="bootstrap/button" src="${pageContext.request.contextPath}/assets/js/button.js" async=""></script>
    <script data-require-id="jquery-bootpag/jquery.bootpag" src="${pageContext.request.contextPath}/assets/js/jquery.bootpag.js" async=""></script>
    <script data-require-id="bootstrap/modal" src="${pageContext.request.contextPath}/assets/js/modal.js" async=""></script>
    <script data-require-id="bootstrap/collapse" src="${pageContext.request.contextPath}/assets/js/collapse.js" async=""></script>
    <script data-require-id="bootstrap/tab" src="${pageContext.request.contextPath}/assets/js/tab.js" async=""></script>
    <script data-require-id="bootstrap/dropdown" src="${pageContext.request.contextPath}/assets/js/dropdown.js" async=""></script>

  	 <script type="text/javascript">
/*     function getsubtim(){
    	$.post("${pageContext.request.contextPath}/getsubmit/${userinfo.userid}",'',function(data){
			var jsonObj = JSON.parse(data);
			var html = template('sub',jsonObj);
			$('#submits').html(html);
		})
    };
    
    function getreview(){
    	$.post("${pageContext.request.contextPath}/getreview/${userinfo.userid}",'',function(data){
			var jsonObj = JSON.parse(data);
			var html = template('rev',jsonObj);
			$('#review').html(html);
		})
    }; */
    
    	$(function(){
    	
	    	$.get("${pageContext.request.contextPath}/getsubmit/${userinfo.userid}",'',function(data){
			
	    		var jsonObj = JSON.parse(data);
				var html = template('sub',jsonObj);
				$('#submits').html(html);
			})
	  
		
		$('#task-tab').click(function(){
		
	
			$.get("${pageContext.request.contextPath}/getsubmit/${userinfo.userid}",'',function(data){
				
		
				var jsonObj = JSON.parse(data);
				var html = template('sub',jsonObj);
				$('#submits').html(html);
				
				$('#review').html("");
			})
		
		});
	/*	$('#review-tab').click(function(){

			    $.get("${pageContext.request.contextPath}/getreview/${userinfo.userid}",'',function(data){

			    	var jsonObj = JSON.parse(data);
					var html = template('rev',jsonObj);
					$('#review').html(html);

			$('#submits').html("");
		})

    	})*/
    		
    })
    </script>
    <script type="text/html" id = "sub">
	
                 {{each list as submitmap}}
                	<li class="list-item">
                    <div class="list-content">
                      <a class="info-title" href="${pageContext.request.contextPath}/detail/{{submitmap.taskid}}">{{submitmap.tasktitle}}</a>
                      <p>
                        <span class="key">提交时间：</span>
                        <span class="value">{{submitmap.submittime}}</span></p>
                      <p class="code-info">
                        <span class="key">代码地址：</span>
                        <a class="value" href="{{submitmap.codeaddress}}" target="_blank">{{submitmap.codeaddress}}</a></p>

                      <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/review/{{submitmap.submitid}}">查看详情</a></div>
                  </li>
                {{/each}}
                  
            
	</script>
	
	<script type="text/html" id = "rev">
	
                	{{each list as review}}
                	<li class="list-item">
                    <div class="list-content">
                      <a class="info-title" href="${pageContext.request.contextPath}/detail/{{review.taskid}}">{{review.title}}</a>
                        <p>
                          <span class="key">提交用户：</span>
                          <a class="value" href="${pageContext.request.contextPath}/profile/{{review.userid}}">{{review.username}}</a></p>
                        <p class="code-info">
                          <span class="key">代码地址：</span>
                          <a class="value" href="{{review.codeaddress}}" target="_blank">{{review.codeaddress}}</a></p>
                        <p>
                          <span class="key">
                            <a href="${pageContext.request.contextPath}/profile/{{review.reviewuserid}}" target="_blank">{{review.reviewusername}}</a>review 时间：</span>
                          <span class="value">{{review.reviewtime}}</span></p>
                        <p>
                          <span class="key">打分：</span>
                          <em class="value">{{review.score}}</em></p>
                        <a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/review/{{review.submitid}}">查看详情</a></div>
                  </li>
                	{{/each}}
                  
              
	</script>
  	
  </head>
  
  <body class="result-op" style="">
    <div id="viewport">
      <header>
          <%@include file="header.jsp" %>
      </header>
      <main class="container group-page">
        <div class="breadcrumb nav-title">
          <span class="active">${userinfo.username}</span></div>
        <div class="main">
          <ul class="nav nav-tabs group-tabs" role="tablist">
            <li role="presentation" class="active">
              <a href="#" id="task-tab" role="tab" data-toggle="tab" aria-controls="task" aria-expanded="true">提交的任务（
                <em>${submitcount}</em>）</a></li>
            <%--<li role="presentation">
              <a href="#" role="tab" id="review-tab" data-toggle="tab" aria-expanded="false">发表的 review（
                <em>${reviewcount}</em>）</a></li>--%>
          </ul>
          <div class="tab-content card-wrap">
            <div role="tabpanel" class="tab-pane fade active in" id="task" aria-labelledby="task-tab" style="height: auto;">
              <div class="result-list-wrap clearfix" >
               
                <ul class="result-list task-list" id = "submits">
               
               	</ul>
               
               
               
              </div>
              <!-- review -->
              <div class="result-list-wrap clearfix" >
                	<ul class="result-list review-list" id="review">
                
                	  </ul>
                
              </div>
              
            </div>
            <div role="tabpanel" class="tab-pane fade" id="review" aria-labelledby="review-tab">
              <div class="result-list-wrap clearfix">
                <div class="loading-wrap">
                  <span class="loading glyphicon glyphicon-refresh" aria-hidden="true"></span>
                </div>
              </div>
              <div class="page-wrap"></div>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="note" aria-labelledby="note-tab">
              <div class="result-list-wrap clearfix">
                <div class="loading-wrap">
                  <span class="loading glyphicon glyphicon-refresh" aria-hidden="true"></span>
                </div>
              </div>
              <div class="page-wrap"></div>
            </div>
          </div>
        </div>
      </main>
      <%@include file="footer.jsp" %>
    </div>
  </body>

</html>