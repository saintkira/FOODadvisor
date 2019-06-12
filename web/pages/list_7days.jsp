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
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>New Recipe</title>
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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <link rel="stylesheet" href="../bower_components/menu/menu.css">
    </head>

    <body class="hold-transition skin-green-light sidebar-mini">
        <div class="warper"> 
            <jsp:include page="../pages/partialpage/header.jsp"/>
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

                                <!--  Your Menu -->
                                <li>
                                    <i class="fa fa-calendar bg-maroon"></i>
                                    <div class="timeline-item">

                                        <h3 class="timeline-header"><a href="#">${name}</a> - Your menu</h3>

                                        <div class="timeline-body" id="tlmenu">
                                            <div class="row">
                                                <form action="/FOODadvisor/setMenuServlet" method="post">
                                                    <div class="col-md-9" id="tmenu">
                                                        <table class="table table-bordered" id="capture">
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
                                                            <tbody class="menu" id="tbMenu">
                                                                <tr>
                                                                    <td class="bg-blue">BREAKFAST</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="B${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)" ondragenter="mark(event)" ondragleave="unmark(event)">
                                                                                <c:if test="${menuList ne null}">
                                                                                    <c:forEach items="${menuList}" var="i">
                                                                                        <c:if test="${i.time eq 'B' && i.weekdays == x}">
                                                                                            <span class="fa fa-times" id="${i.recipeID}B${x}i" style="cursor: pointer" onclick="remove('${i.recipeID}B${x}')"></span>
                                                                                            <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle thumbnail" id="${i.recipeID}B${x}" draggable="true" ondragstart="dragstart_handler(event);">
                                                                                            <input type="hidden" name="B${x}" value="${i.recipeID}" id="${i.recipeID}B${x}ip"/>
                                                                                        </c:if>
                                                                                    </c:forEach>
                                                                                </c:if>
                                                                            </div>
                                                                        </td>
                                                                    </c:forEach>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-blue">LUNCH</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="L${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)" ondragenter="mark(event)" ondragleave="unmark(event)">
                                                                                <c:if test="${menuList ne null}">
                                                                                    <c:forEach items="${menuList}" var="i">
                                                                                        <c:if test="${i.time eq 'L' && i.weekdays == x}">
                                                                                            <span class="fa fa-times" id="${i.recipeID}L${x}i" style="cursor: pointer" onclick="remove('${i.recipeID}L${x}')"></span>
                                                                                            <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle thumbnail" id="${i.recipeID}L${x}" draggable="true" ondragstart="dragstart_handler(event);">
                                                                                            <input type="hidden" name="L${x}" value="${i.recipeID}" id="${i.recipeID}L${x}ip"/>
                                                                                        </c:if>
                                                                                    </c:forEach>
                                                                                </c:if>
                                                                            </div>
                                                                        </td>
                                                                    </c:forEach>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-blue">DINNER</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="D${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)" ondragenter="mark(event)" ondragleave="unmark(event)">
                                                                                <c:if test="${menuList ne null}">
                                                                                    <c:forEach items="${menuList}" var="i">
                                                                                        <c:if test="${i.time eq 'D' && i.weekdays == x}">
                                                                                            <span class="fa fa-times" id="${i.recipeID}D${x}i" style="cursor: pointer" onclick="remove('${i.recipeID}D${x}')"></span>
                                                                                            <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle thumbnail" id="${i.recipeID}D${x}" draggable="true" ondragstart="dragstart_handler(event);">
                                                                                            <input type="hidden" name="D${x}" value="${i.recipeID}" id="${i.recipeID}D${x}ip"/>
                                                                                        </c:if>
                                                                                    </c:forEach>
                                                                                </c:if>
                                                                            </div>
                                                                        </td>
                                                                    </c:forEach>                                                    
                                                                </tr>                                                    
                                                            </tbody>
                                                        </table>
                                                        <input type="submit" class="btn btn-default" value="Save"/>
                                                        <a href="/FOODadvisor/clearMenuServlet"><span class="btn btn-default" style="margin-top: 8px; margin-bottom:8px">Clear</span></a>
                                                        <a href="/FOODadvisor/pages/menuReport.jsp?username=${username}"><span class="btn btn-default" style="margin-top: 8px; margin-bottom:8px">Print</span></a>
                                                        <!--<input type="button" class="btn btn-default" value="Print" id="toPDF" onclick="downloadimage()"/>-->
                                                        <!-- Toggle button -->
                                                        <div style="float:right; padding-top:10px; vertical-align: middle">
                                                            <span style="padding-right:8px">Recomment </span>
                                                            <label class="switch">                                                           
                                                                <input type="checkbox" id="rcmToggle">
                                                                <span class="slider round"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">   
                                                        <h3 style="padding-left:20px; color:crimson">Your BMI: ${BMI}</h3>
                                                        <h4 style="padding-left:20px; color:dodgerblue">${BMI_desc}</h4> 

