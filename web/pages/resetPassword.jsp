<%-- 
    Document   : login
    Created on : Apr 17, 2019, 7:59:36 AM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
        <meta charset="utf-8">
        <meta  name="foodadvisor" http-equiv="X-UA-Compatible" content="">
        <title>FOODadvisor | Reset Password</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!--CUSTOMER CSS ToastR and modal-->
        <link rel="stylesheet" href="../dist/css/template.css">
        <link rel="stylesheet" href="../dist/css/toastr.min.css">
        <link rel="stylesheet" href="../dist/style.css">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../plugins/iCheck/square/blue.css">
        <link rel="stylesheet" href="../plugins/iCheck/all.css">
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id" content="303545973941-s9tl1n04o5n2fr028fq0ec006b5hsv1j.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition login-page">
        <div class="login-box">
            <div class="login-logo">

            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <label for="email">
                    Please enter your new password
                </label>

                <form class="form-horizontal" action="../resetPasswordServlet"  id="formChangePassword">
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

                <br/>

            </div>

            <!-- /.login-box-body -->
        </div>
        <!-- /.login-box -->


        <!-- jQuery 3 -->
        <script src="../bower_components/jquery/dist/jquery.min.js"></script>
        <!--Toatr-->
        <script src="../dist/js/toastr.min.js"></script>
        <script src="../dist/js/utils.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="../plugins/iCheck/icheck.min.js"></script>
        <script>
                            function checkChangePasswordForm() {
                                if ($("*").hasClass("has-error")) {
                                    $("*").removeClass("has-error");
                                }
                                $('#errorPassMsg').empty();
                               
                               
                                var newPassInput = $('#newPassword').val();
                                var confirmPassInput = $('#confirmPassword').val();
                                
                                var checkNewConfirmPassResult = checkNewConfirmPass(newPassInput, confirmPassInput);
                              
                                var checkNewPassBlankResult = checkNewPassBlank(newPassInput);
                                var checkConfirmPassBlankResult = checkConfirmPassBlank(confirmPassInput);
                                var checkPassStrengthResult = checkPassStrength(newPassInput);



                               if (checkNewPassBlankResult != "") {
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
                                }else if (checkNewConfirmPassResult != "") {
                                    $('#errorPassMsg').append(checkNewConfirmPassResult);
                                    $('#newPassword').parent().addClass("has-error");
                                    $('#confirmPassword').parent().addClass("has-error");
                                    $('#newPassword').focus();
                                } 
                                else {
                                     $('#formChangePassword').submit();
                                }
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

                            
        </script>


    </body>
</html>


