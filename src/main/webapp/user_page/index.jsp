<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="meta description">
    <title>Home</title>

    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />

    <!-- Google fonts include -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear" rel="stylesheet">

    <!-- All Vendor & plugins CSS include -->
    <link href="assets/css/vendor.css" rel="stylesheet">
    <!-- Main Style CSS -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/alert.css" rel="stylesheet">

    <!--[if lt IE 9]>
<script src="/oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="/oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

<![endif]-->

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
                                                <li><label>用户名：</label><label id="user_name">${sessionScope.userName}</label></li>
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

    <!-- off-canvas menu start -->
    <aside class="off-canvas-wrapper">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner-content">
            <div class="btn-close-off-canvas">
                <i class="lnr lnr-cross"></i>
            </div>

            <div class="off-canvas-inner">
                <!-- search box start -->
                <div class="search-box-offcanvas">
                    <form>
                        <input type="text" placeholder="Search Here...">
                        <button class="search-btn"><i class="lnr lnr-magnifier"></i></button>
                    </form>
                </div>
                <!-- search box end -->

                <!-- mobile menu start -->
                <div class="mobile-navigation">

                    <!-- mobile menu navigation start -->
                    <nav>
                        <ul class="mobile-menu">
                            <li><a href="index.jsp">Home</a></li>
                                            <li><a href="shop.html">Shop</a></li>
                                            <li><a href="product-details.jsp">Product Details</a></li>
                        </ul>
                    </nav>
                    <!-- mobile menu navigation end -->
                </div>
                <!-- mobile menu end -->

                <div class="mobile-settings">
                    <ul class="nav">
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Currency
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="currency">
                                    <a class="dropdown-item" href="#">$ USD</a>
                                    <a class="dropdown-item" href="#">$ EURO</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="dropdown mobile-top-dropdown">
                                <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    My Account
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="myaccount">
                                    <a class="dropdown-item" href="#">my account</a>
                                    <a class="dropdown-item" href="login.jsp"> login</a>
                                    <a class="dropdown-item" href="login.jsp">register</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- offcanvas widget area start -->
                <div class="offcanvas-widget-area">
                    <div class="off-canvas-contact-widget">
                        <ul>
                            <li><i class="fa fa-mobile"></i>
                                <a href="#">0123456789</a>
                            </li>
                            <li><i class="fa fa-envelope-o"></i>
                                <a href="#">info@yourdomain.com</a>
                            </li>
                        </ul>
                    </div>
                    <div class="off-canvas-social-widget">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
                <!-- offcanvas widget area end -->
            </div>
        </div>
    </aside>
    <!-- off-canvas menu end -->



    <!-- main wrapper start -->
    <main>
        <!-- slider area start -->
        <section class="slider-area">
            <div class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
                <!-- single slider item start -->
                <div class="hero-single-slide ">
                    <div class="hero-slider-item bg-img" data-bg="assets/img/slider/home1-slide1.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="hero-slider-content slide-1">
                                        <span>valentine gift</span>
                                        <h1>Fresh Your Mind</h1>
                                        <h2>& Feeling love</h2>
                                        <a href="shop.html" class="btn-hero">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single slider item end -->

                <!-- single slider item start -->
                <div class="hero-single-slide">
                    <div class="hero-slider-item bg-img" data-bg="assets/img/slider/home1-slide2.jpg">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="hero-slider-content slide-2">
                                        <span>valentine gift</span>
                                        <h1>Fresh Your Mind</h1>
                                        <h2>& Feeling love</h2>
                                        <a href="shop.html" class="btn-hero">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single slider item start -->
            </div>
        </section>
        <!-- slider area end -->


        <!-- our product area start -->
        <section class="our-product section-space">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h2>表达浪漫 就要高调一点</h2>
                            <p>今天的花束有爱的味道</p>
                        </div>
                    </div>
                </div>


<!--                商品展示列表 这里很关键！！！！！！！！-->

                <div class="row mtn-40" id="div_container">

