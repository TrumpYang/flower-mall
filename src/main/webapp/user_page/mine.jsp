<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>个人信息</title>
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon"/>

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear"
          rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/alert.css" rel="stylesheet">
    <link href="assets/css/reg.css" rel="stylesheet">
    <script src="assets/js/jquery.min.js"></script>
    <!--[if lt IE 9]>
    <script src="/oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="/oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->

</head>

<!-- Start Header Area -->
<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header middle area start -->
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- start logo area -->
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="index.jsp">
                                <img src="assets/img/logo/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="shop.html">Shop</a></li>
                                        <li><a href="product-details.jsp">Product Details</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-3">
                        <div class="header-configure-wrapper">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                                    <li class="user-hover">
                                        <a href="#">
                                            <i class="lnr lnr-user"></i>
                                        </a>
                                        <ul class="dropdown-list">
                                            <li><label>用户名：</label><label
                                                    id="user_name">${sessionScope.user.userName}</label></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#" class="minicart-btn">
                                            <i class="lnr lnr-cart"></i>
                                            <div class="notification">2</div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->

                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <div class="mobile-header d-lg-none d-md-block sticky">
        <!--mobile header top start -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-logo">
                            <a href="index.jsp">
                                <img src="assets/img/logo/logo.png" alt="Brand Logo">
                            </a>
                        </div>
                        <div class="mobile-menu-toggler">
                            <div class="mini-cart-wrap">
                                <a href="#">
                                    <i class="lnr lnr-cart"></i>
                                </a>
                            </div>
                            <div class="mobile-menu-btn">
                                <div class="off-canvas-btn">
                                    <i class="lnr lnr-menu"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
</header>
<!-- end Header Area -->
<body>

<!-- breadcrumb area start -->
<div class="breadcrumb-area common-bg">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb-wrap">
                    <nav aria-label="breadcrumb">
                        <h1>个人中心</h1>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp"><i class="fa fa-home"></i></a></li>
                            <li class="breadcrumb-item active" aria-current="page">user information</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb area end -->

<div class="rg_center">
    <div class="rg_form" style="align-content: center">



            <table style="margin: auto">
                <tr><!--label 标签的作用是当点击文字也会跳到文本输出框-->
                    <!--for属性与ID属性对应规定 label 绑定到哪个表单元素。-->

                    <input type="hidden" value="${sessionScope.user.id}" id="user_id">
                    <td class="td_left"><label for="username">用户名</label></td>

                    <td class="td_right"><input readonly type="text" name="userName" id="username"
                                                value="${sessionScope.user.userName}">
                    </td>
                </tr>
                <tr>
                    <td class="td_left"><label for="password">密码</label></td>
                    <td class="td_right"><input type="password" name="password" id="password"
                                                value="${sessionScope.user.password}"></td>
                </tr>
                <tr>
                    <td class="td_left"><label for="password">重复密码</label></td>
                    <td class="td_right"><input type="password" name="password" id="new_password"></td>
                </tr>
                <tr>
                    <td class="td_left"><label for="name">姓名</label></td>
                    <td class="td_right"><input type="text" name="name" id="name"></td>
                </tr>

                <tr><!--label 标签的作用是当点击文字也会跳到文本输出框-->
                    <td class="td_left"><label for="email">收货地址（省级用/分开）</label></td>
                    <td class="td_right"><input type="email" name="email" id="email" value="${user.address}">
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <button  id="btn_sub">保存修改</button>
                    </td>
                </tr>

            </table>

    </div>
</div>


<script>

    function init_Page() {

        if ($("#user_name").text() == "") {
            alert("您还未登录")
            window.location.replace("login.jsp");
        }


    }

    $(document)
        .ready(
            function () {
                init_Page()
                $("#btn_sub").on("click",function () {
                    $.ajax({
                        url: "http://localhost:8080/FlowerMall_war_exploded/user/update",
                        type: "POST",
                        // 当前页数第一页 每次显示三条数据 三个参数 搜索的名字 返回的数据条数
                        data: {"id": $("#user_id").val(), "userName":  $("#user_name").text(), "password": $("#new_password").val(),"address": $("#email").val()},
                        success: function (data) {
                            console.log(data)
                        }
                    });
                })
            });


</script>


</body>
</html>