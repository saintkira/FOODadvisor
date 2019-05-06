    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <c:if test="${user ne null}">
         <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>d</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>AD</b>min</span>
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
                            <span class="hidden-xs">[USERNAME]</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                     <p>
                                    [USERNAME] <small>Since Never</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Meal List</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Something A</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Something B</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="profilep4.html" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="notlogin.html" class="btn btn-default btn-flat">Sign out</a>
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
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                   <img src="../dist/img/avatar.png" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>
                        [USERNAME]
                    </p>              
                    
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">MAIN NAVIGATION</li>
                <!--CHUC NANG THU 1-->
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-cutlery"></i> <span>MEALS FROM INGREDIENT</span>
                        <span class="pull-right-container">

            </span>
                    </a>

                </li>
                <!--CHUC NANG THU 2-->
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cart-plus"></i>
                        <span>FULL COURSE MEAL</span>
                        <span class="pull-right-container">
<!--                            <span class="label label-primary pull-right">4h?</span>-->
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i>1 DAY COURSE</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>1 WEEK COURSE</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>DIET COURSE</a></li>

                    </ul>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    </c:if>
    
    <c:if test="${user eq null}">
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
                        <a href="login.jsp" class="dropdown-toggle disabled" data-toggle="dropdown">
                            <span class="hidden-xs">LOGIN</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                     <p>
                                    
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Meal List</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Something A</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Something B</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="profilep4.html" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="notlogin.html" class="btn btn-default btn-flat">Sign out</a>
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
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                   <img src="../dist/img/avatar.png" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>
                        [USERNAME]
                    </p>              
                    
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">MAIN NAVIGATION</li>
                <!--CHUC NANG THU 1-->
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-cutlery"></i> <span>MEALS FROM INGREDIENT</span>
                        <span class="pull-right-container">

            </span>
                    </a>

                </li>
                <!--CHUC NANG THU 2-->
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cart-plus"></i>
                        <span>FULL COURSE MEAL</span>
                        <span class="pull-right-container">
<!--                            <span class="label label-primary pull-right">4h?</span>-->
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i>1 DAY COURSE</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>1 WEEK COURSE</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>DIET COURSE</a></li>

                    </ul>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    </c:if>
   