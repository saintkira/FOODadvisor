<%-- 
    Document   : login
    Created on : Apr 17, 2019, 7:59:36 AM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FOODadvisor | Log in</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
                <a href="#"><b style="color: #00a65a;">FOOD</b>advisor</a>
            </div>
            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg" style="color: #00a65a;">SIGN IN TO START YOUR SESSION</p>

                <form action="../AccountServlet" method="POST">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="ID" name="id" id="validate">
                        <span class="fa fa-leaf form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="Password" name="password">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <input type="checkbox" class="flat-red"> Remember Me
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-success btn-block btn-lg" id="validate">Sign In</button>
                        </div>
                        <!-- /.col -->
                    </div>
                </form>

                <div class="social-auth-links text-center">
                    <p>- OR -</p>
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
                        Facebook</a>
                    <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
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
        <!-- Bootstrap 3.3.7 -->
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="../plugins/iCheck/icheck.min.js"></script>
        <script>


            $(document).ready(function() {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-red',
                    increaseArea: '20%' // optional
                });
            });


        </script>
        <script>
            function validateEmail(email) {
                var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(email);
            }

            function validate() {
                var $result = $("#result");
                var email = $("#email").val();
                $result.text("");

                if (validateEmail(email)) {
                    $result.text(email + " is valid :)");
                    $result.css("color", "green");
                } else {
                    $result.text(email + " is not valid :(");
                    $result.css("color", "red");
                }
                return false;
            }

            $("#validate").on("click", validate);
        </script>



    </body>
</html>


