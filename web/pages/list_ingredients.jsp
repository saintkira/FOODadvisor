<%-- 
    Document   : newindex
    Created on : Apr 16, 2019, 9:31:02 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <!-- Morris chart -->
    <link rel="stylesheet" href="../bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="../bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="../bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    
    <!-- CSS Files -->
    <link rel="stylesheet" href="../bower_components/css_js_toan/animate-3.7.0.css">
    <link rel="stylesheet" href="../bower_components/css_js_toan/owl-carousel.min.css">
    <link rel="stylesheet" href="../bower_components/css_js_toan/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    
</head>

<body class="hold-transition skin-green-light sidebar-mini">
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
                        
                        <div class="row" style="padding-bottom: 30px">
                            <div class="col-md-4 col-sm-6">
                                <div class="single-food">
                                    <div class="food-img">
                                        <img src="../bower_components/css_js_toan/images/food1.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <h5>Mexican Eggrolls</h5>
                                            <span class="style-change">$14.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="single-food mt-5 mt-sm-0">
                                    <div class="food-img">
                                        <img src="../bower_components/css_js_toan/images/food2.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <h5>chicken burger</h5>
                                            <span class="style-change">$9.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="single-food mt-5 mt-md-0">
                                    <div class="food-img">
                                        <img src="../bower_components/css_js_toan/images/food3.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <h5>topu lasange</h5>
                                            <span class="style-change">$12.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row" style="padding-bottom: 30px">
                           <div class="col-md-4 col-sm-6">
                                <div class="single-food mt-5">
                                    <div class="food-img">
                                        <img src="../bower_components/css_js_toan/images/food4.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <h5>pepper potatoas</h5>
                                            <span class="style-change">$14.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="single-food mt-5">
                                    <div class="food-img">
                                        <img src="../bower_components/css_js_toan/images/food5.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <h5>bean salad</h5>
                                            <span class="style-change">$8.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="single-food mt-5">
                                    <div class="food-img">
                                        <img src="../bower_components/css_js_toan/images/food6.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <h5>beatball hoagie</h5>
                                            <span class="style-change">$11.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
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
<!-- jQuery 3 -->
<script src="../bower_components/css_js_toan/jquery.min.js"></script>     
<!-- Morris.js charts -->
<script src="../bower_components/raphael/raphael.min.js"></script>
<script src="../bower_components/morris.js/morris.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){ 
       $contentLoadTriggered = false;
       var loading = document.querySelector('#loadingrow');
       
       $(window).scroll(function(){
       if($(window).scrollTop()>= $(document).height()-$(window).height() && $contentLoadTriggered == false){
            $contentLoadTriggered = true;
            loading.style.visibility="";
            window.setTimeout(function(){
                $.get("../LoadIngredServlet", function(data){
                $("#maincontainer").append(data);
                $contentLoadTriggered = false;
                });
                loading.style.visibility="hidden";
            },1000);
            
       } 
       });
       
    });
    
</script>
<!-- jQuery UI 1.11.4 -->
<script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Sparkline -->
<script src="../bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../bower_components/moment/min/moment.min.js"></script>
<script src="../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
    </div>
    </body>
</html>
