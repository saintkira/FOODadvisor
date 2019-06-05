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
                                        <input class="file-upload" id="file" type="file" accept="image/*"/>
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

                                        <a id="saveBtn" class="btn btn-success btn-block"><b>Save Change Avatar</b></a>
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
                                            <form class="form-horizontal" action="../updateProfileServlet" method="POST" id="formProfile">
                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="inputName" placeholder="Name" name="fullName">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">DOB</label>
                                                    <div class="col-sm-10">
                                                        <div class="input-group">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" id="datemask" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask id="inputDob" name="dob" >
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Gender</label>
                                                    <div class="col-sm-10">
                                                        <p><label class="control-label">Male</label> <input type ="radio" class="flat-red" name="gender" id="genderMale" name="gender"/> 
                                                            <label class="control-label">Female</label> <input type ="radio" class="flat-red" name="gender" id="genderFemale"/></p>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Height</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control"
                                                               data-inputmask="'mask': ['999']" data-mask placeholder="KG" id="inputHeight" name="height">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Weight</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control"
                                                               data-inputmask="'mask': ['999']" data-mask placeholder="CM" id="inputWeight" name="weight">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-xs-offset-1">
                                                        <p style="color: red;" id="errorMsg"></p>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 ">
                                                    <button class="btn btn-success" id="btnSubmit" onclick="checkSubmitForm()">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->


                                        <!--CHANG PASSWORD-->
                                        <div class="tab-pane" id="changepass">
                                            <form class="form-horizontal" action="../changePasswordServlet"  id="formChangePassword">
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

        <!--modal confirm change profile-->
        <div class="modal fade" tabindex="-1" role="dialog" id="confirmModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">Confirm change profile</h4>
                    </div>
                    <div class="modal-body">
                        <p>Do you want to save changes?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="submitForm()">OK</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            Cancel</button>
                    </div>
                </div>
            </div>
        </div>


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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
                            $.widget.bridge('uibutton', $.ui.button);</script>
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
                                                $('#inputName').val(data.data[0].Fullname);
                                                $('#inputEmail').val(data.data[0].EmailAddress);
                                                $('#datemask').val(data.data[0].DOB);
                                                $('#inputHeight').val(data.data[0].Height);
                                                $('#inputWeight').val(data.data[0].Weight);
                                                if (data.data[0].Gender === "Active") {
                                                    $('#genderMale').iCheck('check');
                                                } else {
                                                    $('#genderFemale').iCheck('check');
                                                }
                                            }
                                        });
                                    });
                            function checkChangePasswordForm() {
                                if ($("*").hasClass("has-error")) {
                                    $("*").removeClass("has-error");
                                }
                                $('#errorPassMsg').empty();
                                var oldPassValue = '${password}';
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


                            //validatioon profile input
                            function checkSubmitForm() {
                                if ($("*").hasClass("has-error")) {
                                    $("*").removeClass("has-error");
                                }
                                $('#errorMsg').empty();
                                var nameValue = $('#inputName').val();
                                var dateValue = $('#datemask').val();
                                var emailValue = $('#inputEmail').val();
                                var checkEmailResult = checkEmailValid(emailValue);
                                var checkDateResult = checkDate(dateValue);
                                var checkNameResult = checkNameLength(nameValue);
                                console.log(emailValue);
                                console.log(checkEmailResult);
                                console.log(!emailValidation(emailValue));

                                if (checkNameResult != "") {
                                    $('#errorMsg').append(checkNameResult);
                                    $('#inputName').parent().addClass("has-error");
                                    $('#inputName').focus();
                                } else if (checkEmailResult != "") {
                                    $('#errorMsg').append(checkEmailResult);
                                    $('#inputEmail').parent().addClass("has-error");
                                    $('#inputEmail').focus();
                                }
                                else if (checkDateResult != "") {
                                    $('#errorMsg').append(checkDateResult);
                                    $('#datemask').parent().addClass("has-error");
                                    $('#datemask').focus();
                                }
                                else {
                                    $('#confirmModal').modal("show");
                                }


                                function checkEmailValid(checkEmail) {

                                    if (!emailValidation(checkEmail)) {
                                        return "Email is not valid please try another email";
                                    }
                                    return "";
                                }

                                function emailValidation(checkEmail) {
                                    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                                    return re.test(String(checkEmail).toLowerCase());
                                }
                            }
                            function submitFormChangePassword() {
                                $('#formChangePassword').submit();
                            }
                            function submitForm() {
                                $('#formProfile').submit();
                            }
        </script>
        <!--UPLOAD AVATAR-->
        <script src="../dist/js/profile.js"></script>
        <!--GET PROFILE DATA-->
        <script>
                            function formatDate(date) {
                                var d = new Date(date),
                                        month = '' + (d.getMonth() + 1),
                                        day = '' + d.getDate(),
                                        year = d.getFullYear();
                                if (month.length < 2)
                                    month = '0' + month;
                                if (day.length < 2)
                                    day = '0' + day;
                                return [day, month, year].join("/");
                            }
                            ;
                            function formatDate2(date) {
                                var d = new Date(date),
                                        month = '' + (d.getMonth() + 1),
                                        day = '' + d.getDate(),
                                        year = d.getFullYear();
                                if (month.length < 2)
                                    month = '0' + month;
                                if (day.length < 2)
                                    day = '0' + day;
                                return [year, month, day].join("-");
                            }
                            ;
        </script>
        <script type="text/javascript">
            function onSignIn(googleUser) {
                var profile = googleUser.getBasicProfile();
                console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                console.log('Name: ' + profile.getName());
                console.log('Image URL: ' + profile.getImageUrl());
                console.log('Email: ' + profile.get); // This is null if the 'email' scope is not present.
                //                    window.location.href = '../googleLoginServlet?name='+profile.getName()+"&image="+profile.getImageUrl()+"&";
            }
        </script>
    </body>
</html>

