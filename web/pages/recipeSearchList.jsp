<%-- 
    Document   : recipeSearchList
    Created on : Jun 8, 2019, 12:11:54 PM
    Author     : trangnmt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="overflow-x:auto; height:140px">
            <c:if test="${sRecipeList ne null}">
                <c:forEach items="${sRecipeList}" var="i">
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
                                        <li style="float:right"><i class="fa fa-tags" title="Salad" style="display:block; padding:0px; color:orange"></i></li>
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
            </c:if>
        </div>   
    </body>
</html>
