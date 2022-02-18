<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>下单页</title>
    <link href="assets/css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="assets/css/base.css"/>
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
    <script type="text/javascript" src="assets/js/jquery_cart.js"></script>
    <!--All Vendor Js -->
    <script src="assets/js/vendor.js"></script>
    <!-- Active Js -->
    <script src="assets/js/active.js"></script>
    <script src="assets/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/css/checkOut.css"/>

</head>




<body>

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
                                    <li>
                                        <a href="#" class="offcanvas-btn">
                                            <i class="lnr lnr-magnifier"></i>
                                        </a>
                                    </li>
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
<!--收货地址body部分开始-->
<div class="border_top_cart">

    <div class="container">
        <div class="checkout-box">
            <form id="checkoutForm" action="#" method="post">
                <div class="checkout-box-bd">

                    <!-- 收货地址 -->
                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">收货地址</h2>
                            <!---->
                        </div>
                        <div class="box-bd">
                            <div class="clearfix xm-address-list" id="checkoutAddrList">
                                <dl class="item">
                                    <dt>
                                        <strong class="itemConsignee">${sessionScope.user.userName}</strong>
                                        <span class="itemTag tag">家</span>
                                    </dt>
                                    <dd>
                                        <p class="tel itemTel">15961726437</p>
                                        <p class="itemRegion" id="address">${sessionScope.user.address}</p>
                                        <span class="edit-btn J_editAddr">编辑</span>
                                    </dd>

                                </dl>
                            </div>

                            <div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
                        </div>
                    </div>
                    <!-- 收货地址 END-->
                    <div id="checkoutPayment">
                        <!-- 支付方式 -->
                        <div class="xm-box">
                            <div class="box-hd ">
                                <h2 class="title">支付方式</h2>
                            </div>
                            <div class="box-bd">
                                <ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected">
                                        <input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
                                        <p>
                                            在线支付 <span></span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 支付方式 END-->
                        <div class="xm-box">
                            <div class="box-hd ">
                                <h2 class="title">配送方式</h2>
                            </div>
                            <div class="box-bd">
                                <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected">
                                        <p>
                                            快递配送（免运费） <span></span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 配送方式 END-->                    <!-- 配送方式 END-->
                    </div>
                    <!-- 送货时间 -->
                    <div class="xm-box">
                        <div class="box-hd">
                            <h2 class="title">送货时间</h2>
                        </div>
                        <div class="box-bd">
                            <ul class="checkout-option-list clearfix J_optionList">
                                <li class="item selected"><input type="radio" checked="checked"
                                                                 name="Checkout[best_time]" value="1">
                                    <p>不限送货时间<span>周一至周日</span></p></li>
                                <li class="item "><input type="radio" name="Checkout[best_time]" value="2">
                                    <p>工作日送货<span>周一至周五</span></p></li>
                                <li class="item "><input type="radio" name="Checkout[best_time]" value="3">
                                    <p>双休日、假日送货<span>周六至周日</span></p></li>
                            </ul>
                        </div>
                    </div>
                    <!-- 送货时间 END-->

                </div>
                <div class="checkout-box-ft">
                    <!-- 商品清单 -->
                    <form action="#" method="post" id="checkoutGoodsList" class="checkout-goods-box">
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">确认订单信息</h2>
                            </div>
                            <div class="box-bd">
                                <dl class="checkout-goods-list">

                                </dl>
                                <div class="checkout-count clearfix">

                                    <!-- checkout-count-extend -->
                                    <div class="checkout-price">
                                        <ul>

                                            <li>
                                                订单总额：<span id="sumPrice">244元</span>
                                            </li>
                                            <li>
                                                活动优惠：<span>-0元</span>
                                                <script type="text/javascript">
                                                    checkoutConfig.activityDiscountMoney=0;
                                                    checkoutConfig.totalPrice=244.00;
                                                </script>
                                            </li>
                                            <li>
                                                优惠券抵扣：<span id="couponDesc">-0元</span>
                                            </li>
                                            <li>
                                                运费：<span id="postageDesc">0元</span>
                                            </li>
                                        </ul>
                                        <p class="checkout-total">应付总额：<span><strong id="totalPrice">244</strong>元</span></p>
                                    </div>
                                    <!--  -->
                                </div>
                            </div>

                            </div>


                        <!-- 商品清单 END -->
                        <div class="checkout-confirm">
                            <button  class="btn" id="checkoutToPay">立即下单</button>
                        </div>

                    </form>

                </div>

            </form>

        </div>


    </div>

    <!--收货地址body部分结束-->



</div>

<script type="text/javascript">

    //自定义弹框
    function Toast(msg,duration){
        duration=isNaN(duration)?3000:duration;
        var m = document.createElement('div');
        m.innerHTML = msg;
        m.style.cssText="width: 60%;min-width: 150px;opacity: 0.7;height: 30px;color: rgb(255, 255, 255);line-height: 30px;text-align: center;border-radius: 5px;position: fixed;top: 40%;left: 20%;z-index: 999999;background: rgb(0, 0, 0);font-size: 12px;";
        document.body.appendChild(m);
        setTimeout(function() {
            var d = 0.5;
            m.style.webkitTransition = '-webkit-transform ' + d + 's ease-in, opacity ' + d + 's ease-in';
            m.style.opacity = '0';
            setTimeout(function() { document.body.removeChild(m) }, d * 1000);
        }, duration);
    }

    $(document)
        .ready(
            function () {

                $.ajax({
                    url: "http://localhost:8080/FlowerMall_war_exploded/cart/list",
                    type: "POST",
                    data: {"userName": $("#user_name").text()},
                    success: function (data) {
                        console.log(data)
                        $.each(data, function (i, result) {
                            var html="     <div class=\"item clearfix\">\n" +
                                "                                        <div class=\"item-row\">\n" +
                                "                                            <div class=\"col col-1\">\n" +
                                "                                                <div class=\"g-pic\">\n" +
                                "                                                    <img src=" +result['pic']+"\n" +
                                "                                                         srcset=" +result['pic']+
                                "                                                         width=\"100\" height=\"100\"/>\n" +
                                "                                                </div>\n" +
                                "                                                <div class=\"g-info\">\n" +
                                "                                                    <a href=\"#\">\n" + result['productName']+
                                "                                                        </a>\n" +
                                "                                                </div>\n" +
                                "                                            </div>\n" +
                                "\n" +
                                "                                            <div class=\"col col-2\">" +result['price']+"</div>\n" +
                                "                                            <div class=\"col col-3\">" +result['number']+"</div>\n" +
                                "                                            <div class=\"col col-4\">" +result['singleTotal']+ "元</div>\n" +
                                "                                        </div>\n" +
                                "                                    </div>"

                            $("dl.checkout-goods-list").append(html)
                            $("#totalPrice").text(result['totalPrice'])
                            $("#sumPrice").text(result['totalPrice']+"RMB")
                        })


                    }
                });

                $("#checkoutToPay").on("click",function (){
                    var userName=$("#user_name").text()
                    var address =$("#address").text()
                    var price =$("#totalPrice").text()

                    $.ajax({
                        url: "http://localhost:8080/FlowerMall_war_exploded/order/addOrder",
                        type: "POST",
                        data: {"userName": userName,"address":address,"price":price},
                        success:function (data) {
                            if(data=="success"){
                                Toast("下单成功",200)
                            }
                        }
                    })
                })
            });



</script>