<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
    <link href="${pageContext.request.contextPath}/assets/css/taskList_f53df776.css" rel="stylesheet">
    <script data-require-id="bootstrap/collapse" src="${pageContext.request.contextPath}/assets/js/collapse.js"></script>

    <script>
//        function enalbleReg(){
//            if($('#pass2').html() == "ok" && $('#user2').html() == "可以注册"){
//
//                $('#reg').attr('disabled',false);
//            };
//        };

        function check_pass() {
            if($("#password").val()!="")
            {
                if($("#password").val()==$("#confirmPassword").val()){
                    return true;
                }
                else{
                    $('#msg2').html("两次密码不一致")
                    return false;
                }
            }
            else {
                $('#msg2').html("密码不能为空")
                return false;
            }

        }


        $(function(){


            $('#username').blur(function(){
                if($('#username').val() != ''){
                    $.get("check",{"username":$('#username').val()},function(data){

                        if(data>=1){
                            $('#msg').html("用户名已存在")
                        }
                        else if(data==0){
                            $('#msg').html("可以注册")
                        }
                    });
                }else{
                    $('#msg').html("用户名不能为空")
                }
            });

//            $('#confirmPassword').blur(function(){
//                if($("#password").val()!=""){
//                    if($("#password").val()==$("#confirmPassword").val()){
//                        $('#msg2').html("ok")
//
//                        enalbleReg();
//                    }else {
//                        $('#msg2').html("两次密码不一致")
//                    }
//                } else {
//                    $('#msg2').html("密码不能为空")
//                }
//
//            })	;

        })


    </script>
</head>

<body class="result-op" style="">
<div id="viewport">
    <header>
        <%@include file="login_reg_header.jsp" %>
    </header>


    <div class="container body-content">

        <%--<div class="return-prepage">--%>
            <%--<a href="/"><span class="glyphicon glyphicon-share-alt descend-2px"></span> 返回</a>--%>
        <%--</div>--%>


        <div class="container dualcolumns-container">
            <div>
                <h2>

                    <span class="glyphicon glyphicon-registration-mark descend-4px" aria-hidden="true"></span> 注册

                </h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <%--<div class="container" style="margin-bottom: 16px;">--%>
                        <%--<div class="row">--%>
                            <%--<a class="visible-sm visible-xs pull-right" show-introduction>--%>
                                <%--<span class="glyphicon glyphicon-question-sign"></span><span style="margin-left:4px;">--%>
                                <%--说明--%>
                        <%--</span>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>


                    <form action="${pageContext.request.contextPath}/register" method="post" onsubmit="return check_pass()">    <div class="form-group">
                        <label>用户名：（* 必填）</label>
                        <div class="input-group">
                            <input class="form-control" data-val="true" data-val-length="* 用户名的长度不能大于20" data-val-length-max="20" data-val-required="* 用户名不能为空" id="username" name="username" placeholder="不是昵称，是登录用户名" type="text" value="" />
                            <span class="field-validation-valid" data-valmsg-for="UserName" data-valmsg-replace="true" id="msg" style="color:blue"></span>
                        </div>

                    </div>
                        <div class="form-group">
                            <label>密码：（* 必填）</label>
                            <input class="form-control" data-val="true" data-val-length="* 密码的长度不能小于4，大于20" data-val-length-max="20" data-val-length-min="4" data-val-required="* 密码不能为空" id="password" name="password" placeholder="不少于4个字符" type="password" />
                            <span class="field-validation-valid" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                        </div>
                        <div class="form-group">
                            <label>验证密码：（* 必填）</label>
                            <input class="form-control" data-val="true" data-val-equalto="* 确认密码和密码不一致" data-val-equalto-other="*.Password" data-val-required="* 确认密码不能为空" id="confirmPassword" name="confirmPassword" placeholder="和密码相同" type="password" />
                            <span class="field-validation-valid" data-valmsg-for="UserName" data-valmsg-replace="true" id="msg2" style="color:blue"></span>
                        </div>

                        <div class="submit">
                            <input type="submit" class="btn btn-primary" value="提交"  />
                            <input type="reset" class="btn btn-default" />
                            <a href="${pageContext.request.contextPath}/login" class="btn pull-right"><span class="glyphicon glyphicon-log-in"></span> 登录</a>
                        </div>
                    </form>




                    <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="introductionLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="introductionLabel"></h4>
                                </div>
                                <div class="modal-body">
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">知道了</button>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1">
                    <div page-introduction>
                        <h3 class="text-info" style="margin-bottom: 20px;"><span class="glyphicon glyphicon-question-sign descend-4px"></span> 说明</h3>
                        <ol class="page-introduction-ol" zyf-page-introduction-body>

                            <li>初学者想知道的是，有没有一种方法，按照师傅的要求全做到了，就能获得编程能力，就可以成为一名合格的程序员。</li>
                            <li><a href="${pageContext.request.contextPath}/about_us" target="_blank">代码英雄网</a>的宗旨是，尝试建立一套掌握编程技能的标准，设计100个左右的编程任务，只要独立完成了每个任务，就可以胜任编程工作。</li>
                            <li>我们会定期发布编程任务，这些任务经过精心设计，涵盖一名web开发者所必备重点知识，并给出编程思路和提示；任务。发布一周后
                                ，会给出官方答案，大家普遍关注的任务会提供视频讲解。</li>
                            <li>编程任务覆盖编程知识基本运用，web前端，web后端等各个方面，除web前端外，解答不限编程语言，推荐使用java。</li>
                            <li>本网站目前还未提供笔记功能，朋友们可以将自己的解答发布到
                                <a href="http://www.cnblogs.com">博客园</a>
                                <a href="https://segmentfault.com/">segmentfault</a>
                                <a href="http://www.csdn.net">CSDN</a>
                                <a href="http://www.jianshu.com">简书</a>
                                等平台，然后将博文链接，提交到本网站。
                            </li>
                            <br>
                            <li><a href="${pageContext.request.contextPath}/about_us" target="_blank"><span class="glyphicon glyphicon-hand-right"></span> 了解更多</a></li>

                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <hr />

    </div>



    <%@include file="footer.jsp" %>
</div>

</body>


</html>