<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<header class="main-header">
    <!-- Logo -->
    <a href="user_manage.jsp" class="logo">
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
                            <img src="../../dist/img/avatar.png" class="img-circle" alt="User Image">
                            <p>
                                [ADMIN]
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
    <section class="sidebar" style="height: auto;">     

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header" style="text-align: center;">MAIN NAVIGATION</li>

            <!--USER MANAGEMENT-->
            <li class="" id="sidebarheader">
                <a href="user_manage.jsp">
                    <i class="fa fa-users"></i> 
                    <span>USER MANAGE</span>
                    <span class="pull-right-container"></span>
                </a>

            </li>

            <!--CHUC NANG THU 1-->
            <li class="treeview menu-open" id="sidebarheader1">
                <a href="#">
                    <i class="fa fa-cutlery"></i> <span>INGREDIENT MANAGE</span>
                    <span class="pull-right-container">
                        <span class="fa fa-angle-left pull-right"></span> 
                    </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <li>
                        <a href="add_ingredients.jsp">
                            <i class="fa fa-circle-o"></i>
                            Add New Ingredient
                        </a>
                    </li>
                    <li>
                        <a href="detail_ingredients.jsp">
                            <i class="fa fa-circle-o"></i>
                            Edit  Ingredients
                        </a>
                    </li>
                </ul>

            </li>
            <!--CHUC NANG THU 2-->
            <li class="treeview menu-open" id="sidebarheader2">
                <a href="#">
                    <i class="fa fa-cart-plus"></i>
                    <span>RECIPE MANAGE</span>
                    <span class="pull-right-container">
                        <span class="fa fa-angle-left pull-right"></span> 
                    </span>
                </a>
                <ul class="treeview-menu" style="display: block;">
                    <li>
                        <a href="add_recipes.jsp">
                            <i class="fa fa-circle-o"></i>
                            Add New Recipe
                        </a>
                    </li>
                    <li>
                        <a href="detail_recipes.jsp">
                            <i class="fa fa-circle-o"></i>
                            Edit  Recipes
                        </a>
                    </li>
                </ul>
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

