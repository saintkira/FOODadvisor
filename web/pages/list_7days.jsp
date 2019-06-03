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

        <style>
            #tlmenu{
                padding: 0 45px 0 45px;
            }

            #tmenu{
                padding: 1% 5% 1% 5% !important;
            }            

            .menu td{
                width: 12.5%;
                padding: 4px !important;                
            }

            .table{
                box-shadow: 2px 3px 3px #888;
                margin-bottom: 5px !important;
            }

            .table-bordered th,
            .table-bordered td {
                border: 1px solid #bbb !important;
            }

            .cycle{
                border-radius: 50%;
                width: 100px;
                height: 100px;
                padding: 8px;
                margin: 5px;
                box-shadow: 8px 10px 8px #888;
                cursor: move;
            }          

            .cell{
                min-height: 65px;
                border: 1px solid #fff;
                padding: 8%;
            }

            .fa-times{
                color: crimson;
                float: right;
            }            

            .thumbnail{
                width: 80%;
                height: 80%;
                padding: 8%;
                margin: 5%;
                box-shadow: 4px 6px 4px #888;
            }

            .btn{
                width: 70px;
            }

        </style>
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
                                                                            <div class="cell" id="B${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)"></div>
                                                                        </td>
                                                                    </c:forEach>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-blue">LUNCH</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="L${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)"></div>
                                                                        </td>
                                                                    </c:forEach>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-blue">DINNER</td>
                                                                    <c:forEach var="x" begin="1" end="7">
                                                                        <td>
                                                                            <div class="cell" id="D${x}" ondrop="drop_handler(event)" ondragover="dragover_handler(event)"></div>
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
                                    <i class="fa fa-cutlery bg-yellow" data-toggle="collapse" data-target="#txt1"></i>
                                    <div class="timeline-item" style="min-height: 10px">

                                        <h3 class="timeline-header"><a href="#">${name}</a> - Recipes you chose</h3>

                                        <div class="timeline-body collapse" id="txt1">
                                            <div style="overflow-x:auto; height:130px">
                                                <c:forEach items="${list}" var="i">
                                                    <div style="display:inline; position:relative;">    
                                                        <img src="../recipes_document/${i.recipeImage}" alt="..." class="cycle" id="${i.recipeID}_src" draggable="true" ondragstart="dragstart_handler(event);">
                                                            <c:if test="${i.type.contains('Maincourse')}">
                                                                <i class="fa fa-tags" style="position:absolute;right:10%"></i>
                                                            </c:if>
                                                            <c:if test="${i.type.contains('Desert')}">
                                                                <i class="fa fa-bomb" style="position:absolute;right:25%;color:red"></i>
                                                            </c:if>
                                                            <c:if test="${i.type.contains('Appetizer')}">
                                                                <i class="fa fa-tags" style="position:absolute;right:50%;color:green"></i>
                                                            </c:if>
                                                            <c:if test="${i.type.contains('Salad')}">
                                                                <i class="fa fa-bomb" style="position:absolute;right:75%;color:black"></i>
                                                            </c:if>    
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
