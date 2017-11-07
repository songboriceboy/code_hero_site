<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
   <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <script href="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script href="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/signin.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ie-emulation-modes-warning.js"></script>
    <link href="" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/editor.js"></script>
    <noscript>&lt;meta http-equiv="refresh" content="0;url=/songboriceboyarticle-post/nojs" /&gt;</noscript>
    <link rel="shortcut icon" href="http://www.cyqdata.com/skin/global/favicon.ico">
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.cyqdata.com/songboriceboy/rsd">

    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>

    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="ueditor/ueditor.all.min.js"></script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8"
            src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="ueditor/third-party/jquery-1.10.2.min.js"></script>


    <script>
        window.onload=function(){
            var editor = UE.getEditor('editor');

        }

    </script>
    <style>
        .form-item {
            padding-left: 100px;

        }
        .label-item{
            padding-left: 100px;
            padding-top: 30px;
        }
        .form-group{
            display: inline-block;
        }
    </style>
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

    </div>
</nav>
<div class="label-item">
    <label>面向人群:</label>
    <input type="text" name="">
    

    <form role="form">
        <div class="form-group">
            <label >难度:</label>
            <select class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </div>
  
   

<div class="form-item">

    <div class="input">
        <script id="editor" type="text/plain"style="width: 700px; height: 300px;"></script>
        </div>
        </div>
         <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
          </form>
  </div>
</body>
</html>