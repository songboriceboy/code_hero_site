<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0047)http://ife.baidu.com/2016/task/detail?taskId=50 -->
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
      <script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2_d88366fd.js"></script>


    <%--<script data-require-id="task/taskDetail_d485070b" src="${pageContext.request.contextPath}/assets/js/taskDetail_d485070b.js" ></script>--%>
    <script data-require-id="bootstrap/modal" src="${pageContext.request.contextPath}/assets/js/modal.js"></script>
    <script data-require-id="bootstrap/collapse" src="${pageContext.request.contextPath}/assets/js/collapse.js"></script>
    <script data-require-id="jquery-bootpag/jquery.bootpag" src="${pageContext.request.contextPath}/assets/js/jquery.bootpag.js"></script>
    <script data-require-id="bootstrap/button" src="${pageContext.request.contextPath}/assets/js/button.js"></script>
    <script data-require-id="bootstrapvalidator" src="${pageContext.request.contextPath}/assets/js/bootstrapValidator.js"></script>
    <script data-require-id="bootstrap/dropdown" src="${pageContext.request.contextPath}/assets/js/dropdown.js"></script>
<script>
    function check_form() {
//        alert('hello')
       // var form = document.getElementById('form_data');
//        alert(form.serialize());
        $(function () {
            var form_data = $('#form_data').serialize();
//            alert(form_data);
            $.post('${pageContext.request.contextPath}/submit_task',form_data,function(data){
                var jsonObj = JSON.parse(data);
//                var html = template('user',jsonObj);
//                $('#us').html(html);
                location.reload();

            });

        });
        return false;



    }
</script>
  </head>
  
  <body class="result-op" style="">
    <div id="viewport">
      <header>
        <%@include file="header.jsp" %>
      </header>
      <main class="container task-detail-page">
      <div class="breadcrumb nav-title">
      <span class="active">${task.title}</span>
      </div>
      <div class="main container-fluid">
      <div class="row task-detail-wrap">
      <div class="task-detail col-md-9">
      <div>${task.taskdetail}</div>
      
              <h3>已提交任务用户</h3>
              <div class="submit-group-info">
                <table class="submit-group-table">
                  <thead>
                    <tr>
                      <td>&nbsp;</td>
                      <td class="review">提交用户</td>

                        <td class="score">说解视频</td>



                    <td class="submit-time">提交时间</td>
                    </tr>


                  </thead>
                  
                 
                   <tbody>
                    <c:forEach items="${submit_task}" var="submittask">
                    <tr class="group">
                      <td>
                        <a href="${pageContext.request.contextPath}/review/${submittask.submitid}" class="btn btn-primary btn-xs">查看解答</a>
                      </td>


                        <td class="review">
                        <span class="group-name">
                          <a href="${pageContext.request.contextPath}/profile/${submittask.userid}">${submittask.uname}</a></span>
                        </td>

                        <c:if test="${! empty submittask.description}">
                            <td class="score"><a href="${submittask.description}">地址</a></td>
                        </c:if>
                        <c:if test="${empty submittask.description}">
                            <td class="score"><a href="${submittask.description}">&nbsp;</a></td>
                        </c:if>
                      <td class="submit-time">${submittask.submittime}</td>


                    </tr>
                     </c:forEach>
                  </tbody>
                 
                 
                </table>
              </div>
            </div>


          <div class="task-overview col-md-3">
              <div class="task-basic"><p class=""><span class="key">发布时间：</span><span
                      class="value">${task.pubdate}</span></p>
                  <p class=""><span class="key">提交人数：</span>
                      <span class="value">${task.count}</span></p>
                  <%--<p class=""><span class="key">难度：</span><span class="value">${task.difficulty}</span></p>
                  <p class=""><span class="key">平均得分：</span><span class="value">${score}</span></p></div>--%>
              <c:if test="${!empty user}">
                  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                          data-target="#submit-task-dlg">
                      我要解答
                  </button>
              </c:if>
              
            <%--  <div class="submit-rank-wrap">
                <h3>任务得分排名</h3>
                <div class="submit-group-rank">
                  <table class="submit-group-rank-table">
                    <thead>
                      <tr>
                        <td class="index">&nbsp;</td>
                        <td class="group-name">用户名</td>
                        <td class="score">得分</td>
                        <td class="review">&nbsp;</td></tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list_ten}" var="list_ten" varStatus="status">
                    <tr class="group top-0">
                        <td class="index-num">${status.index + 1}</td>
                        <td class="group-name">
                          <a href="${pageContext.request.contextPath}/profile/${list_ten.userid}">${list_ten.username}</a></td>
                        <td class="score">${list_ten.score}</td>
                        <td class="review">
                          <a href="${pageContext.request.contextPath}/review/${list_ten.submitid}" class="btn btn-primary btn-xs">查看评价</a></td>
                      </tr> 
                    </c:forEach>
                      
                    </tbody>
                  </table>
                </div>
              </div>--%>
            </div>
          </div>
        </div>
        <div> 

            <form method="post" action="#" class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
            <%--<form>--%>
                <div id="submit-task-dlg" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span></button>
                                <h4 class="modal-title">提交任务</h4></div>
                            <div class="modal-body">
                                <form class="container-fluid submit-task-form">
                                    <input type="hidden" name="userid" value="${user.userid}">
                                    <input type="hidden" name="taskid" value="${task.taskid}">

                                    <div class="form-group row">
                                        <label for="task-code-url" class="col-xs-12 col-sm-3">代码地址</label>
                                        <div class="controls col-xs-12 col-sm-9">
                                            <input type="text" value="" placeholder="完成的代码地址，比如 Github" class="form-control" id="task-code-url" name="codeaddress" required=""></div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="task-demo-url" class="col-xs-12 col-sm-3">demo地址</label>
                                        <div class="controls col-xs-12 col-sm-9">
                                            <input type="text" value="" placeholder="在线可访问demo地址，选填" class="form-control" id="task-demo-url" name="demo"></div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="task-submit-descr" class="col-xs-12 col-sm-3">视频说解地址</label>
                                        <div class="controls col-xs-12 col-sm-9">
                                            <input type="text"  placeholder="完成任务的解答视频录像地址，比如百度云，选填" class="form-control" id="task-submit-descr" name="description">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <span class="submit-tip"></span>
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="submit" data-loading-text="提交中..." class="btn btn-primary save-btn">提交</button></div>
                        </div>
                    </div>
                </div>
            </form>



        </div>
<%--         </c:if> --%>
        
      </main>
        <%@include file="footer.jsp" %>
    </div>

  </body>

</html>