<!--                    利用ajax 循环生成 item -->

                    <!-- product single item start -->
                    <!-- product single item end -->
                </div>
            </div>
        </section>
        <!-- our product area end -->

        <!-- banner statistics start -->
        <section class="banner-statistics-right">
            <div class="container">
                <div class="row">
                    <!-- start banner item start -->
                    <div class="col-md-6">
                        <div class="banner-item banner-border">
                            <figure class="banner-thumb">
                                <a href="#">
                                    <img src="assets/img/banner/banner-1.jpg" alt="">
                                </a>
                                <figcaption class="banner-content banner-content-right">
                                    <h2 class="text1">for you</h2>
                                    <h2 class="text2">Tulip Flower</h2>
                                    <a class="store-link" href="#">shop now</a>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <!-- start banner item end -->

                    <!-- start banner item start -->
                    <div class="col-md-6">
                        <div class="banner-item banner-border">
                            <figure class="banner-thumb">
                                <a href="#">
                                    <img src="assets/img/banner/banner-2.jpg" alt="">
                                </a>
                                <figcaption class="banner-content banner-content-right">
                                    <h2 class="text1">for you</h2>
                                    <h2 class="text2">Flower & Box</h2>
                                    <a class="store-link" href="#">shop now</a>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <!-- start banner item end -->
                </div>
            </div>
        </section>
        <!-- banner statistics end -->

        <!-- trending product area start -->
        <section class="top-sellers section-space">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title text-center">
                            <h2>火爆推荐</h2>
                            <p>鲜花不服袍泽之义</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product-carousel--4 slick-row-15 slick-sm-row-10 slick-arrow-style" id="top_seller_container">
                            <!-- product single item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="product-details.jsp">
                                        <img class="pri-img" src="assets/img/product/product-9.jpg" alt="product">

                                    </a>
                                    <div class="product-badge">
                                        <div class="product-label new">
                                            <span>new</span>
                                        </div>
                                    </div>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i class="lnr lnr-heart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" data-placement="left" title="Quick View"><i class="lnr lnr-magnifier"></i></span></a>
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i class="lnr lnr-cart"></i></a>
                                    </div>
                                </figure>
                                <div class="product-caption">
                                    <p class="product-name">
                                        <a  id="fakeButton">Blossom bouquet flower</a>
                                    </p>
                                    <div class="price-box">
                                        <span class="price-regular">$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="product-details.jsp">
                                        <img class="pri-img" src="assets/img/product/product-9.jpg" alt="product">

                                    </a>
                                    <div class="product-badge">
                                        <div class="product-label new">
                                            <span>new</span>
                                        </div>
                                    </div>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Add to wishlist"><i class="lnr lnr-heart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" data-placement="left" title="Quick View"><i class="lnr lnr-magnifier"></i></span></a>
                                        <a href="#" data-toggle="tooltip" data-placement="left" title="Add to Cart"><i class="lnr lnr-cart"></i></a>
                                    </div>
                                </figure>
                                <div class="product-caption">
                                    <p class="product-name">
                                        <a href="product-details.jsp">Blossom bouquet flower</a>
                                    </p>
                                    <div class="price-box">
                                        <span class="price-regular">$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- product single item end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- trending product area end -->



    </main>
    <!-- main wrapper end -->



    <!-- Quick view modal start -->
    <div class="modal" id="quick_view">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <!-- product details inner end -->
                    <div class="product-details-inner">
                        <div class="row">
                            <div class="col-lg-5 col-md-5">
                                <div class="product-large-slider">
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img1.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img2.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img3.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-large-img">
                                        <img src="assets/img/product/product-details-img4.jpg" alt="product-details" />
                                    </div>
                                </div>
                                <div class="pro-nav slick-row-10 slick-arrow-style">
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img1.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img2.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img3.jpg" alt="product-details" />
                                    </div>
                                    <div class="pro-nav-thumb">
                                        <img src="assets/img/product/product-details-img4.jpg" alt="product-details" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7">
                                <div class="product-details-des quick-details">
                                    <h3 class="product-name">Orchid flower white stick</h3>
                                    <div class="ratings d-flex">
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <span><i class="lnr lnr-star"></i></span>
                                        <div class="pro-review">
                                            <span>1 Reviews</span>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <span class="price-regular">$70.00</span>
                                        <span class="price-old"><del>$90.00</del></span>
                                    </div>
                                    <h5 class="offer-text"><strong>Hurry up</strong>! offer ends in:</h5>
                                    <div class="product-countdown" data-countdown="2019/08/25"></div>
                                    <div class="availability">
                                        <i class="fa fa-check-circle"></i>
                                        <span>200 in stock</span>
                                    </div>
                                    <p class="pro-desc">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                        eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
                                    <div class="quantity-cart-box d-flex align-items-center">
                                        <h5>qty:</h5>
                                        <div class="quantity">
                                            <div class="pro-qty"><input type="text" value="1"></div>
                                        </div>
                                        <div class="action_link">
                                            <a class="btn btn-cart2" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="useful-links">
                                        <a href="#" data-toggle="tooltip" title="Compare"><i
                                            class="lnr lnr-sync"></i>compare</a>
                                        <a href="#" data-toggle="tooltip" title="Wishlist"><i
                                            class="lnr lnr-heart"></i>wishlist</a>
                                    </div>
                                    <div class="like-icon">
                                        <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                        <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                        <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                        <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- product details inner end -->
                </div>
            </div>
        </div>
    </div>
    <!-- Quick view modal end -->

    <!-- offcanvas search form start  搜索框 完成-->
    <div class="offcanvas-search-wrapper">
        <div class="offcanvas-search-inner">
            <div class="offcanvas-close">
                <i class="lnr lnr-cross"></i>
            </div>
            <div class="container">
                <div class="offcanvas-search-box">
                    <div class="d-flex bdr-bottom w-100">
                        <input type="text" placeholder="输入鲜花名字" id="search_input">
                        <button class="search-btn"><i class="lnr lnr-magnifier"></i>search</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offcanvas search form end -->

    <!-- offcanvas mini cart start -->
    <div class="offcanvas-minicart-wrapper">
        <div class="minicart-inner">
            <div class="offcanvas-overlay"></div>
            <div class="minicart-inner-content">
                <div class="minicart-close">
                    <i class="lnr lnr-cross"></i>
                </div>
                <div class="minicart-content-box">

                    <div class="minicart-item-wrapper">
                        <ul id="cartContainer">
                            <!--   已经移交 ajax 动态渲染-->
                        </ul>
                    </div>

                    <div class="minicart-pricing-box">
                        <ul id="priceContainer">
                            <!--                        已经移交 ajax 动态渲染-->
                        </ul>
                    </div>

                    <div class="minicart-button">
                        <a href="#"><i class="fa fa-shopping-cart"></i> view cart</a>
                        <a href="#"><i class="fa fa-share"></i> checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offcanvas mini cart end -->
    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->

    <%--    公告提示框   --%>
    <div class="mask hide">
        <div class="prompt_box">
            <div class="prompt_title">
                <h3 class="prompt_tit">系统提示</h3>
                <span class="prompt_cancel"></span>
            </div>
            <div class="prompt_cont">
                <p class="prompt_text">这是一个对话框</p>
                <img class="prompt_image" src="assets/img/flower.jpg" width="150px" height="150px">
                <span class="prompt_sure">朕知道了</span>
            </div>
        </div>
    </div>



    <!-- All vendor & plugins & active js include here -->
    <!--All Vendor Js -->
    <script src="assets/js/vendor.js"></script>
    <!-- Active Js -->
    <script src="assets/js/active.js"></script>
    <script src="assets/js/jquery.min.js"></script>
