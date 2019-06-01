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
        <!--CUSTOMER CSS ToastR and modal-->
        <link rel="stylesheet" href="../../dist/css/template.css">
        <link rel="stylesheet" href="../../dist/css/toastr.min.css">
        <link rel="stylesheet" href="../../dist/style.css">


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
                        <div class="col-md-12">
                            <div class="box">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Change Password</h3>
                                </div>
                                <div class=" box-body" >
                                    <form class="form-horizontal" action="../../changeAdminPasswordServlet"  id="formChangePassword">
                                        <div class="form-group">
                                            <label for="oldPassword" class="col-sm-3 control-label">Old Password</label>
                                            <div class="col-sm-9" id="formOldPass">
                                                <input type="password" class="form-control" id="oldPassword" placeholder="Old Password" name="oldPassword" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="newPassword" class="col-sm-3 control-label">New Password</label>
                                            <div class="col-sm-9" id="formNewPass">
                                                <input type="password" class="form-control" id="newPassword" placeholder="New Password" name="newPassword">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="confirmPassword" class="col-sm-3 control-label">Confirm New Password</label>
                                            <div class="col-sm-9" id="formConfirmPass">
                                                <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm New Password" name="confirmPassword">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-xs-offset-1">
                                                <p style="color: red;" id="errorPassMsg"></p>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="form-group">
                                        <div class="col-sm-offset-3">
                                            <button onclick="checkChangePasswordForm()" class="btn btn-success" id="btnChangePass">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <jsp:include page="footer.jsp"/>
        </div>
        <!-- ./wrapper -->
        <!--modal confirm change password-->
        <div class="modal fade" tabindex="-1" role="dialog" id="confirmChangePassword">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">Confirm change password</h4>
                    </div>
                    <div class="modal-body">
                        <p>Do you want to save changes password?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="submitFormChangePassword()">OK</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Cancel</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery 3 -->
        <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
        <!--Toatr-->
        <script src="../../dist/js/toastr.min.js"></script>
        <script src="../../dist/js/utils.js"></script>
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

                            function checkChangePasswordForm() {
                                if ($("*").hasClass("has-error")) {
                                    $("*").removeClass("has-error");
                                }
                                $('#errorPassMsg').empty();
                                var oldPassValue = '${adminPassword}';
                                console.log(oldPassValue);
                                var oldPassInput = $('#oldPassword').val();
                                var newPassInput = $('#newPassword').val();
                                var confirmPassInput = $('#confirmPassword').val();

                                var checkOldPassResult = checkOldPass(oldPassValue, oldPassInput);
                                var checkOldNewPassResult = checkOldNewPass(oldPassInput, newPassInput);
                                var checkNewConfirmPassResult = checkNewConfirmPass(newPassInput, confirmPassInput);
                                var checkOldPassBlankResult = checkOldPassBlank(oldPassInput);
                                var checkNewPassBlankResult = checkNewPassBlank(newPassInput);
                                var checkConfirmPassBlankResult = checkConfirmPassBlank(confirmPassInput);
                                var checkPassStrengthResult = checkPassStrength(newPassInput);
                                if (checkOldPassBlankResult != "") {
                                    $('#errorPassMsg').append(checkOldPassBlankResult);
                                    $('#oldPassword').parent().addClass("has-error");
                                    $('#oldPassword').focus();
                                } else if (checkNewPassBlankResult != "") {
                                    $('#errorPassMsg').append(checkNewPassBlankResult);
                                    $('#newPassword').parent().addClass("has-error");
                                    $('#newPassword').focus();
                                } else if (checkPassStrengthResult != "") {
                                    $('#errorPassMsg').append(checkPassStrengthResult);
                                    $('#newPassword').parent().addClass("has-error");
                                    $('#newPassword').focus();
                                    return true;
                                }
                                else if (checkConfirmPassBlankResult != "") {
                                    $('#errorPassMsg').append(checkConfirmPassBlankResult);
                                    $('#confirmPassword').parent().addClass("has-error");
                                    $('#confirmPassword').focus();
                                } else if (checkOldNewPassResult != "") {
                                    $('#errorPassMsg').append(checkOldNewPassResult);
                                    $('#oldPassword').parent().addClass("has-error");
                                    $('#newPassword').parent().addClass("has-error");
                                    $('#oldPassword').focus();
                                } else if (checkNewConfirmPassResult != "") {
                                    $('#errorPassMsg').append(checkNewConfirmPassResult);
                                    $('#newPassword').parent().addClass("has-error");
                                    $('#confirmPassword').parent().addClass("has-error");
                                    $('#newPassword').focus();
                                } else if (checkOldPassResult != "") {
                                    $('#errorPassMsg').append(checkOldPassResult);
                                    $('#oldPassword').parent().addClass("has-error");
                                    $('#oldPassword').focus();
                                }
                                else {
                                    $('#confirmChangePassword').modal("show");
                                }
                            }

                            function checkOldPassBlank(oldPassInput) {
                                if (oldPassInput == "") {
                                    return "Old Password cannot be blank!! Please input old password!!";
                                }
                                return "";
                            }
                            function checkOldPass(oldPassValue, oldPassInput) {
                                if (oldPassValue != oldPassInput) {
                                    return "Old Password do not match!! Please try again!";
                                }
                                return "";
                            }
                            function checkOldNewPass(oldPass, newPass) {
                                if (oldPass === newPass) {
                                    return "Old Password and New Password must be different!!";
                                }
                                return "";
                            }
                            function checkNewConfirmPass(newPass, confirmPass) {
                                if (newPass != confirmPass) {
                                    return "New Password and Confirm Password do not match!!";
                                }
                                return "";
                            }
                            function checkNewPassBlank(newPass) {
                                if (newPass == "") {
                                    return "New Password cannot be blank!! Please input old password!!";
                                }
                                return "";
                            }
                            function checkConfirmPassBlank(confirmPass) {
                                if (confirmPass == "") {
                                    return "Confirm Password cannot be blank!! Please input old password!!";
                                }
                                return "";
                            }
                            function checkPassStrength(passValue) {

                                if (!passValue.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/)) {
                                    return "Password need to contain at least 1 number, 1 lowercase character, 1 uppercase character and at least 8 characters";
                                }
                                return "";
                            }
                            function submitFormChangePassword() {
                                $('#formChangePassword').submit();
                            }


        </script>
        <!--UPLOAD AVATAR-->
        <script src="../../dist/js/profile.js"></script>
    </body>
</html>

