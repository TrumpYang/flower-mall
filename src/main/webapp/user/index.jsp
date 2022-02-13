<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>

    <script src="../static/js/jquery.min.js"></script>
    <script src="../static/js/index.js"></script>
    <link rel="stylesheet" href="../static/css/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../static/css/style.css">
</head>

</head>
<body>
<body onload="myfuction()">
<div class="materialContainer">
    <form class="box" action="${pageContext.request.contextPath}/user/userLogin" method="post">
        <div class="title">登录</div>
        <div class="input">
            <label for="name">用户名</label>
            <input type="text" name="username" id="name" placeholder="${username}">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="pass">密码</label>
            <input type="password" name="password" id="pass">
            <span class="spin"></span>
        </div>
        <div class="button login">
            <button>
                <span>登录</span>
                <i class="fa fa-check"></i>
            </button>
        </div>
        <a href="javascript:" class="pass-forgot">忘记密码？</a>
        <a href="javascript:" class="pass-forgot" color="red">${msg}</a>
    </form>

    <form class="overbox" method="post" action="${pageContext.request.contextPath}/user/register">
        <div class="material-button alt-2">
            <span class="shape"></span>
        </div>
        <div class="title">注册</div>
        <div class="input">
            <label for="regname">用户名</label>
            <input type="text" name="userName" id="regname">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="regpass">密码</label>
            <input type="password" name="password" id="regpass">
            <span class="spin"></span>
        </div>
        <div class="input">
            <label for="reregpass">收货地址</label>
            <input type="text" name="address" id="reregpass">
            <span class="spin"></span>
        </div>
        <div class="button">
            <button type="submit">
                <span>注册</span>
            </button>
        </div>
    </form>

</div>


</body>
</html>