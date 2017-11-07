<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0034)http://ife.baidu.com/2016/task/all -->
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
    <link href="${pageContext.request.contextPath}/assets/css/taskDetail_58a113b2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/taskList_f53df776.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2_d88366fd.js"></script>

    <script data-require-id="bootstrap/collapse" src="${pageContext.request.contextPath}/assets/js/collapse.js"></script>

  </head>
  
  <body class="result-op" style="">
    <div id="viewport">
      <header>
       <%@include file="header.jsp" %>
      </header>
      <main class="container task-list-page">
        <div class="breadcrumb nav-title">
          <span class="active">任务列表</span></div>
        <div class="main">
        <c:forEach items="${task_class}" var="task_class">
        <div class="alert alert-info" role="alert">${task_class.classname}</div>
          
           
           
           <ul class="task-list container-fluid">
            <c:forEach items="${task}" var="task">
         	<c:if test="${task.taskclass == task_class.classid}"> 
           	
           	
          
          	<li class="task">
              <a href="${pageContext.request.contextPath}/detail/${task.taskid}" class="task-content">
                <div class="task-info">
                  <div class="task-title">${task.title}</div>
                  <div class="task-detail clearfix">
                    <span class="pull-left">难度：${task.difficulty}</span>
                    <span class="pull-right">
                      <em class="text-primary">${task.count}</em>提交任务</span></div>
                  <div class="task-detail clearfix">
                    <span class="pull-left">发布时间：${task.pubdate}</span></div>
                </div>
              </a>
            </li>
          
          
         </c:if>
          
           </c:forEach> 
          </ul>
          
        </c:forEach>
          
        </div>
      </main>
      <%@include file="footer.jsp" %>
    </div>

  </body>

</html>