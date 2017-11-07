<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <script href="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script href="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
    <%--<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/editor-md-master/css/editormd.css" />
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/signin.css" rel="stylesheet">

    <%--<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>--%>
    <%--<script src="${pageContext.request.contextPath}/assets/js/ie-emulation-modes-warning.js"></script>--%>
    <link href="" type="text/css" rel="stylesheet">
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/editor.js"></script>--%>
    <%--<noscript>&lt;meta http-equiv="refresh" content="0;url=/songboriceboyarticle-post/nojs" /&gt;</noscript>--%>
    <link rel="shortcut icon" href="http://www.cyqdata.com/skin/global/favicon.ico">
    <%--<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.cyqdata.com/songboriceboy/rsd">--%>

    <%--<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>--%>

    <%--<script type="text/javascript" charset="utf-8"--%>
            <%--src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8"--%>
            <%--src="ueditor/ueditor.all.min.js"></script>--%>
    <%--<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->--%>
    <%--<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->--%>
    <%--<script type="text/javascript" charset="utf-8"--%>
            <%--src="ueditor/lang/zh-cn/zh-cn.js"></script>--%>
    <%--<script type="text/javascript" charset="utf-8"--%>
            <%--src="ueditor/third-party/jquery-1.10.2.min.js"></script>--%>

    <script src="${pageContext.request.contextPath}/assets/editor-md-master/jquery.min.js"></script>
    <script>

        var testEditor = null;
        $(function () {



            var testEditor = editormd({
                id: "test-editormd",
//                height: 840,
                width   : "90%",
                height  : 640,
                path: "${pageContext.request.contextPath}/assets/editor-md-master/lib/",
                toolbarIcons: function () {
                    // Or return editormd.toolbarModes[name]; // full, simple, mini
                    // Using "||" set icons align right.
                    return ["undo", "redo", "|", "bold", "hr", "|", "preview", "watch", "|", "fullscreen", "info", "testIcon", "testIcon2", "file", "faicon", "||", "watch", "fullscreen", "preview", "testIcon"]
                },
                //toolbar  : false,             // 关闭工具栏
                codeFold: true,
                searchReplace: true,
                saveHTMLToTextarea: true,      // 保存 HTML 到 Textarea
                htmlDecode: "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
                emoji: true,
                taskList: true,
                tocm: true,          // Using [TOCM]
                tex: true,                      // 开启科学公式 TeX 语言支持，默认关闭
                //previewCodeHighlight : false,  // 关闭预览窗口的代码高亮，默认开启
                flowChart: true,                // 疑似 Sea.js与 Raphael.js 有冲突，必须先加载 Raphael.js ，Editor.md 才能在 Sea.js 下正常进行；
                sequenceDiagram: true,          // 同上
                //dialogLockScreen : false,      // 设置弹出层对话框不锁屏，全局通用，默认为 true
                //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为 true
                //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为 true
                //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为 0.1
                //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为 #fff
                imageUpload: true,
                imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL: "{:url('api/uploader/uploadEditorImg?pic_type=10')}",
                onload: function () {
                    this.on('paste', function () {
                        console.log(1);
                    });
                }
            });

            /**
             * 咱贴上传图片
             */
            $("#test-editormd").on('paste', function (ev) {
                var data = ev.clipboardData;
                var items = (event.clipboardData || event.originalEvent.clipboardData).items;
                for (var index in items) {
                    var item = items[index];
                    if (item.kind === 'file') {
                        var blob = item.getAsFile();
                        var reader = new FileReader();
                        reader.onload = function (event) {
                            var base64 = event.target.result;
                            //ajax上传图片
                            $.post("${pageContext.request.contextPath}/article/uploadimg",{base:base64}, function (res) {
                                // layer.msg(ret.msg);
                                var ret = JSON.parse(res);
                                if (ret.code === 1) {
                                    //新一行的图片显示
                                    testEditor.insertValue("\n![" + "image.png" + "](${pageContext.request.contextPath}/assets/" + ret.path + ")");
                                }
                            });
                        }; // data url!
                        var url = reader.readAsDataURL(blob);
                    }
                }
            });

            $("#submit").click(function () {
                var param = $("#article_form").serialize();
                $.post('${pageContext.request.contextPath}/article/save_article.action', param)
                        .done(function (article) {
                            if(article.title != '')
                                alert("ok");
                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            })

        });

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
<%@include file="adminheader.jsp" %>
<div>
    <form action="#" method="post"
          target="_blank" id = "article_form">
        <h1>完整demo</h1>
        <c:if test="${!empty task}">
            <input type="hidden" name="taskid" value="${task.taskid}" id = "aid">
        </c:if>



        标题： <input type="text" name="title" value="${task.title}" id = "title">

        分类：
        <select name="category">
            <c:forEach items="${task_class}" var="c">
                <c:choose>
                    <c:when test="${c.classid==task.taskclass}">
                        <option value="${c.classid}" selected>${c.classname}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${c.classid}">${c.classname}</option>
                    </c:otherwise>
                </c:choose>

            </c:forEach>
        </select>

        <div class="editormd" id="test-editormd">



            <textarea class="editormd-markdown-textarea" name="markdown" id = "mark_content">${task.markdown}</textarea>
            <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
            <%--<textarea class="editormd-html-textarea" name="article_content"></textarea>--%>

        </div>
        <input type="button" value="保存博文" id = "submit">
    </form>

</div>
</body>

<script src="${pageContext.request.contextPath}/assets/editor-md-master/editormd.min.js"></script>
</html>