<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/27
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/jquery.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <title>注册</title>
</head>
<body>
<h2>注册你的简书</h2>
<div class="container">
    <div class="form-horizontal">
        <form action="user" method="post">
            <input type="hidden" name="action" value="signUp">
            <div class="form-group">
                <label class="control-label col-md-2">昵称</label>
                <div class="col-md-2">
                    <input type="text" name="nick" class="form-control" placeholder="昵称">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">手机号</label>
                <div class="col-md-2">
                    <input type="password" name="mobile" class="form-control" placeholder="手机号">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2">密码</label>
                <div class="col-md-2">
                    <input type="password" name="password" class="form-control" placeholder="密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-10 col-md-offset-2">
                    <button class="btn btn-primary">注册</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
