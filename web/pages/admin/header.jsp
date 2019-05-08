<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>d</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>A</b>dmin</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">                  

                  
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="">[ADMIN]</span>                            
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <p>
                                    USER
                                </p>
                            </li>                            
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="admin_profile.jsp" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
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
        <section class="sidebar" style="height: 10000px;">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="../../dist/img/avatar.png" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>
                        [ADMIN]
                    </p>              

                </div>
            </div>
            
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">MAIN NAVIGATION</li>
                
                <!--USER MANAGEMENT-->
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-users"></i> <span>USER MANAGEMENT</span>
                        <span class="pull-right-container">

                        </span>
                    </a>

                </li>
                <!--CHUC NANG THU 1-->
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cutlery"></i> <span>INGREDIENT MANAGEMENT</span>
                        <span class="pull-right-container">

                        </span>
                    </a>

                </li>
                <!--CHUC NANG THU 2-->
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cart-plus"></i>
                        <span>RECIPE MANAGEMENT</span>
                        <span class="pull-right-container">
                            <!--                            <span class="label label-primary pull-right">4h?</span>-->
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        

                    </ul>
                </li>
                
                
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

