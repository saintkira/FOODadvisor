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
        <!-- DataTables -->
        <link rel="stylesheet" href="../../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

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
                            <button class="btn btn-danger btn-ok" id="btn123">OK</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- jQuery 3 -->
            <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
            <!-- jQuery UI 1.11.4 -->
            <script src="../../bower_components/jquery-ui/jquery-ui.min.js"></script>
            <!-- Bootstrap 3.3.7 -->
            <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
            <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
            <script>
                $.widget.bridge('uibutton', $.ui.button);
            </script>
            <!-- DataTables -->
            <script src="../../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
            <script src="../../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
            <!--DATA TABLE -->
            <!--Toatr-->
            <script src="../../dist/js/toastr.min.js"></script>
            <script src="../../dist/js/utils.js"></script>
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
                var loadDatatable = function(){
                    $('#example2').DataTable({
                        'paging'      : true,
                        'lengthChange': true,
                        'pageLength' : 5,
                        'info'        : true,
                        'autoWidth'   : false,
                        
                        //GET DATA FROM SERVLET
                        'ajax': {
                            'url': "../../loaduserdataServlet",
                            'dataSrc': "data",
                            'type': "POST"
                        },
                        'columns': [
                            { 'data': "Username" },
                            { 'data': "Fullname" },
                            { 'data': "EmailAddress" },
                            { 'data': "Active_Status" },
                            { 'data': 'Username',
                              'render': function (data, type, row, meta) {
                                if (type === 'display') {
                                    data = '<a class="btn btn-social-icon btn-bitbucket" onclick="showToastr(\'success\', \'Active User\',\'Active Successfully\')">' + '<i class="disable fa fa-check-circle"></i>' + '</a>'+
                                    '<a class="btn btn-social-icon btn-bitbucket" data-toggle="modal" data-target="#confirm-delete" onclick="handleDelete(\''+data+'\');"><i class="fa fa-ban"></i></a>';
                                }
                                return data;
                               }
                        }
                        ]
                    });
                };
                var handleDelete = function(Username) {
                    x= Username;
                    $('#confirm-delete').find('.btn-ok').click(function() { 
                        $.ajax({
                        url : '../../banuserServlet',
                        data : {
                            Username : x
                        },
                        success: function(responseText) {
                            if (responseText.toString()==='Success') {
                                toastr.remove();
                                showToastr('success', 'Status', "Successfully Banned");
                                $('#confirm-delete').modal('hide');
                                $('#example2').DataTable().destroy();
                                loadDatatable();
                                delete(x);
                            }else{
                                toastr.remove();
                                showToastr('error', 'Status', "Banning Failed");
                                $('#confirm-delete').modal('hide');
                                delete(x);
                            }
                        },
                        error: function() {
                            toastr.remove();
                            showToastr('error', 'Status', "Connection Error");
                            $('#confirm-delete').modal('hide');
                            delete(x);
                        }
                        });
                        delete(x);
                        
                    });
                };
            </script>
            <script>
                $(document).ready(function() {
                    loadDatatable();
                    document.getElementById('sidebarheader').classList.add('active');
                });
            </script>
        </div>
    </body>
</html>
