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
        <!--CUSTOMER CSS ToastR and modal-->
        <link rel="stylesheet" href="../../dist/css/template.css">
        <link rel="stylesheet" href="../../dist/css/toastr.min.css">
        <link rel="stylesheet" href="../../dist/style.css">


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
                        <small>Manage user</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">User Management</li>
                    </ol>
                </section>
                <section class="content">
                    <!--MAIN CONTENT START HERE-->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">User Data Table</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    1
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"  onclick=""><i class="disable fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket" data-toggle="modal" data-target="#confirm-delete" onclick="handleDelete();"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    2
                                                </td>
                                                <td>
                                                    Tran Duc Toan
                                                </td>
                                                <td>
                                                    toanductran@gmail.com
                                                </td>
                                                <td>
                                                    Disable
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket" onclick="showToastr('warning', 'Active User', 'Active Successfully')"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket" data-toggle="modal" data-target="#confirm-delete"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    3
                                                </td>
                                                <td>
                                                    Nguyen Manh Thuy Trang
                                                </td>
                                                <td>
                                                    jasmin@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket" onclick="handleDelete()"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    4
                                                </td>
                                                <td>
                                                    Tran Le Duc Anh
                                                </td>
                                                <td>
                                                    ducanhtran@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    5
                                                </td>
                                                <td>
                                                    Kieu Ngoc Nga
                                                </td>
                                                <td>
                                                    ngalkieu@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    6
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    7
                                                </td>
                                                <td>
                                                    Tran Quoc Tuan
                                                </td>
                                                <td>
                                                    tuanquoctran@gmail.com
                                                </td>
                                                <td>
                                                    Ban
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    8
                                                </td>
                                                <td>
                                                    Nguyen Ngoc Minh Kha
                                                </td>
                                                <td>
                                                    minhka98@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    9
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    10
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    11
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    12
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    13
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    14
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    15
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    16
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    17
                                                </td>
                                                <td>
                                                    Khuc Kim Quang
                                                </td>
                                                <td>
                                                    khuckimquang94@gmail.com
                                                </td>
                                                <td>
                                                    Active
                                                </td>
                                                <td>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-check-circle"></i></a>
                                                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-ban"></i></a>

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
            <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-confirm-delete">
                    <div class="modal-content modal-radius">
                        <div class="modal-header bg-red-active">
                            <div class="icon-box bg-red-active">
                                <i class="fa fa-ban"></i>
                            </div>
                            <h3 class="modal-title" style="text-align: center;font-weight: 600;margin: 10px;">BAN</h3>
                        </div>
                        <div class="modal-body">
                            <h4>Do you want to ban</h4>
                            <span style="font-weight: 600;" id="setting-name"></span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-danger btn-ok" >OK</a>
                        </div>
                    </div>
                </div>
            </div>

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
            <!--Toatr-->
            <script src="../../dist/js/toastr.min.js"></script>
            <script src="../../dist/js/utils.js"></script>
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
                                                                'autoWidth': false,
                                                                'orderable': true
                                                            });
                                                        });
                                                        var handleDelete = function() {
                                                            $('#confirm-delete').find('.btn-ok').click(function() {
                                                                $.ajax({
                                                                    url: "../../NewServlet",
                                                                    data: {id: "abc"},
                                                                    type: "POST",
                                                                    success: function() {
                                                                        toastr.remove();
                                                                        showToastr('success', 'ok', "ok");
                                                                        $('#confirm-delete').modal('hide');

                                                                    },
                                                                    error: function(data) {
                                                                        toastr.remove();
                                                                        showToastr('error', 'abc', "abc");
                                                                        $('#confirm-delete').modal('hide');
                                                                    }
                                                                });                                                               
                                                            });
                                                        };
            </script>
            <script>
                $(document).ready(function() {
                    document.getElementById('sidebarheader').classList.add('active');
                });
            </script>
        </div>
    </body>
</html>
