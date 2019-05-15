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
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
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

    <body class="hold-transition skin-red sidebar-mini">
        <div class="warper"> 
            <jsp:include page="header.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <!--BREADCRUMB-->
                    <h1>
                        Admin
                        <small>Manage ingredient</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Ingredient Manage</li>
                    </ol>
                </section>
                <section class="content">
                    <!--MAIN CONTENT START HERE-->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Ingredient Data Table</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Ingredient Name</th>                                                
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    I001
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>                                            
                                            <tr>
                                                <td>
                                                    I002
                                                </td>
                                                <td>
                                                    Pork
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I003
                                                </td>
                                                <td>
                                                    Beef
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I004
                                                </td>
                                                <td>
                                                    Chicken
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I005
                                                </td>
                                                <td>
                                                    Duck
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I006
                                                </td>
                                                <td>
                                                    Rabbit
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I007
                                                </td>
                                                <td>
                                                    Onion
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I008
                                                </td>
                                                <td>
                                                    Basil
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I009
                                                </td>
                                                <td>
                                                    Carrot
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I010
                                                </td>
                                                <td>
                                                    Pumpkin
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I011
                                                </td>
                                                <td>
                                                    Broccoli
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I012
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I013
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I014
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I015
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I016
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I017
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I017
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I018
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    I019
                                                </td>
                                                <td>
                                                    Fish
                                                </td>                                                
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-ban"></i></a>
                                                </td>
                                            </tr>


                                        </tbody>

                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->

                        </div>
                        <!-- /.col -->
                    </div>
                </section>
            </div>
            <jsp:include page="footer.jsp"/>

            <!-- jQuery 3 -->
            <script src="../../bower_components/jquery/dist/jquery.min.js"></script><
            <!-- jQuery UI 1.11.4 -->
            <script src="../../bower_components/jquery-ui/jquery-ui.min.js"></script>
            <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
            <script>
                $.widget.bridge('uibutton', $.ui.button);
            </script>
            <!-- Bootstrap 3.3.7 -->
            <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

            <!-- jvectormap -->
            <script src="../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
            <script src="../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

            <!-- daterangepicker -->
            <script src="../../bower_components/moment/min/moment.min.js"></script>
            <script src="../../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

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
            <!-- DataTables -->
            <script src="../../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
            <script src="../../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
            <!--DATA TABLE -->
            <script>
                $(function() {
                    $('#example1').DataTable();
                    $('#example2').DataTable({
                        'paging': true,
                        'lengthChange': true,
                        'searching': true,
                        'ordering': true,
                        'info': true,
                        'autoWidth': false
                    });
                });
            </script>
           <script>
                $(document).ready(function() {
                    document.getElementById('sidebarheader1').classList.add('active');
                });
            </script>
                
        </div>
    </body>
</html>
