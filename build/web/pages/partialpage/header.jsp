<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="main-header">
    <!-- Logo -->
    <a href="mainIndex.jsp" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>F</b>ad</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>FOOD</b>advisor</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">  
                <!-- Messages: style can be found in dropdown.less-->
                <li class="dropdown messages-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-cart-plus"></i>
                        <span class="label label-danger">4</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have 4 items</li>
                        <li>
                            <!-- inner menu: contains the actual data -->
                            <ul class="menu">
                                <li><!-- start message -->

                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                        </div>
                                        <h4>
                                            Beef Steak                                            
                                        </h4>
                                        <p>Something something something</p>
                                        <p style="text-align: right;;">  <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-info-circle"></i></a>                                            
                                            <a class="btn btn-social-icon btn-bitbucket bg-olive"><i class="fa fa-trash"></i></a></p>

                                    </a>

                                </li>
                                <!-- end message --> 

                                <li><!-- start message -->
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                        </div>
                                        <h4>
                                            Support Team
                                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                    </a>
                                </li>
                                <li><!-- start message -->
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                        </div>
                                        <h4>
                                            Support Team
                                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                    </a>
                                </li>
                                <li><!-- start message -->
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                        </div>
                                        <h4>
                                            Support Team
                                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                    </a>
                                </li>


                            </ul>
                        </li>
                        <li class="footer"><a href="#">See All Messages</a></li>
                    </ul>
                </li>
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <c:if test="${not empty fullName}"> <img src="../../dist/img/avatar_2x.png" class="user-image" alt="User Image"></c:if>
                        <c:if test="${empty fullName}"> </c:if>

                            <span class=""> Welcome  <c:if test="${not empty fullName}">${fullName}</c:if><c:if test="${empty fullName}">Guest</c:if></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                            <c:if test="${not empty fullName}"><img src="../../dist/img/avatar_2x.png" class="img-circle" alt="User Image"></c:if>
                            <c:if test="${empty fullName}"> </c:if>

                                <p>
                                <c:if test="${not empty fullName}">${fullName}</c:if><c:if test="${empty fullName}">Guest</c:if>
                                </p>
                            </li>
                            <!-- Menu Body -->

                            <!-- Menu Footer-->
                            <li class="user-footer ">
                                <div class="pull-left">
                                <c:if test="${not empty fullName}"><a href="profile.jsp" class="btn btn-default btn-flat">Profile</a></c:if>
                                <c:if test="${empty fullName}"><a href="register.jsp" class="btn btn-default btn-flat">Register</a></c:if>

                                </div>
                                <div class="pull-right">
                                <c:if test="${not empty fullName}"><a onclick="signOut()" class="btn btn-default btn-flat">Sign out</a></c:if>
                                <c:if test="${empty fullName}"><a href="login.jsp" class="btn btn-default btn-flat">Sign in</a></c:if>

                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->

        <section class="sidebar">


            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header" style="text-align: center;">MAIN NAVIGATION</li>
                <!--CHUC NANG THU 1-->
                <li class="">
                    <a href="list_recipes.jsp">
                        <i class="fa fa-cutlery"></i> <span>RECIPES</span>                   
                    </a>
                </li>
                <!--CHUC NANG THU 2-->
                <li class="">
                    <a href="../pages/list_7days.jsp">
                        <i class="fa fa-calendar"></i>
                        <span>FULL COURSE MEAL</span>
                        <span class="pull-right-container">

                        </span>
                    </a>

                </li>

                <!--CHUC NANG THU 3-->
                <li class=" treeview">
                    <a href="#">
                        <i class="fa fa-history"></i> <span>HISTORY USER</span>
                        <span class="pull-right-container">

                        </span>
                    </a>

                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <script>
   
        function signOut() {

            //        var auth2 = gapi.auth2.getAuthInstance();
            //        auth2.signOut().then(function() {
            //            console.log('User signed out.');
            //
            //        });
            //         var revokeAllScopes = function() {
            //            auth2.disconnect();
            //        };
            //        window.location = "https://mail.google.com/mail/u/0/?logout&hl=en";
            var google = '${googleLogin}';
            if (google != "") {
                document.location.href = "https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://localhost:8080/foodadvisor/logOutServlet";

            } else {
                window.location.href = '../logOutServlet';
            }

        }

</script>

