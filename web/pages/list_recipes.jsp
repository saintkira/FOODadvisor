<%-- 
    Document   : newindex
    Created on : Apr 16, 2019, 9:31:02 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FOODadvisor | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

        <!-- CSS Files -->
        <link rel="stylesheet" href="../bower_components/css_js_toan/animate-3.7.0.css">
        <link rel="stylesheet" href="../bower_components/css_js_toan/style.css">
        <!--3 css-->
        <!--<link rel="stylesheet" href="../bower_components/css_js_toan/w3.css">-->
        <link rel="stylesheet" href="../bower_components/css_js_toan/owl.carousel.css">
        <link rel="stylesheet" href="../bower_components/css_js_toan/owl.theme.default.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <style>
            .circle-icon {
                background: rgba(0,0,0,0.2);
                padding:7px;
                border-radius: 50%;
            }
            .fa-heart{
                font-size:36px;
                color:rgba(238,249,252,0.5);
            }
            .fa-heart:hover {
                cursor: pointer;
                color:rgba(250,0,0,0.8);
            }
            .heart-love{
                font-size:36px;
                color:red;
            }
            .fa-calendar-plus-o{
                font-size:24px;
            }
            .fa-calendar-plus-o:hover {
                cursor: pointer;
                color:#9af7ff;
            }
            .fa-calendar-check-o{
                color:red;
            }
            .viewdetailbtn {
                color: #fff !important;
                text-transform: uppercase;
                background: #00f72a;
                padding: 5px;
                border-radius: 50px;
                display: inline-block;
                border: none;
                outline:0;
            }
            .viewdetailbtn:hover {
                text-shadow: 0px 0px 6px rgba(255, 255, 255, 1);
                -webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
                -moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
                transition: all 0.4s ease 0s;
            }
            #owl-demo img{
                display: block;
                width: 100%;
                height: auto;
            }
        </style>
    </head>

    <body class="hold-transition skin-green-light sidebar-mini sidebar-collapse">
        <div class="warper"> 
            <jsp:include page="partialpage/header.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <!--BREADCRUMB-->
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>
                <section class="content">
                    <!--MAIN CONTENT START HERE-->
                    <!-- Food Area starts -->
                    <section class="food-area section-padding">

                        <div class="container" id="maincontainer">

                        </div>

                        <div class="row" style="visibility: hidden" id="loadingrow">
                            <div class="col-md-12 col-sm-12">
                                <center>
                                    <image src="../bower_components/css_js_toan/images/loading2.gif"/>
                                </center>
                            </div>
                        </div>
                    </section>
                    <!-- Food Area End -->
                </section>
            </div>
            <jsp:include page="partialpage/footer.jsp"/>


            <!-- modal -->
            <div id="fsModal" class="modal animated fadeIn">
                <!-- dialog -->
                <div class="modal-dialog">
                    <!-- content -->
                    <div class="modal-content">
                        <!-- header -->
                        <div class="modal-header">
                            <h1 id="myModalLabel" class="modal-title">Recipe Details</h1>
                        </div>
                        <!-- 
                          <div w3-include-html="template1.html"></div>
                         <img class="item" src="../bower_components/css_js_toan/images/food1.jpg" alt="Food"/>
                        header -->


                        <div class="modal-body">
                            <div class="row" style="width:100%;height:100%">
                                <div class="col-md-6 col-sm-6">
                                    <div id="food-carousel">
                                        <div class="owl-carousel owl-theme">
                                            <img class="item" src="../bower_components/css_js_toan/images/food1.jpg" alt="Food"/>
                                            <img class="item" src="../bower_components/css_js_toan/images/food2.jpg" alt="Food"/>
                                            <img class="item" src="../bower_components/css_js_toan/images/food3.jpg" alt="Food"/>
                                        </div>
                                    </div>
                                    <div class="btns">
                                        <div class="customNextBtn">Next</div>
                                        <div class="customPreviousBtn">Back</div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-6">

                                    <!--Accordion-->
                                    <div id="include" w3-include-html="../recipes_document/R003/R003.html"></div>
                                    <!--Accordion-->

                                </div>
                            </div>
                        </div>

                        <!-- footer -->
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <!--
                            <button class="btn btn-default">
                              Default
                            </button>
                            -->
                            <button class="btn btn-primary">
                                Print Report
                            </button>

                        </div>
                        <!-- footer -->
                    </div>
                    <!-- content -->
                </div>
                <!-- dialog -->
            </div>
            <!-- modal -->
        </div>
        <!-- jQuery 3 -->
        <script src="../bower_components/jquery/dist/jquery.min.js"></script>
        <script src="../bower_components/css_js_toan/w3data.js"></script> 
        <!-- jQuery UI 1.11.4 -->
        <script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Slimscroll -->
        <script src="../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../dist/js/demo.js"></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js'></script>
        <script type="text/javascript">
            $(document).ready(function() {
                window.setTimeout(function() {
                    $.get("../loadrecipeServlet?status=start", function(data) {
                        $("#maincontainer").append(data);
                    });
                    loading.style.visibility = "hidden";
                }, 200);

                $contentLoadTriggered = false;
                var loading = document.querySelector('#loadingrow');

                $(window).scroll(function() {
                    if ($(window).scrollTop() >= $(document).height() - $(window).height() && $contentLoadTriggered == false) {
                        $contentLoadTriggered = true;
                        loading.style.visibility = "";
                        window.setTimeout(function() {
                            $.get("../loadrecipeServlet?status=scroll", function(data) {
                                $("#maincontainer").append(data);
                                $contentLoadTriggered = false;
                            });
                            loading.style.visibility = "hidden";
                        }, 1000);

                    }
                });
            });
            function loadmodalFunction(x) {
                temp = x.toString();
                include_temp = '../recipes_document/' + temp + '/' + temp + '.html';
                $("#include").attr("w3-include-html", include_temp);
                window.setTimeout(function() {
                    w3IncludeHTML();
                }, 200);
                delete(include_temp);
                temp = '../loadrecipeimgServlet?id=' + temp;

                $("#food-carousel").html('<div class="owl-carousel owl-theme"></div>');
                $.get(temp, function(data) {
                    $(".owl-carousel").append(data);
                });
                window.setTimeout(function() {
                    $(".owl-carousel").owlCarousel({
                        loop: true,
                        margin: 10,
                        nav: false,
                        items: 1,
                        dots: false
                    });
                });
            }
            ;
        </script>
        <script type="text/javascript">
            function loveFunction(x, id) {
                tempid = id;




                delete(tempid);
                x.classList.toggle("heart-love");
            }
            ;


            function menuFunction(x, id) {
                tempid = id;
                x.classList.toggle("fa-calendar-check-o");
                if (x.classList.toString() === "fa fa-calendar-plus-o") {
                    $.ajax({
                        url: '../shoppinglistServlet',
                        data: {
                            ID: tempid,
                            status: 'remove'
                        },
                        success: function(responseText) {
                            data = JSON.parse(responseText);
                            count = data.count;

                            $("#count").html("");
                            $("#count").append(count);
                            if (count == 0) {
                                $("#list_header").html("<div>You have no item</div>");
                            } else if (count == 1) {
                                $("#list_header").html("<div>You have 1 item</div>");
                            } else {
                                $("#list_header").html("<div>You have " + count + " items</div>");
                            }

                            $("#ul_menu").html("");
                            for (i = 0; i < count; i++) {
                                $("#ul_menu").append("<li>"
                                        + "<a href=\"#\">"
                                        + "<div class=\"pull-left\">"
                                        + "<img src=\"../recipes_document/" + data.recipe[i].recipeID + "/" + data.recipe[i].recipeID + "-1.jpg\" class=\"img-circle\" alt=\"Recipe Image\">"
                                        + "</div>"
                                        + "<h4>" + data.recipe[i].recipeName + "</h4>"
                                        + "<div class=\"pull-right\">"
                                        + "<small style=\"margin-right:15px\"><button onclick=\"loadmodalFunction('" + data.recipe[i].recipeID + "')\" data-toggle=\"modal\" data-target=\"#fsModal\"><i class=\"fa fa-id-card\" style=\"color:green\"></i></button></small>"
                                        + "<small><button onclick=\"clearRecipefromlist('" + data.recipe[i].recipeID + "')\"><i class=\"fa fa-minus-circle\" style=\"color:red\"></i></button></small>"
                                        + "</div>"
                                        + "</a>"
                                        + "</li>");
                            }

                            delete(tempid);
                            delete(data);
                            delete(count);
                            $("#" + id).removeClass("selected");
                            $("#messages-menu").addClass("open");
                        }
                    });
                } else {
                    $.ajax({
                        url: '../shoppinglistServlet',
                        data: {
                            ID: tempid,
                            status: 'add'
                        },
                        success: function(responseText) {
                            data = JSON.parse(responseText);
                            count = data.count;

                            $("#count").html("");
                            $("#count").append(count);
                            if (count == 0) {
                                $("#list_header").html("<div>You have no item</div>");
                            } else if (count == 1) {
                                $("#list_header").html("<div>You have 1 item</div>");
                            } else {
                                $("#list_header").html("<div>You have " + count + " items</div>");
                            }

                            $("#ul_menu").html("");
                            for (i = 0; i < count; i++) {
                                $("#ul_menu").append("<li id=\"li-" + data.recipe[i].recipeID + "\">"
                                        + "<a href=\"#\">"
                                        + "<div class=\"pull-left\">"
                                        + "<img src=\"../recipes_document/" + data.recipe[i].recipeID + "/" + data.recipe[i].recipeID + "-1.jpg\" class=\"img-circle\" alt=\"Recipe Image\">"
                                        + "</div>"
                                        + "<h4>" + data.recipe[i].recipeName + "</h4>"
                                        + "<div class=\"pull-right\">"
                                        + "<small style=\"margin-right:15px\"><button onclick=\"loadmodalFunction('" + data.recipe[i].recipeID + "')\" data-toggle=\"modal\" data-target=\"#fsModal\"><i class=\"fa fa-id-card\" style=\"color:green\"></i></button></small>"
                                        + "<small><button onclick=\"clearRecipefromlist('" + data.recipe[i].recipeID + "')\"><i class=\"fa fa-minus-circle\" style=\"color:red\"></i></button></small>"
                                        + "</div>"
                                        + "</a>"
                                        + "</li>");
                            }

                            delete(tempid);
                            delete(data);
                            delete(count);
                            $("#" + id).addClass("selected");
                            $("#messages-menu").addClass("open");
                        }
                    });
                }
            }
            ;

            function clearRecipefromlist(id) {
                tmpid = id;
                $.ajax({
                    url: '../shoppinglistServlet',
                    data: {
                        ID: tmpid,
                        status: 'remove'
                    },
                    success: function(responseText) {
                        data1 = JSON.parse(responseText);
                        count = data1.count;

                        $("#count").html("");
                        $("#count").append(count);
                        if (count == 0) {
                            $("#list_header").html("<div>You have no item</div>");
                        } else if (count == 1) {
                            $("#list_header").html("<div>You have 1 item</div>");
                        } else {
                            $("#list_header").html("<div>You have " + count + " items</div>");
                        }
                        $("#li-" + tmpid).remove();
                        $("#" + tmpid).removeClass("selected");
                        element = document.getElementById("i-" + tmpid);
                        if (element != null) {
                            element.classList.toggle("fa-calendar-check-o");
                        }
                        delete(tmpid);
                        delete(data1);
                        delete(count);
                        $("#messages-menu").addClass("open");
                    }
                });
            }



            //$("#img1").attr("src","../bower_components/css_js_toan/images/food6.jpg");
            // Custom Button
            $('.customNextBtn').click(function() {
                $('.owl-carousel').trigger('next.owl.carousel');
            });
            $('.customPreviousBtn').click(function() {
                $('.owl-carousel').trigger('prev.owl.carousel');
            });

        </script>
    </body>
</html>
