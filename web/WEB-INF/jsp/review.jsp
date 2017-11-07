<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0052)http://ife.baidu.com/2016/review/detail?workId=11105 -->
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
    <link href="${pageContext.request.contextPath}/assets/css/reviewDetail_ad83eb8a.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/taskList_f53df776.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/taskDetail_58a113b2.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2_d88366fd.js"></script>

    <script data-require-id="bootstrap/collapse" src="${pageContext.request.contextPath}/assets/js/collapse.js"></script>

  </head>
  
  <body class="result-op" style="">
    <div id="viewport">
      <header>
         <%@include file="header.jsp" %>
      </header>
      <main class="container review-detail-page">
        <div class="breadcrumb nav-title">
          <span class="active">${submittask.ttitle}（
            <a href="${pageContext.request.contextPath}/detail/${submittask.taskid}">查看详情</a>）</span></div>
        <div class="main">
          <div class="submit-group-info">
            <h4>
              <a href="${pageContext.request.contextPath}/profile/${submittask.userid}" target="_blank">${submittask.uname}</a></h4>
            <p class="submit-basic">
              <span class="submit-time">
                               更新于<em>${submittask.submittime}</em></span>
            <%--  <span class="review-num">已经有
                <em>${submittask.count}</em>人 review</span>
              <span class="score">平均得分：
                <em>${submittask.avgscore}</em></span>--%>
            </p>
            <p>代码地址：
              <a href="${submittask.codeaddress}" target="_blank">${submittask.codeaddress}</a></p>
            <p>视频讲解地址：
              <a href="${submittask.description}" target="_blank">${submittask.description}</a></p>
            <p>在线demo：
              <a href="${submittask.demo}" target="_blank">${submittask.demo}</a></p>
            <%--<p class="submit-descr">${submittask.description}</p>--%>
          </div>
          
          
          
       <%--   <ul class="review-result-list container-fluid">
            <li class="row review-result" data-id="2596">
            <form action="">
            	<div class="form-group row">
                    <label for="task-demo-url" class="col-xs-12 col-sm-3">请打分</label>
                    <div class="controls col-xs-12 col-sm-9">
                      <input type="text" value="" placeholder="" class="form-control" id="task-demo-url" name="demo"></div>
                  </div>
                  <div class="form-group row">
                    <label for="task-submit-descr" class="col-xs-12 col-sm-3">留言</label>
                    <div class="controls col-xs-12 col-sm-9">
                      <textarea placeholder="请评价" class="form-control" id="task-submit-descr" name="description"></textarea>
                    </div>
                  </div>
            	<div class="modal-footer">
                <span class="submit-tip"></span>

                <button type="button" data-loading-text="提交中..." class="btn btn-primary save-btn">提交</button></div>
            </form>
              
            </li>
          <c:forEach items="${review}" var="review">
          <li class="row review-result" data-id="2596">
              <div class="review-user clearfix">
                <span class="pull-left">
                  <a href="${pageContext.request.contextPath}/profile/${review.reviewuserid}" target="_blank">${review.reviewusername}</a>
                  <span class="time-info">review&nbsp;
                    <span class="time">${review.reviewtime}</span>
                    </span>
                </span>
                <span class="pull-right score-info">
                  <span class="score text-success">${review.score}</span>
                  <span class="text-muted">分</span></span>
              </div>
              <div class="review-comment">
                <span class="comment">${review.reviewbody}</span>
              </div>
            </li>
          </c:forEach>
          </ul>--%>
          <div class="review-page-wrap" data-total="3" data-page-size="10" data-page-no="1" style="display: none;"></div>
        </div>
      </main>
      <footer>
        <p>
          <span class="contact">微信公众号：baidu_ife</span>
          <span class="contact">微博：
            <a target="_blank" href="http://weibo.com/u/5568860641?topnav=1&amp;wvr=6&amp;topsug=1">Baidu前端技术学院</a></span>
        </p>
        <p class="friend-link">
          <span class="note">友情链接</span>
          <a target="_blank" title="百度EFE前端团队" href="http://efe.baidu.com/">百度EFE</a>
          <a target="_blank" href="http://voice.baidu.com/">百度语音搜索</a>
          <a href="http://www.chuanke.com/" target="_blank">百度传课</a>
          <a target="_blank" href="http://campus.baidu.com/">百度校园</a>
          <a target="_blank" href="http://talent.baidu.com/external/baidu/campus.html">百度校园招聘</a></p>
        <p>
          <span class="copyright-text">
            <span>©2016&nbsp;Baidu&nbsp;</span>
            <a href="http://www.baidu.com/duty/" target="_blank">使用百度前必读</a>&nbsp;
            <a href="http://jianyi.baidu.com/" target="_blank">意见反馈</a>&nbsp;
            <span>京ICP证030173号&nbsp;</span></span>
        </p>
      </footer>
    </div>
    <a id="gotop" style="display: none;">
      <span class="glyphicon glyphicon-menu-up up-icon" aria-hidden="true"></span>
    </a>
  </body>

</html>