<!--    ajax 请求 js-->

    <script>

        function ajaxShowCart(userName){

            if(userName==""){

                $('div.minicart-content-box').empty()

                $('div.minicart-content-box').append("<img src=\"assets/img/tip/tip.jpg\" alt=\"Smiley face\" width=\"300\" height=\"300\">")

                $('div.minicart-content-box').append(" <label >您还未登陆，购物车空空如也</label>")
            }
            else{
                //根据用户名请求所有信息

                $.ajax({
                    url: "http://localhost:8080/FlowerMall_war_exploded/cart/list",
                    type: "POST",
                    // 当前页数第一页 每次显示8条数据
                    data: {"userName": userName},
                    success: function (data) {
                        console.log(data)

                        $.each(data, function (i, result) {
                            console.log(result['pic'])
                            var cartHtml="<li class=\"minicart-item\">\n" +
                                "                            <div class=\"minicart-thumb\">\n" +
                                "                                <a href=\"index.jsp\">\n" +
                                "                                    <img src= " +result['pic']+" alt=\"product\">\n" +
                                "                                </a>\n" +
                                "                            </div>\n" +
                                "                            <div class=\"minicart-content\">\n" +
                                "                                <h3 class=\"product-name\">\n" +
                                "                                    <a href=\"product-details.jsp\">" +result['productName']+ "</a>\n" +
                                "                                </h3>\n" +
                                "                                <p>\n" +
                                "                                    <span class=\"cart-quantity\">" +result['number']+ " <strong>&times;</strong></span>\n" +
                                "                                    <span class=\"cart-price\"> ￥" +result['price']+ "</span>\n" +
                                "                                </p>\n" +
                                "                            </div>\n" +
                                "                            <button class=\"minicart-remove\"><i class=\"lnr lnr-cross\"></i></button>\n" +
                                "                        </li>"

                            $('#cartContainer').append(cartHtml)

                            var priceBox= " <li>\n" +
                                "                            <span>商品原价</span>\n" +
                                "                            <span><strong> ￥" +result['totalPrice']+"</strong></span>\n" +
                                "                        </li>\n" +
                                "                        <li>\n" +
                                "                            <span>运费包邮</span>\n" +
                                "                            <span><strong>" +"￥ 0.0"+ "</strong></span>\n" +
                                "                        </li>\n" +
                                "                        <li>\n" +
                                "                            <span> 关税</span>\n" +
                                "                            <span><strong>$ 0.0</strong></span>\n" +
                                "                        </li>\n" +
                                "                        <li class=\"total\">\n" +
                                "                            <span>total</span>\n" +
                                "                            <span><strong>" +result['totalPrice']+ "元</strong></span>\n" +
                                "                        </li>"
                            $('#priceContainer').append(priceBox)
                        });
                    }
                })






            }



        }

        function init_Page(){

            if ($("#user_name").text()==""){
                var initOption="<li><a href=\"login.jsp\">login</a></li>"+
                    "<li><a href=\"login.jsp\">register</a></li>"
                $("ul.dropdown-list").append(initOption)
            }else {
                var initOption ="<li><a href=\"http://localhost:8080/FlowerMall_war_exploded/user/logout\">退出登录</a></li>"
                $("ul.dropdown-list").append(initOption)
            }
        }

        function init_message(){
            // 加载完毕 用 ajax 请求service 层 看是否 有新的公告 根本原理：查询数据库
            // 看是否有未读消息

            $('.prompt_sure,.prompt_cancel').click(function () {
                $('.mask').addClass('hide');
            })
            $.ajax({
                url: "http://localhost:8080/FlowerMall_war_exploded/message/showNew",
                type: "GET",
                success: function (data) {
                    var title=data.title
                    var context =data.context
                    if(data=null){
                        $('.mask').addClass('hide');
                    }else{
                        $('.prompt_tit').text(title);
                        $('.prompt_text').text(context);
                        $('.mask').removeClass('hide');
                    }
                }, dataType: "json"
            });
        }

        function ajaxSearch(name,current,size){
            //页面加载去请求ajax
            $.ajax({
                url: "http://localhost:8080/FlowerMall_war_exploded/flower/search",
                type: "POST",
                // 当前页数第一页 每次显示三条数据 三个参数 搜索的名字 返回的数据条数
                data: {"name":name,"current": current, "size": size},
                success: function (data) {
                    $('#div_container').empty()
                    var res = data.records
                    //循环加载数据
                    $.each(res, function (i, result) {


                        var addHtml="<!-- product single item start -->\n" +
                            "                    <div class=\"col-lg-3 col-md-4 col-sm-6\">\n" +
                            "                        <div class=\"product-item mt-40\">\n" +
                            "                            <figure class=\"product-thumb\">\n" +
                            "                                <a href=\"go(" +result['id']+ ")\">\n" +
                            "                                    <img class=\"pri-img\" src=" +result['pic']+ " alt=\"product\">\n" +
                            "                                </a>\n" +
                            "                                <div class=\"product-badge\">\n" +
                            "                                    <div class=\"product-label new\">\n" +
                            "                                        <span>new</span>\n" +
                            "                                    </div>\n" +
                            "                                    <div class=\"product-label discount\">\n" +
                            "                                        <span>10%</span>\n" +
                            "                                    </div>\n" +
                            "                                </div>\n" +
                            "                                <div class=\"button-group\">\n" +
                            "                                    <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to wishlist\"><i class=\"lnr lnr-heart\"></i></a>\n" +
                            "                                    <a href=\"#\" data-toggle=\"modal\" data-target=\"#quick_view\"><span data-toggle=\"tooltip\" data-placement=\"left\" title=\"Quick View\"><i class=\"lnr lnr-magnifier\"></i></span></a>\n" +
                            "                                    <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Cart\"><i class=\"lnr lnr-cart\"></i></a>\n" +
                            "                                </div>\n" +
                            "                            </figure>\n" +
                            "                            <div class=\"product-caption\">\n" +
                            "                                <p class=\"product-name\">\n" +
                            "\n" +
                            "<!--                                    加一个隐藏id 属性 方便跳转到 详情页-->\n" +
                            "  <input type=\"hidden\" id=\"flower_id\">"+
                            "                                    <a href=\"product-details.jsp\">" +
                            "</a>\n" +                          result['flowerName']+
                            "                                </p>\n" +
                            "                                <div class=\"price-box\">\n" +
                            "                                    <span class=\"price-regular\">$" +
                            result['price']+

                            "</span>\n" +
                            "\n" +
                            "<!--                                    可以动态修改值-->\n" +
                            "                                    <span class=\"price-old\"><del>$70.00</del></span>\n" +
                            "                                </div>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                    </div>\n" +
                            "                    <!-- product single item end -->"




                        $('#div_container').append(addHtml);

                    });
                    var showMore = " <div class=\"col-12\">\n" +
                        "                        <div class=\"view-more-btn\">\n" +
                        "                            <a class=\"btn-hero btn-load-more\" href=\"shop.html\">view more products</a>\n" +
                        "                        </div>\n" +
                        "                    </div>"


                    $('#div_container').append(showMore);


                }, dataType: "json"
            });
        }

        //请求商品信息以及页码函数
        function ajaxQuery(current, size) {
            //页面加载去请求ajax
            $.ajax({
                url: "http://localhost:8080/FlowerMall_war_exploded/flower/findAll",
                type: "POST",
                // 当前页数第一页 每次显示8条数据
                data: {"current": current, "size": size},
                success: function (data) {
                    console.log(data)
                    var res = data.records
                    //循环加载数据
                    $.each(res, function (i, result) {

                        var addHtml="<!-- product single item start -->\n" +
                            "                    <div class=\"col-lg-3 col-md-4 col-sm-6\">\n" +
                            "                        <div class=\"product-item mt-40\">\n" +
                            "                            <figure class=\"product-thumb\">\n" +
                            "                            <a href=\"http://localhost:8080/FlowerMall_war_exploded/flower/queryById?id=" +result['id']+ "\"" +">"+
                            "                                    <img class=\"pri-img\" src=" +result['pic']+ " alt=\"product\">\n" +
                            "                                </a>\n" +
                            "                                <div class=\"product-badge\">\n" +
                            "                                    <div class=\"product-label new\">\n" +
                            "                                        <span>new</span>\n" +
                            "                                    </div>\n" +
                            "                                    <div class=\"product-label discount\">\n" +
                            "                                        <span>10%</span>\n" +
                            "                                    </div>\n" +
                            "                                </div>\n" +
                            "                                <div class=\"button-group\">\n" +
                            "                                    <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to wishlist\"><i class=\"lnr lnr-heart\"></i></a>\n" +
                            "                                    <a href=\"#\" data-toggle=\"modal\" data-target=\"#quick_view\"><span data-toggle=\"tooltip\" data-placement=\"left\" title=\"Quick View\"><i class=\"lnr lnr-magnifier\"></i></span></a>\n" +
                            "                                    <a href=\"#\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Cart\"><i class=\"lnr lnr-cart\"></i></a>\n" +
                            "                                </div>\n" +
                            "                            </figure>\n" +
                            "                            <div class=\"product-caption\">\n" +
                            "                                <p class=\"product-name\">\n" +
                            "\n" +
                            "<!--                                    加一个隐藏id 属性 方便跳转到 详情页-->\n" +
                            "                                    <a href=\"product-details.jsp\">" +
                            "</a>\n" +                          result['flowerName']+
                            "                                </p>\n" +
                            "                                <div class=\"price-box\">\n" +
                            "                                    <span class=\"price-regular\">$" +
                                                    result['price']+

                            "</span>\n" +
                            "\n" +
                            "<!--                                    可以动态修改值-->\n" +
                            "                                    <span class=\"price-old\"><del>$70.00</del></span>\n" +
                            "                                </div>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                    </div>\n" +
                            "                    <!-- product single item end -->"


                        $('#div_container').append(addHtml);



                    });
                //    循环之后 添加 ShowMore

                    var showMore = " <div class=\"col-12\">\n" +
                        "                        <div class=\"view-more-btn\">\n" +
                        "                            <a class=\"btn-hero btn-load-more\" href=\"shop.html\">view more products</a>\n" +
                        "                        </div>\n" +
                        "                    </div>"

                    $('#div_container').append(showMore);
                }, dataType: "json"
            });

        }





        $(document)
            .ready(
                function () {
                    init_Page()

                    init_message()
                    //一开始请求 第一页 三条数据
                    ajaxQuery(1, 8)
                    //搜索按钮
                    $(".search-btn").on("click",function (){
                        var text = $("#search_input").val()
                        ajaxSearch(text,1,4)
                    })

                    ajaxShowCart($("#user_name").text())
                });



    </script>



</body>

