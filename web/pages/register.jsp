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
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FOODadvisor | Registration Page</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link type="text/css" rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link type="text/css" rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link type="text/css" rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link type="text/css" rel="stylesheet" href="../dist/css/AdminLTE.min.css">
        <!-- iCheck -->
        <link type="text/css" rel="stylesheet" href="../plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition register-page">
        <div class="register-box">
            <div class="register-logo">
                <a href="#"><b style="color: #00a65a;">FOOD</b>advisor</a>
            </div>

            <div class="register-box-body">
                <p class="login-box-msg">Register a new membership</p>
                <form name="registerForm" action="../registerServlet" method="post">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Username" name="username" id="username">
                        <span class="glyphicon glyphicon-cloud form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Full name" name="fullName" id="fullName">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" placeholder="Email" name="email" id="email">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>                    
                    <div class="form-group has-feedback" id="formPass">
                        <input type="password" class="form-control" placeholder="Password" name="password" id="password">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Retype password" name="rePassword" id="rePassword"/>
                        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                    </div>
                    <div class="row">                        
                        <!-- /.col -->
                        <div class="col-xs-offset-1" id="notication">
                            <p style="color:red;" id="errorMsg"></p>    
                        </div>
                        <div  class="hidden">
                            <p id="checkExistedUser"></p> 
                            <p id="checkExistedEmail"></p> 
                        </div>
                        <!-- /.col -->
                    </div>
                </form> 
                <div class="col-xs-4 col-xs-offset-8">
                    <div>
                        <button onclick="checkRegisterForm()" class="btn btn-success btn-block btn-flat">Register</button>
                    </div>
                </div>

                <div class="social-auth-links text-center">
                    <p>- OR -</p>
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
                        Facebook</a>
                    <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
                        Google+</a>
                </div>

                <a href="login.jsp" class="text-center">I already have a membership</a>
            </div>
            <!-- /.form-box -->
        </div>  
        <!-- /.register-box -->

        <!-- jQuery 3 -->
        <script src="../bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="../plugins/iCheck/icheck.min.js"></script>

        <script>
                            $(function() {
                                $('input').iCheck({
                                    checkboxClass: 'icheckbox_square-blue',
                                    radioClass: 'iradio_square-blue',
                                    increaseArea: '20%' /* optional */
                                });
                            });</script>   
        <script>
            function checkRegisterForm() {
                if ($("*").hasClass("has-error")) {
                    $("*").removeClass("has-error");
                }
                $('#errorMsg').empty();
                var userValue = $('#username').val();
                var fnameValue = $('#fullName').val();
                var emailValue = $('#email').val();
                var passValue = $('#password').val();
                var repassValue = $('#rePassword').val();
//               var checkAvailableUserResult = checkAvailableUser(userValue);
                var checkEmailResult = checkEmailValid(emailValue);
                var checkSamePassResult = checkSamePass(passValue, repassValue);
                var checkBlankUserResult = checkBlankUser(userValue);
                var checkBlankFnameResult = checkBlankFname(fnameValue);
                var checkBlankEmailResult = checkBlankEmail(emailValue);
                var checkBlankPassResult = checkBlankPass(passValue);
                var checkBlankRepassResult = checkBlankRepass(repassValue);
                var checkNameLengthResult = checkNameLength(fnameValue);
                var checkPassStrengthResult = checkPassStrength(passValue);



                if (checkBlankUserResult != "") {
                    $('#errorMsg').append(checkBlankUserResult);
                    $('#username').parent().addClass("has-error");
                    $('#username').focus();
                    return true;
                } else if (checkBlankFnameResult != "") {

                    $('#errorMsg').append(checkBlankFnameResult);
                    $('#fullName').parent().addClass("has-error");
                    $('#fullName').focus();
                    return true;
                } else if (checkNameLengthResult != "") {
                    $('#errorMsg').append(checkNameLengthResult);
                    $('#fullName').parent().addClass("has-error");
                    $('#fullName').focus();
                    return true;
                }
                else if (checkBlankEmailResult != "") {
                    $('#errorMsg').append(checkBlankEmailResult);
                    $('#email').parent().addClass("has-error");
                    $('#email').focus();
                    return true;
                } else if (checkEmailResult != "") {
                    $('#errorMsg').append(checkEmailResult);
                    $('#email').parent().addClass("has-error");
                    $('#email').focus();
                    return true;
                } else if (checkBlankPassResult != "") {
                    $('#errorMsg').append(checkBlankPassResult);
                    $('#password').parent().addClass("has-error");
                    $('#password').focus();
                    return true;
                }
                else if (checkPassStrengthResult != "") {
                    $('#errorMsg').append(checkPassStrengthResult);
                    $('#password').parent().addClass("has-error");
                    $('#password').focus();
                    return true;
                } else if (checkBlankRepassResult != "") {
                    $('#errorMsg').append(checkBlankRepassResult);
                    $('#rePassword').parent().addClass("has-error");
                    $('#rePassword').focus();
                    return true;
                } else if (checkSamePassResult != "") {
                    $('#errorMsg').append(checkSamePassResult);
                    $('#password').parent().addClass("has-error");
                    $('#rePassword').parent().addClass("has-error");
                    $('#password').focus();
                    return true;
                }
                else {
                    var checkExisted = checkAvailableUser(userValue, emailValue);
                }
            }

            function checkAvailableUser(userValue, emailValue) {
                $.ajax({
                    url: "../validationServlet",
                    data: {
                        checkUser: userValue,
                        checkEmail: emailValue
                    },
                    success: function(data) {
                        console.log(data);
                        if (data == "User existed") {
                            $('#errorMsg').empty;
                            $('#username').focus();
                            $('#username').parent().addClass("has-error");
                            $('#errorMsg').append("This user is already existsed");
                        } else if (data == "Email existed") {
                            $('#errorMsg').empty;
                            $('#email').parent().addClass("has-error");
                            $('#email').focus();
                            $('#errorMsg').append("This email is already existsed");
                        }
                        else if (data == "ok") {
                            $("form[name=registerForm]").submit();
                        }
                    }
                });
            }
            ;



            function checkSamePass(pass, rePass) {
                if (pass !== rePass) {
                    return "Password and Retype Password do not match"
                }
                return "";
            }
            function checkEmailValid(emailValue) {
                if (!emailValidation(emailValue)) {
                    return "Email is not valid please try another email";
                }
                return "";
            }
            function emailValidation(checkEmail) {
                var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(String(checkEmail).toLowerCase());
            }
            function checkBlankUser(userValue) {
                if (userValue == "") {
                    return "Username must not be blank!!";
                }
                return "";

            }
            function checkBlankFname(fnameValue) {
                if (fnameValue == "") {
                    return "Full Name must not be blank!!";
                }
                return "";
            }
            function checkBlankEmail(emailValue) {
                if (emailValue == "") {
                    return "Email must not be blank!!";
                }
                return "";
            }
            function checkBlankPass(passValue) {
                if (passValue == "") {
                    return "Password must not be blank!!";
                }
                return "";
            }
            function checkBlankRepass(repassValue) {
                if (repassValue == "") {
                    return "Retype password must not be blank";
                }
                return "";
            }
            function checkNameLength(checkName) {
                if (checkName !== "") {
                    if (checkName.length > 30) {
                        return "Length of name must be smaller than 30 characters";
                    }
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

