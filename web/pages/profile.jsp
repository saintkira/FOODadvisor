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
        <title>FOOD advisor | User Profile</title>

        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!--Custom CSS-->
        <link rel="stylesheet" href="../dist/css/avatarupload.css">
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
            <jsp:include page="partialpage/header.jsp"/>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        User Profile
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="mainIndex.jsp"><i class="fa fa-dashboard"></i> Home</a></li>                        
                        <li class="active">User profile</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                    <div class="row">
                        <div class="col-md-3">

                            <!-- Profile Image -->
                            <div class="box box-primary">
                                <div class="box-body box-profile">
                                    <div class="avatar-wrapper">
                                        <img class="profile-pic" src="" />
                                        <div class="upload-button">
                                            <i class="fa fa-arrow-circle-up" aria-hidden="true"></i>
                                        </div>
                                        <input class="file-upload" type="file" accept="image/*"/>
                                    </div>

                                    <h3 class="profile-username text-center"><c:if test="${not empty fullName}">${fullName}</c:if><c:if test="${empty fullName}">Guest</c:if></h3>

                                        <ul class="list-group list-group-unbordered">
                                            <li class="list-group-item">
                                                <b>Favorites Item</b> <a class="pull-right">322</a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Recipes</b> <a class="pull-right">43</a>
                                            </li>
                                        </ul>

                                        <a href="#" class="btn btn-success btn-block"><b>Save Change Avatar</b></a>
                                    </div>
                                    <!-- /.box-body -->
                                </div>
                                <!-- /.box -->


                            </div>
                            <!-- /.col -->
                            <div class="col-md-9">
                                <div class="nav-tabs-custom">
                                    <ul class="nav nav-tabs">
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
                                                    <label class="col-sm-2 control-label">DOB</label>
                                                    <div class="col-sm-10">
                                                        <div class="input-group">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" id="datemask" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask id="inputDOB">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Gender</label>
                                                    <div class="col-sm-10">
                                                        <p><label class="control-label">Male</label> <input type ="radio" class="flat-red" name="gender"/> 
                                                            <label class="control-label">Female</label> <input type ="radio" class="flat-red" name="gender"/></p>

                                                    </div>

                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Height</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control"
                                                               data-inputmask="'mask': ['999']" data-mask placeholder="KG">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Weight</label>

                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control"
                                                               data-inputmask="'mask': ['999']" data-mask placeholder="CM">
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
            <jsp:include page="partialpage/footer.jsp"/>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="../bower_components/jquery/dist/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>    
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
            $(document).ready(
                    function() {
                        //Datemask dd/mm/yyyy
                        $('#datemask').inputmask('dd/mm/yyyy', {'placeholder': 'dd/mm/yyyy'});
                        $('[data-mask]').inputmask();

                        $('input[type="radio"].flat-red').iCheck({
                            checkboxClass: 'icheckbox_flat-green',
                            radioClass: 'iradio_flat-green'
                        });

                        //ajaxGetData
                        $.ajax({
                            url: '../getProfileServlet',
                            
                            data: {
                                username: "${username}"
                            },
                            success: function(data) {
                                console.log(data);
                                var name = data;
                                $('#inputName').val(name);

                                alert(data);

                            }
                        });

                    });
        </script>
        <!--UPLOAD AVATAR-->
        <script src="../dist/js/profile.js"></script>
        <!--GET PROFILE DATA-->


    </body>
</html>

