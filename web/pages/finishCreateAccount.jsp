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
                <label for="email" style="text-align: center;">
                    CONGRATULATIONS YOUR ACCOUNT HAS BEEN CREATED PLEASE CHECK YOUR EMAIL TO ACTIVATE YOUR ACCOUNT
                </label>


                <div class="">
                    <button onclick="sendActiveCode()" class="btn btn-success btn-block btn-lg" >Re-send activate code</button>
                </div>

                <br/>



                <a href="login.jsp">BACK TO LOGIN</a><br>


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
                        function sendActiveCode() {
                            $.ajax({
                                
                            });
                        }

        </script>


    </body>
</html>


