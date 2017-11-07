<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <nav class="navbar navbar-default container ife-header">
          <div class="row">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <div class="navbar-brand ife-logo">
                <a href="${pageContext.request.contextPath}/">
                  <img src="${pageContext.request.contextPath}/assets/img/logo.png"></a>
              </div>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
              <c:if test="${user.power>0}">
                <li>
                  <a href="${pageContext.request.contextPath}/adminhome">后台</a>
                  </li>
              </c:if>

                <li>
                  <a href="${pageContext.request.contextPath}/">任务</a>
                  </li>
            <%--    <li>
                  <a href="#">学习笔记</a>
                  </li>--%>

                  <c:if test="${empty user}">
                   <li class="user-dropdown1">
                  <a href="${pageContext.request.contextPath}/login">登录</a>
                  </li>
                 <li class="user-dropdown">
                <a href="${pageContext.request.contextPath}/reg">注册</a>
                  </li>
                  </c:if>
               	<c:if test="${!empty user}">
                  <li class="user-dropdown1">
                    <a href="${pageContext.request.contextPath}/profile/${user.userid}">我的解答列表</a>
                  </li>
                 <li class="user-dropdown">
                <a href="${pageContext.request.contextPath}/logout">注销</a>
                  </li>
               	</c:if>
              </ul>
            </div>
          </div>
        </nav>


<%--<header><nav class="navbar navbar-default container ife-header"><div class="row"><div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><div class="navbar-brand ife-logo"><a href="//ife.baidu.com"><img src="//ife.baidu.com/2016/asset/img/logo.png"></a></div></div><div id="navbar" class="navbar-collapse collapse"><ul class="nav navbar-nav"><li><a href="/2016/task/all">任务</a></li><li><a href="/2016/note/all">学习笔记</a></li><li><a href="/2016/statistic/index">统计</a></li><li class="user-dropdown"><a href="https://openapi.baidu.com/oauth/2.0/authorize?client_id=89XtMi6980UVMb5iMiRAL27g&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fife.baidu.com%2F2016%2Flog%2Fin&amp;scope=&amp;state=98f45c23fa281db89cbb0f82ca872315&amp;display=page">登录</a></li></ul></div></div></nav></header>--%>