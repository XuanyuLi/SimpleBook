<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/27
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>首页</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href="" class="navbar-brand">简书</a>
        </div>
        <div class="collapse navbar-collapse" id="myNav">
            <form action="" method="post" class="navbar-form navbar-left">
                <input type="text" class="form-control" placeholder="Search">
                <button class="btn btn-danger">搜文章</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span>用户登录</a></li>
                <li><a href="register.jsp"><span class="glyphicon glyphicon-question-sign"></span>注册</a></li>
                <li><a href=""><span class="glyphicon glyphicon-log-out"></span>注销</a></li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
