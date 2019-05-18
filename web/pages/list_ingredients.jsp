<%-- 
    Document   : newindex
    Created on : Apr 16, 2019, 9:31:02 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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
    </style>
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
                                <div class="single-food" id="food-content1">
                                    <div class="container1" style="position: relative;">
                                        <div class="food-img">
                                            <img src="../bower_components/css_js_toan/images/food1.jpg" style="height:80%" class="img-fluid" alt="">     
                                        </div>
                                        <i style="position:absolute;top:2%;left:85%;" class="fa fa-heart circle-icon" onclick="loveFunction(this)"></i>
                                    </div>
                                    <div class="food-content">
                                        <div class="d-flex justify-content-between">
                                            <div class="container2" style="position: relative;">
                                            <h5 style="color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700">Mexican Eggrolls</h5>
                                            <i style="position:absolute;top:0%;left:95%;" class="fa fa-calendar-plus-o" onclick="menuFunction(this,'food-content1')"></i>
                                            </div>
                                            <span class="style-change">$14.50</span>
                                        </div>
                                        <p class="pt-3">Face together given moveth divided form Of Seasons that fruitful.</p>
                                        <div class="button_cont" align="center">
                                            <button class="viewdetailbtn" onclick="w3IncludeHTML();" data-toggle="modal" data-target="#fsModal">More Details</button>
                                        </div>
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
                                            <h5 style="color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700">chicken burger</h5>
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
                                            <h5 style="color:#131230;font-family:'Playfair Display',serif;text-transform:capitalize;font-size:20px !important;font-weight:700">topu lasange</h5>
                                            <span class="style-change">$12.50</span>
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
        
        
        <!-- modal -->
        <div id="fsModal" class="modal animated bounceIn">
          <!-- dialog -->
          <div class="modal-dialog">
            <!-- content -->
            <div class="modal-content">
              <!-- header -->
              <div class="modal-header">
                <h1 id="myModalLabel" class="modal-title">Recipe Details</h1>
              </div>
              <!-- header -->
               
               
              <div class="modal-body">
                  <div w3-include-html="template.html"></div>  
                <h2>1. Modal sub-title</h2>

                <p>Liquor ipsum dolor sit amet bearded lady, grog murphy's bourbon lancer. Kamikaze vodka gimlet; old rip van winkle, lemon drop martell salty dog tom collins smoky martini ben nevis man o'war. Strathmill grand marnier sea breeze b & b mickey slim. Cactus jack aberlour seven and seven, beefeater early times beefeater kalimotxo royal arrival jack rose. Cutty sark scots whisky b & b harper's finlandia agent orange pink lady three wise men gin fizz murphy's. Chartreuse french 75 brandy daisy widow's cork 7 crown ketel one captain morgan fleischmann's, hayride, edradour godfather. Long island iced tea choking hazard black bison, greyhound harvey wallbanger, "gibbon kir royale salty dog tonic and tequila."</p>

                <h2>2. Modal sub-title</h2>

                <p>The last word drumguish irish flag, hurricane, brandy manhattan. Lemon drop, pulteney fleischmann's seven and seven irish flag pisco sour metaxas, hayride, bellini. French 75 wolfram christian brothers, calvert painkiller, horse's neck old bushmill's gin pahit. Monte alban glendullan, edradour redline cherry herring anisette godmother, irish flag polish martini glen spey. Abhainn dearg bloody mary amaretto sour, ti punch black cossack port charlotte tequila slammer? Rum swizzle glen keith j & b sake bomb harrogate nights 7 crown! Hairy virgin tomatin lord calvert godmother wolfschmitt brass monkey aberfeldy caribou lou. Macuá, french 75 three wise men.</p>

                <h2>3. Modal sub-title</h2>

                <p>Pisco sour daiquiri lejon bruichladdich mickey slim sea breeze wolfram kensington court special: pink lady white lady or delilah. Pisco sour glen spey, courvoisier j & b metaxas glenlivet tormore chupacabra, sambuca lorraine knockdhu gin and tonic margarita schenley's." Bumbo glen ord the macallan balvenie lemon split presbyterian old rip van winkle paradise gin sling. Myers black bison metaxa caridan linkwood three wise men blue hawaii wine cooler?" Talisker moonwalk cosmopolitan wolfram zurracapote glen garioch patron saketini brandy alexander, singapore sling polmos krakow golden dream. Glenglassaugh usher's wolfram mojito ramos gin fizz; cactus jack. Mai-tai leite de onça bengal; crown royal absolut allt-á-bhainne jungle juice bacardi benrinnes, bladnoch. Cointreau four horsemen aultmore, "the amarosa cocktail vodka gimlet ardbeg southern comfort salmiakki koskenkorva."</p>

              </div>

              <!-- footer -->
              <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button class="btn btn-default">
                  Default
                </button>
                <button class="btn btn-primary">
                  Primary
                </button>
              </div>
              <!-- footer -->
            </div>
            <!-- content -->
          </div>
          <!-- dialog -->
        </div>
        <!-- modal -->
<!-- jQuery 3 -->
<script src="../bower_components/css_js_toan/jquery.min.js"></script>
<script src="../bower_components/css_js_toan/w3data.js"></script> 
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
<script type="text/javascript">
    function loveFunction(x) {
      x.classList.toggle("heart-love");
    }
    function menuFunction(x,s) {
      x.classList.toggle("fa-calendar-check-o");
      if (x.classList.toString()==="fa fa-calendar-plus-o") {
          $("#"+s).removeClass("selected");
      }else{
          $("#"+s).addClass("selected");
      }  
    }
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