<!--                                                        <div id="recommentDiv"></div>-->
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <!-- Recipe You Chose -->
                                <li>
                                    <i class="fa fa-cutlery bg-yellow" data-toggle="collapse" data-target="#list7daysCollapse"></i>
                                    <div class="timeline-item" style="min-height: 10px">

                                        <h3 class="timeline-header"><a href="#">${name}</a> - Recipes you chose</h3>
                                        <input type="hidden" value="${recipeList}" id="recipeListCheck"/>
                                        <div class="timeline-body collapse in" id="list7daysCollapse">
                                            <div style="overflow-x:auto; height:140px">
                                                <c:forEach items="${recipeList}" var="i">
                                                    <div>
                                                        <!-- image list -->
                                                        <div style="display: block-inline; float: left; margin-bottom:15px; margin-top:8px">
                                                            <div style="float:right">
                                                                <ul style="list-style-type: none; margin:0; padding:0;">
                                                                    <c:if test="${i.type.contains('Maincourse')}">
                                                                        <li style="float:right"><i class="fa fa-tags" title="Maincourse" style="display:block; padding:0px; color:red"></i></li>
                                                                        </c:if>
                                                                        <c:if test="${i.type.contains('Appetizer')}">
                                                                        <li style="float:right"><i class="fa fa-tags" title="Appetizer" style="display:block; padding:0px; color:blue"></i></li>
                                                                        </c:if>
                                                                        <c:if test="${i.type.contains('Salad')}">
                                                                        <li style="float:right"><i class="fa fa-tags" title="Salad" style="display:block; padding:0px; color:green"></i></li>
                                                                        </c:if>
                                                                        <c:if test="${i.type.contains('Desert')}">
                                                                        <li style="float:right"><i class="fa fa-tags" title="Desert" style="display:block; padding:0px; color:orange"></i></li>
                                                                        </c:if>
                                                                </ul>
                                                            </div>
                                                            <img style="float:left; margin-right:0px" src="../recipes_document/${i.recipeImage}" alt="..." class="cycle" id="${i.recipeID}_src" draggable="true" ondragstart="dragstart_handler(event);" title="${i.recipeName}">
                                                        </div>
                                                        <!--<li><i class="fa fa-tags" style="position:absolute;right:10%"></i></li>-->
                                                    </div>
                                                </c:forEach>
                                            </div>                                            
                                        </div>
                                    </div>
                                </li>                                    

                                <!-- Searching Another recipes -->
                                <li>
                                    <i class="fa fa-spinner bg-blue" data-toggle="collapse" data-target="#searchCollapse"></i>
                                    <div class="timeline-item" style="min-height: 10px">
                                        <span class="time"><i class="fa fa-search" id="searchRecipe"></i> <input id="txtSearch" title="you can search by Type, Name, Ingd..." style="borde: 1px solid #f3f3f3; width:200px;"/></span>

                                        <h3 class="timeline-header"><a href="#">${name}</a> - You can searching more ...</h3>

                                        <div class="timeline-body collapse" id="searchCollapse">

                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>                       
                    </div>
                    
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
    <script src="../bower_components/menu/report.js"></script>
    <!--<script src="../bower_components/menu/jspdf.js"></script>-->
    <!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.0.0-alpha.1/jspdf.plugin.autotable.min.js"></script>-->
    <script src="../bower_components/menu/html2canvas.min.js"></script>
    <script src="../bower_components/menu/search.js"></script>
</html>
