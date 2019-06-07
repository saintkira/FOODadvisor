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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>FOODadvisor | Dashboard</title>
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
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="../bower_components/morris.js/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="../bower_components/jvectormap/jquery-jvectormap.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../bower_components/bootstrap-daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <link rel="stylesheet" href="../bower_components/menu/menu.css">
    </head>

    <body class="hold-transition skin-green-light sidebar-mini">
        <div class="warper"> 
            <jsp:include page="partialpage/header.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <!--BREADCRUMB-->
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <section class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="timeline">
                                <li>
                                    <i class="fa fa-calendar bg-maroon"></i>
                                    <div class="timeline-item">

                                        <h3 class="timeline-header"><a href="#">${name}</a> - Your menu</h3>

                                        <div class="timeline-body" id="tlmenu">
                                            <div class="row">
                                                <form action="/FOODadvisor/setMenuServlet" method="post">
                                                    <div class="col-md-10" id="tmenu">
                                                        <table class="table table-bordered">
                                                            <thead class="bg-blue">
                                                                <tr>
                                                                    <td></td>
                                                                    <td>MONDAY</td>
                                                                    <td>TUESDAY</td>
                                                                    <td>WEDNESDAY</td>
                                                                    <td>THURSDAY</td>
                                                                    <td>FRIDAY</td>
                                                                    <td>SATURDAY</td>
                                                                    <td>SUNDAY</td>
                                                                </tr>
                                                            </thead>
                                                            <tbody class="menu">
                                                                <tr>
                                                                    <td class="bg-blue">BREAKFAST</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="B${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)">
                                                                                
                                                                                    <c:forEach items="${menuList}" var="i">
                                                                                        <c:if test="${i.time eq 'B' && i.weekdays == x}">
                                                                                            <div id="${i.recipeID}div">
                                                                                                <span class="fa fa-times" id="${i.recipeID}B${x}i" style="cursor: pointer"></span>
                                                                                                <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle thumbnail" id="${i.recipeID}B${x}" draggable="true" ondragstart="dragstart_handler(event);" ondragenter="mark(event)" ondragleave="unmark(event)">
                                                                                                <input type="hidden" name="B${x}" value="${recipeID}" id="${recipeID}B${x}ip"/>
                                                                                            </div>
                                                                                        </c:if>
                                                                                    </c:forEach>
                                                                            </div>
                                                                        </td>
                                                                    </c:forEach>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-blue">LUNCH</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="L${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)">
                                                                                <c:forEach items="${menuList}" var="i">
                                                                                    <c:if test="${i.time eq 'L' && i.weekdays == x}">
                                                                                        <div id="${i.recipeID}div">
                                                                                            <span class="fa fa-times" id="${i.recipeID}L${x}i" style="cursor: pointer"></span>
                                                                                            <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle thumbnail" id="${i.recipeID}L${x}" draggable="true" ondragstart="dragstart_handler(event);" ondragenter="mark(event)" ondragleave="unmark(event)">                                                                                            
                                                                                            <input type="hidden" name="L${x}" value="${recipeID}" id="${recipeID}L${x}ip"/>
                                                                                        </div>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </div>
                                                                        </td>
                                                                    </c:forEach>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-blue">DINNER</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="D${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)">
                                                                                <c:forEach items="${menuList}" var="i">
                                                                                    <c:if test="${i.time eq 'D' && i.weekdays == x}">
                                                                                        <div id="${i.recipeID}div">
                                                                                            <span class="fa fa-times" id="${i.recipeID}D${x}i" style="cursor: pointer"></span>
                                                                                            <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle thumbnail" id="${i.recipeID}D${x}" draggable="true" ondragstart="dragstart_handler(event);" ondragenter="mark(event)" ondragleave="unmark(event)">                                                                                            
                                                                                            <input type="hidden" name="D${x}" value="${recipeID}" id="${recipeID}D${x}ip"/>
                                                                                        </div>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </div>
                                                                        </td>
                                                                    </c:forEach>                                                    
                                                                </tr>                                                    
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="submit" class="btn btn-default"/>
                                                        <input type="button" class="btn btn-default" value="Print"/>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </li>                                
                                <li>
                                    <i class="fa fa-cutlery bg-yellow"></i>
                                    <div class="timeline-item" style="min-height: 10px">

                                        <h3 class="timeline-header"><a href="#">${name}</a> - Recipes you chose</h3>

                                        <div class="timeline-body">
                                            <div style="overflow-x:auto; height:130px">
                                                <c:forEach items="${recipeList}" var="i">
                                                    <div style="display:inline; position:relative;">    
                                                        <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle" id="${i.recipeID}_src" draggable="true" ondragstart="dragstart_handler(event);">
                                                    </div>
                                                </c:forEach>
                                            </div>                                            
                                        </div>
                                    </div>
                                </li>                            
                            </ul>
                        </div>                       
                    </div>

                    <!-- OTHER RECOMMENTS -->
                </section>
            </div>
            <jsp:include page="partialpage/footer.jsp"/>
        </div> 
    </body>

    <!-- jQuery 3 -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>	
    <!-- FastClick -->
    <script src="../bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <!-- CK Editor -->
    <script src="../bower_components/ckeditor/ckeditor.js"></script>

    <script src="../bower_components/menu/menu7days.js"></script>
</html>