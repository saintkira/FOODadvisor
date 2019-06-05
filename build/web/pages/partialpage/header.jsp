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
        <%toan.helpfunction help = new toan.helpfunction();
          session.setAttribute("help", help);
        %>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">  
                <!-- Messages: style can be found in dropdown.less-->
                <li class="dropdown messages-menu" id="messages-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-cart-plus"></i>
                        <c:choose>
                            <c:when test="${recipe_list_count eq null || recipe_list_count eq 0}"><span class="label label-danger"><div id="count">0</div></span></c:when>    
                            <c:otherwise><span class="label label-danger"><div id="count">${recipe_list_count}</div></span></c:otherwise>
                        </c:choose>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">
                            <div class="row">
                                <c:choose>
                                    <c:when test="${recipe_list_count eq null || recipe_list_count eq 0}"><div class="col-md-9" id="list_header">You have no item</div></c:when>
                                    <c:when test="${recipe_list_count ne null && recipe_list_count == 1}"><div class="col-md-9" id="list_header">You have ${recipe_list_count} item</div></c:when>
                                    <c:otherwise><div class="col-md-9" id="list_header">You have ${recipe_list_count} items</div></c:otherwise>
                                </c:choose>
                                    <div class="col-md-3">
                                    <button onclick="clearShoppingList();" style="width: 50px; position: absolute">
                                        <div class="row">
                                            <i class="fa fa-retweet" style="color:blue"></i>
                                            Reset
                                        </div>
                                    </button>
                                    </div>    
                            </div>
                        </li>
                        <li>
                            <ul class="menu" id="ul_menu">
                                <c:if test="${recipe_list_count ne null && recipe_list_count > 0}">
                                    <c:forEach items="${recipe_cart_list}" var="recipe">
                                        <li id="li-${recipe.getRecipeID()}">
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="../recipes_document/${recipe.getRecipeID()}/${recipe.getRecipeID()}-1.jpg" class="img-circle" alt="Recipe Image">
                                                </div>
                                                <h4>${help.shorten(recipe.getRecipeName())}</h4>
                                                <div class="pull-right">
                                                    <small style="margin-right:15px">
                                                        <button onclick="loadmodalFunction('${recipe.getRecipeID()}')" data-toggle="modal" data-target="#fsModal"><i class="fa fa-id-card" style="color:green"></i></button>
                                                    </small>
                                                    <small>
                                                        <button onclick="clearRecipefromlist('${recipe.getRecipeID()}')"><i class="fa fa-minus-circle" style="color:red"></i></button>
                                                    </small>
                                                </div>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </li>
                        <li class="footer"><a href="../menu7daysServlet">Go To Menu</a></li>
                        
                    </ul>
                </li>
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <c:if test="${not empty fullName}"> <img src="../dist/img/avatar_2x.png" class="user-image" alt="User Image"></c:if>
                        <c:if test="${empty fullName}"> </c:if>

                            <span class=""> Welcome  <c:if test="${not empty name}">${name}</c:if><c:if test="${empty fullName}">Guest</c:if></span>
                        </a>
                        
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                            <c:if test="${not empty fullName}"><img src="../dist/img/avatar.png" class="img-circle avatar" alt="User Image"></c:if>
                            <c:if test="${empty fullName}"> </c:if>

                                <p>
                                <c:if test="${not empty fullName}">${fullName}</c:if><c:if test="${empty fullName}">Guest</c:if>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <ul id="ul_menu">
                            </ul>
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
                <a href="/FOODadvisor/getMenuServlet">
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
<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        getAvatar();
    });
    //GET AVATAR
    function getAvatar() {
        var username = '${username}';
        username = username.toString();
        if (username != '') {
            $.ajax({
                url: '../getAvatarServlet',
                data: {
                    username: "${username}"
                },
                success: function(data) {
                    $('.profile-pic').attr("src", data);
                    $('.avatar').attr("src", data);
                    $('.user-image').attr("src", data);
                }
            });
        }
    };
    function clearShoppingList(){
      $.ajax({
            url : '../shoppinglistServlet',
            data : {
                    ID : 'rmall',
                    status : 'removeall'
            },
            success : function(responseText) {
                    data1 = JSON.parse(responseText);
                    count=data1.count;
                    $("#count").html("");
                    $("#count").append("0");
                    $("#list_header").html("<div>You have no item</div>");
                    $("#ul_menu").html("");
                    for (i = 0; i < count; i++) {
                        $("#"+data1.recipe[i].recipeID).removeClass("selected");
                        recipeElement = document.getElementById("i-"+data1.recipe[i].recipeID);
                        if (recipeElement!=null) {
                            recipeElement.classList.toggle("fa-calendar-check-o");
                        }
                        delete(recipeElement);
                    }
                    delete(data1);
                    delete(count);
                    $("#messages-menu").addClass("open");
            }
            });  
    };
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
        document.location.href = "https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://localhost/application-name/logoutUser";
//        window.location.href = '../logOutServlet';
    }

</script>

