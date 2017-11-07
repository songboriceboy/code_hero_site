<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
	

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/signin.css" rel="stylesheet">
	 <script src="${pageContext.request.contextPath}/assets/js/jquery-3.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/hm.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/uikit.js"></script>
 	
 	<script src="${pageContext.request.contextPath}/assets/js/template.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ie-emulation-modes-warning.js"></script>
    <style type="text/css">
        .list-group-div{
            margin-top:10px;
        }
    </style>
    <script>
 
    
    
        $(function () { 
        	
        	$.post('${pageContext.request.contextPath}/admin/tasklist','',function(data){
        		var jsonObj = JSON.parse(data);
				var html = template('user',jsonObj);
				$('#us').html(html);
        	});
        	
        });
    </script>
    <script type="text/html" id='user'>
		{{each list as t}}
		<tr>
            <td>{{t.title}}</td>

            <td>
                <a href="${pageContext.request.contextPath}/admin/modifytask/{{t.taskid}}" type="button" class="btn btn-warning btn-sm popover-show"
                   data-toggle="popover"
                   data-content="左侧的 Popover 中的一些内容 —— show 方法">修改</a>
                |
                <a href="${pageContext.request.contextPath}/admin/deletetask/{{t.taskid}}" type="button" class="btn btn-warning btn-sm popover-show"
                        data-toggle="popover"
                        data-content="左侧的 Popover 中的一些内容 —— show 方法">删除</a>

            </td>
        </tr>
{{/each}}
	</script>
</head>
<body>
 <%@include file="adminheader.jsp" %>
<div id="list" class="list-group-div">
    <table class="table table-hover">
        <thead>
        <tr>

            <th>任务标题</th>

            <th>操作</th>
        </tr>
        </thead>
        <tbody id='us'>
        
        </tbody>
    </table>
</div>
</body>
</html>