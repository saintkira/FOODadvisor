<%-- 
    Document   : profile
    Created on : Apr 29, 2019, 10:29:09 PM
    Author     : QUANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FOOD advisor | Favorite</title>

        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!--Custom CSS-->
        <link rel="stylesheet" href="../dist/css/avatarupload.css"> 
        <!-- DataTables -->
        <link rel="stylesheet" href="../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="../bower_components/select2/dist/css/select2.min.css">
        <!-- iCheck -->        
        <link rel="stylesheet" href="../plugins/iCheck/all.css">

        <!--CUSTOMER CSS ToastR and modal-->
        <link rel="stylesheet" href="../dist/css/template.css">
        <link rel="stylesheet" href="../dist/css/toastr.min.css">
        <link rel="stylesheet" href="../dist/style.css">


        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="736432206058-qmih7ve92a1egll1j7i2rfu7bqonthol.apps.googleusercontent.com">

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!--HEADER BAR-->
            <jsp:include page="partialpage/header.jsp"/>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Favorite Item
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="mainIndex.jsp"><i class="fa fa-dashboard"></i> Home</a></li>                        
                        <li class="active">Favorite</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <!--MAIN CONTENT START HERE-->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Favorite Item</h3>
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example2" class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Recipe Name</th>
                                                <th>Type</th>
                                                <th>Price</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>                                        
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->

                        </div>
                        <!-- /.col -->

                    </div>


                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <jsp:include page="partialpage/footer.jsp"/>
        </div>
        <!-- ./wrapper -->

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
    <!-- jQuery UI 1.11.4 -->
    <script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button);</script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>    
    <!-- DataTables -->
    <script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!--Toatr-->
    <script src="../dist/js/toastr.min.js"></script>
    <script src="../dist/js/utils.js"></script>
    <!-- FastClick -->
    <script src="../bower_components/fastclick/lib/fastclick.js"></script>
    <!-- iCheck 1.0.1 -->
    <script src="../plugins/iCheck/icheck.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <script src="../dist/js/validation.js"></script>
    <!-- Select2 -->
    <script src="../bower_components/select2/dist/js/select2.full.min.js"></script>
    <!--DATE PICKER-->
    <!-- bootstrap datepicker -->
    <script src="../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- InputMask -->
    <script src="../plugins/input-mask/jquery.inputmask.js"></script>
    <script src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <script>
        var loadDatatable = function() {
            $('#example2').DataTable({
                'paging': true,
                'lengthChange': true,
                'pageLength': 5,
                'info': true,
                'autoWidth': false,
                'processing': true,
                'serverSide': false,
                //GET DATA FROM SERVLET
                'ajax': {
                    'url': "../getFavoriteServlet",
                    'dataSrc': "data"
                },
                'columns': [
                    {'data': "RecipeID"},
                    {'data': "RecipeName"},
                    {'data': "Type"},
                    {'data': "Price"},
                    {'data': 'RecipeID',
                        'render': function(data, type, row, meta) {
                            if (type === 'display') {
                                data = '<a class="btn btn-social-icon btn-bitbucket" data-toggle="modal" data-target="#confirm-active" onclick="active(\'' + data + '\');">' + '<i class="disable fa fa-check-circle"></i>' + '</a>' +
                                        '<a class="btn btn-social-icon btn-bitbucket" data-toggle="modal" data-target="#confirm-delete" onclick="handleDelete(\'' + data + '\');"><i class="fa fa-exclamation-circle"></i></a>';
                            }
                            return data;
                        }
                    }
                ]
            });
        };</script>
    <script>
        $(document).ready(function() {
            getFavorite();
        });
        function getFavorite() {
            $.ajax({
                url: '../countFavoriteServlet',
                data: {
                    username: "${username}"
                },
                success: function(data) {
                    if (data != 0) {
                        loadDatatable();
                    }
                }
        }
        );
    </script>

</body>
</html>

