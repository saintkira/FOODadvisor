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
        <title>FOODadvisor | Log in</title>
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
                <a href="list_ingredients.jsp"><b style="color: #00a65a;">FOOD</b>advisor</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">

                <p class="login-box-msg" style="color: #00a65a;">SIGN IN TO START YOUR SESSION</p>
                <form name="loginForm" action="../loginServlet" method="POST" >
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="User name" name="username" id="username">
                        <span class="fa fa-leaf form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Password" name="password"  id="password">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <p style="color: red;" id="errorMsg"></p>            
                        </div>                     
                    </div>
                </form>
                <div class="">
                    <button onclick="checkLoginForm()" class="btn btn-success btn-block btn-lg" >Sign In</button>
                </div>

                <br/>
                <div class="social-auth-links text-center">
                    <p>- OR -</p>
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat "><i class="fa fa-facebook"></i> Sign in using
                        Facebook</a>
                    <a href="#" class="btn g-signin2" data-onsuccess="onSignIn"><i class="fa fa-google-plus"></i> Sign in using
                        Google+</a>
                </div>

                <a href="#">I forgot my password</a><br>
                <a href="register.jsp" class="text-center">Register a new membership</a>

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
                        function checkLoginForm() {
                            if ($("*").hasClass("has-error")) {
                                $("*").removeClass("has-error");
                            }
                            $('#errorMsg').empty();
                            var userValue = $('#username').val();
                            var passValue = $('#password').val();
                            var checkBlankResult = checkBlank(userValue, passValue);
                            if (checkBlankResult != "") {
                                $('#errorMsg').append(checkBlankResult);
                                return true;
                            }
                            else {
                                checkStatus();
                                var checkLoginValue = checkLogin(userValue, passValue);
                            }
                        }

                        function checkBlank(userValue, passValue) {
                            if (userValue == "") {
                                return "Please input Username!";
                            } else if (passValue == "") {
                                return "Please input Password!!";
                            } else {
                                return "";
                            }
                        }
                        function checkLogin(userValue, passValue) {
                            $.ajax({
                                url: "../checkLoginServlet",
                                data: {
                                    user: userValue,
                                    pass: passValue
                                },
                                success: function(data) {
                                    if (data == "false") {
                                        $('#errorMsg').append("Wrong username or email");
                                    } else if (data == "true") {
                                        $('form[name=loginForm]').submit();
                                    }
                                }
                            });
                        }

                        function checkStatus(userValue) {
                            $.ajax({
                                url: "../checkStatusServlet",
                                data: {
                                    user: userValue
                                },
                                success: function(data) {
                                    if (data == "ban") {
                                        $('#errorMsg').append("This user is banned. Please contact admin");
                                    }
                                }
                            });
                        }




        </script>

        <script type="text/javascript">
            function onSignIn(googleUser) {

                var profile = googleUser.getBasicProfile();
                console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                console.log('Name: ' + profile.getName());
                console.log('Image URL: ' + profile.getImageUrl());
                console.log('Email: ' + profile.get); // This is null if the 'email' scope is not present.
// The ID token you need to pass to your backend:
                var id_token = googleUser.getAuthResponse().id_token;
                console.log("ID Token: " + id_token);
                window.location.href = '../googleLoginServlet?token=' + id_token;
            }

        </script>
    </body>
</html>


