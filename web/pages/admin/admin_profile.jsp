<%-- 
    Document   : profile
    Created on : Apr 29, 2019, 10:29:09 PM
    Author     : QUANG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FOOD advisor | Admin Profile</title>


        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!--Custom CSS-->
        <link rel="stylesheet" href="../../dist/css/avatarupload.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="../../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="../../bower_components/select2/dist/css/select2.min.css">
        <!-- iCheck -->        
        <link rel="stylesheet" href="../../plugins/iCheck/all.css">


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <!--HEADER BAR-->
            <jsp:include page="header.jsp"/>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Admin Profile
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="mainIndex.jsp"><i class="fa fa-dashboard"></i> Home</a></li>                        
                        <li class="active">Admin profile</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-3">
                            <!-- Profile Image -->
                            <div class="box box-success">
                                <div class="box-body box-profile">
                                    <div class="avatar-wrapper">
                                        <img class="profile-pic" src="" />
                                        <div class="upload-button">
                                            <i class="fa fa-arrow-circle-up" aria-hidden="true"></i>
                                        </div>
                                        <input class="file-upload" type="file" accept="image/*"/>
                                    </div>
                                    <h3 style="text-align:center;">[Admin]</h3> 
                                    
                                    <a href="#" class="btn btn-success btn-block"><b>Save Change Avatar</b></a>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-9">
                            <div class="nav-tabs-custom">
                                <ul class="nav nav-tabs tab-success">
                                    <li class="active"><a href="#settings" data-toggle="tab">Settings</a></li>
                                    <li><a href="#changepass" data-toggle="tab">Change Password</a></li>

                                </ul>
                                <div class="tab-content">                                

                                    <!--SETTING-->
                                    <div class="active tab-pane" id="settings">
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
                                    <!-- /.tab-pane -->


                                    <!--CHANG PASSWORD-->
                                    <div class="tab-pane" id="changepass">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="oldPassword" class="col-sm-3 control-label">Old Password</label>

                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="oldPassword" placeholder="Old Password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="newPassword" class="col-sm-3 control-label">New Password</label>

                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="newPassword" placeholder="New Password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="confirmPassword" class="col-sm-3 control-label">Confirm New Password</label>

                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm New Password">
                                                </div>
                                            </div>                                          

                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <button type="submit" class="btn btn-danger">Submit</button>

                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- /.tab-content -->
                            </div>
                            <!-- /.nav-tabs-custom -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <jsp:include page="footer.jsp"/>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../../bower_components/fastclick/lib/fastclick.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="../../plugins/iCheck/icheck.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../dist/js/demo.js"></script>
        <!-- Select2 -->
        <script src="../../bower_components/select2/dist/js/select2.full.min.js"></script>
        <!--DATE PICKER-->
        <!-- bootstrap datepicker -->
        <script src="../../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- InputMask -->
        <script src="../../plugins/input-mask/jquery.inputmask.js"></script>
        <script src="../../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
        <script src="../../plugins/input-mask/jquery.inputmask.extensions.js"></script>
        <script>
            $(document).ready(
                    function() {
                        //Datemask dd/mm/yyyy
                        $('#datemask').inputmask('dd/mm/yyyy', {'placeholder': 'dd/mm/yyyy'});
                        $('[data-mask]').inputmask();

                        $('input[type="radio"].flat-red').iCheck({
                            checkboxClass: 'icheckbox_flat-green',
                            radioClass: 'iradio_flat-green'
                        });

                    });



        </script>
        <!--UPLOAD AVATAR-->
        <script src="../../dist/js/profile.js"></script>
    </body>
</html>

