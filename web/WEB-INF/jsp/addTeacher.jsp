<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${pageContext.request.contextPath}/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/signin.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ie-emulation-modes-warning.js"></script>
</head>
<body>
 <%@include file="adminheader.jsp" %>
<form class="form-signin" action="" method="">
    <h2 class="form-signin-heading">Please sign in</h2>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="" name="username">
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="password">
    <div class="checkbox">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
</form>
</body>
</html>