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
        <title>FOODadvisor | Add Ingredient</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
        <!--addfile-->
        <link rel="stylesheet" href="../../dist/css/addfile.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="../../bower_components/morris.js/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="../../bower_components/jvectormap/jquery-jvectormap.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="../../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../../bower_components/bootstrap-daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

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
            <jsp:include page="header.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <!--BREADCRUMB-->
                    <h1>
                        Admin
                        <small>Add Ingredient</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Admin</a></li>
                        <li class="active">Add Ingredient</li>
                    </ol>
                </section>
                <section class="content">
                    <!--MAIN CONTENT START HERE-->
                    <div class="col-md-12">
                        <div class="box box-success">
                            <div class="box-body">
                                <div class="col-md-3">
                                    <fieldset class="form-group">
                                        <a href="javascript:void(0)" onclick="$('#pro-image').click()">Upload Image</a>
                                        <input type="file" id="pro-image" name="pro-image" style="display: none;" class="form-control" multiple>
                                    </fieldset>
                                    <div class="preview-images-zone">
                                        <div class="preview-image preview-show-1">
                                            <div class="image-cancel" data-no="1">x</div>
                                            <div class="image-zone"><img id="pro-img-1" src="https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA5Ny85NTkvb3JpZ2luYWwvc2h1dHRlcnN0b2NrXzYzOTcxNjY1LmpwZw=="></div>
                                            <div class="tools-edit-image"><a href="javascript:void(0)" data-no="1" class="btn btn-light btn-edit-image">edit</a></div>
                                        </div>
                                        <div class="preview-image preview-show-2">
                                            <div class="image-cancel" data-no="2">x</div>
                                            <div class="image-zone"><img id="pro-img-2" src="https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/flip.jpg"></div>
                                            <div class="tools-edit-image"><a href="javascript:void(0)" data-no="2" class="btn btn-light btn-edit-image">edit</a></div>
                                        </div>
                                        <div class="preview-image preview-show-3">
                                            <div class="image-cancel" data-no="3">x</div>
                                            <div class="image-zone"><img id="pro-img-3" src="http://i.stack.imgur.com/WCveg.jpg"></div>
                                            <div class="tools-edit-image"><a href="javascript:void(0)" data-no="3" class="btn btn-light btn-edit-image">edit</a></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-9">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputName" class="col-sm-2 control-label">Name</label>

                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="inputName" placeholder="Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-success">Submit</button>

                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>                    
                    </div>
                </section>
            </div>
            <jsp:include page="footer.jsp"/>

            <!-- jQuery 3 -->
            <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
            <!-- jQuery UI 1.11.4 -->
            <script src="../../bower_components/jquery-ui/jquery-ui.min.js"></script>
            <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
            <script>
                                            $.widget.bridge('uibutton', $.ui.button);
            </script>
            <!-- Bootstrap 3.3.7 -->
            <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
            <!-- Morris.js charts -->
            <script src="../../bower_components/raphael/raphael.min.js"></script>
            <script src="../../bower_components/morris.js/morris.min.js"></script>
            <!-- Sparkline -->
            <script src="../../bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
            <!-- jvectormap -->
            <script src="../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
            <script src="../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
            <!-- jQuery Knob Chart -->
            <script src="../../bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
            <!-- daterangepicker -->
            <script src="../../bower_components/moment/min/moment.min.js"></script>
            <script src="../../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
            <!-- datepicker -->
            <script src="../../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
            <!-- Bootstrap WYSIHTML5 -->
            <script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
            <!-- Slimscroll -->
            <script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
            <!-- FastClick -->
            <script src="../../bower_components/fastclick/lib/fastclick.js"></script>
            <!-- AdminLTE App -->
            <script src="../../dist/js/adminlte.min.js"></script>
            <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
            <script src="../../dist/js/pages/dashboard.js"></script>
            <!-- AdminLTE for demo purposes -->
            <script src="../../dist/js/demo.js"></script>

            <script>
                                            $(document).ready(function() {
                                                document.getElementById('sidebarheader1').classList.add('active');
                                            });
            </script>            
            <script src="../../dist/js/addfile.js">
                                            < /div>
                                                    < /body>
                                                    < /html>
