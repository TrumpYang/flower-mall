<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">


</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                商品管理 <small>全部商品</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="${pageContext.request.contextPath}/role/findAll.do">商品管理</a></li>

                <li class="active">全部商品</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content"> <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="新建"
                                            onclick="location.href='${pageContext.request.contextPath}/pages/flower-add.jsp'">
                                        <i class="fa fa-file-o"></i> 新建
                                    </button>

                                    <button type="button" class="btn btn-default" id="refresh" title="刷新">
                                        <i class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" id="search_input" class="form-control input-sm"
                                       placeholder="搜索"> <span
                                    class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>

                                <th class="sorting">缩略图</th>
                                <th class="sorting_desc">ID</th>
                                <th class="sorting_desc">名称</th>
                                <th class="sorting">花语</th>
                                <th class="sorting">价格</th>
                                <th class="sorting">原料</th>
                                <th class="sorting">简介</th>
                                <th class="sorting">编辑</th>
                                <th class="sorting">操作</th>
                            </tr>
                            </thead>


                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>

        </section>
        <!-- 正文区域 /-->
        <!--实现简单的分页-->
        <div class="box-footer">
            <div class="pull-left">
                <div class="form-group form-inline" id="pageDetail">
                    总共2 页，共14 条数据。 每页
                </div>
                <input type="hidden" id="currentPage">
                <input type="hidden" id="pageSize">
            </div>
            <div class="box-tools pull-right">
                <ul class="pagination" id="paginate">

                </ul>
            </div>

        </div>
        <!-- /.box-footer-->


    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->


    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2018-2020 <a
                href="http://www.itcast.cn">研究院研发部</a>.
        </strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="../plugins/daterangepicker/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script src="../plugins/adminLTE/js/app.min.js"></script>
<script src="../plugins/treeTable/jquery.treetable.js"></script>
<script src="../plugins/select2/select2.full.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="../plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="../plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="../plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="../plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="../plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="../plugins/ckeditor/ckeditor.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="../plugins/chartjs/Chart.min.js"></script>
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.categories.min.js"></script>
<script src="../plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="../plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();
        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }

    }


    //请求商品信息以及页码函数
    function ajaxQuery(current, size) {
        //页面加载去请求ajax
        $.ajax({
            url: "${pageContext.request.contextPath}/flower/findAll",
            type: "POST",
            // 当前页数第一页 每次显示三条数据
            data: {"current": current, "size": size},
            success: function (data) {
                //js 开始解析json
                //拼接元素
                var res = data.records

                var pageSize = data.pages
                var total = data.total
                var current = data.current

                $('#pageDetail').text("总共 " + pageSize + " 页 " + " 共计" + total + "条数据  " + "当前页码：" + current)
                $("#currentPage").text(current)
                $("#pageSize").text(data.size)   // 总共的页码数
                $('ul.pagination').append("<li><button>上一页</button></li>");
                var li_item
                //    循环加载页码
                for (var count = 1; count <= pageSize; count++) {
                    li_item = "<li>" + "<button>" + count + "</button></li>"
                    $('ul.pagination').append(li_item);
                }
                $('ul.pagination').append("<li><button>下一页</button></li>");


                //循环加载表格数据
                $.each(res, function (i, result) {
                    var item;
                    item =
                        "<tr>" +
                        "<td>" + "<img class=\"cart_img\" src=\"" + result['pic'] + "\" title=\"点击看大图\" alt=\"图片失效\" rel=\"v:photo\"\n" +
                        "style=\"max-width: 67px;max-height: 100px;\"></td>" +
                        "<td>" + result['id'] + "</td>" +
                        "<td>" + result['flowerName'] + "</td>" +
                        "<td>" + result['flowerLanguage'] + "</td>" +
                        "<td>" + result['price'] + "</td>" +
                        "<td>" + result['material'] + "</td>" +
                        "<td>" + result['details'] + "</td>" +
                        "<td>" + "<button class=\"btn bg-olive btn-xs\">编辑</button>" + "</td>" +
                        "<td>" + "<button class=\"btn bg-olive btn-xs\">删除</button>" + "</td>" +
                        "</tr>";
                    $('.table').append(item);
                });


            }, dataType: "json"
        });
    }

    //清空数据
    function clearTable() {
        $('table tbody').empty()
        $('table tr').empty()
        $('ul.pagination').empty()
    }




    $(document)
        .ready(
            function () {


                //一开始请求 第一页 三条数据
                ajaxQuery(1, 3)
                //按钮的触发事件
                $("#dataList").on("click", ":button", function (event) {
                    console.log(event)
                    //判断一下点击的是哪一个按钮
                    var flower_id = $(this).closest("tr").find("td").eq(1).text();
                    var button_name = event.currentTarget.innerHTML
                    if (button_name == "编辑") {
                        //触发编辑事件
                        window.location.href = "${pageContext.request.contextPath}/flower/queryByFlowerId?id=" + flower_id;
                    }
                    if (button_name != "编辑") {
                        if (confirm("确定要删除吗？")) {
                            //删除事件 被单击
                            $.ajax({
                                url: "${pageContext.request.contextPath}/flower/del",
                                data: {"id": flower_id},
                                type: "POST",
                                success: function (data) {
                                    //重新请求页面 刷新
                                    alert("删除成功")
                                    //防止重复提交表单
                                    window.location.replace(location.href);
                                }
                            });
                        }
                    }
                })
                // 页码按钮触发事件
                $("#paginate").on("click", ":button", function (event) {

                    var button_name = event.currentTarget.innerHTML
                    var pageNumber = parseInt($("#currentPage").text())
                    var pageSize = parseInt($("#pageSize").text())
                    if (button_name == "上一页") {
                        if (pageNumber <= 1) {
                            alert("已经是第一页")
                        } else pageNumber = parseInt(pageNumber) - 1;

                    } else if (button_name == "下一页") {
                        if (parseInt(pageNumber) > parseInt(pageSize)) {
                            alert("已经是最后一页")
                        } else pageNumber = parseInt(pageNumber) + 1;
                    } else {
                        pageNumber = parseInt(button_name)
                    }
                    $('#pageDetail').text("当前页码：" + pageNumber)

                    //    得到页码开始请求数据 这里要清空表格信息
                    clearTable()
                    ajaxQuery(pageNumber, 3)


                })


                $("#refresh").on("click", function () {
                    window.location.replace(location.href);
                })


                // 激活导航位置
                setSidebarActive("admin-datalist");

                // 列表按钮
                $("#dataList td input[type='checkbox']")
                    .iCheck(
                        {
                            checkboxClass: 'icheckbox_square-blue',
                            increaseArea: '20%'
                        });
                // 全选操作
                $("#selall")
                    .click(
                        function () {
                            var clicks = $(this).is(
                                ':checked');
                            if (!clicks) {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck(
                                        "uncheck");
                            } else {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck("check");
                            }
                            $(this).data("clicks",
                                !clicks);
                        });
                //當用戶按下回車 触发搜索事件
                $('#search_input').bind('keypress',function(event){
                    if(event.keyCode == "13")
                    {
                        clearTable()
                        ajaxSearch($('#search_input').val(),1,3)
                    }
                });

                $('#search_input').bind('click',function(event){
                    clearTable()
                    ajaxSearch($('#search_input').val(),1,3)
                });


            });
</script>
</body>

</html>