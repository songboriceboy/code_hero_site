<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <li class="active"><a href="${pageContext.request.contextPath}/adminalluser">所有用户</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/admin_task_list">任务列表</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/adminaddTask">添加任务</a></li>
                <li><a href="addTeacher.html">分类管理</a></li>
            </ul>

        </div><!--/.nav-collapse -->
    </div>
</nav>