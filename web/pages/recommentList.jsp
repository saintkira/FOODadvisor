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
        <div style="box-shadow: 2px 3px 3px #888; border: 1px solid #eee; margin-top: 20px">
            <h5 style="padding-left:20px; color: #888">These are the recipes for <b>${goal}</b> you should choose</h6>
            <hr/>
            <div style="overflow-y:auto; height:320px">

                <c:if test="${sRecipeList ne null}">
                    <c:forEach items="${sRecipeList}" var="i">
                        <div>
                            <!-- image list -->
                            <div style="display: block-inline; float: left; margin-bottom:15px; margin-top:8px">
                                <div style="float:right">
                                    <ul style="list-style-type: none; margin:0; padding:0;">
                                        <c:if test="${i.type.contains('Maincourse')}">
                                            <li style="float:right"><i class="fa fa-tags" style="display:block; padding:0px; color:red"></i></li>
                                            </c:if>
                                            <c:if test="${i.type.contains('Appetizer')}">
                                            <li style="float:right"><i class="fa fa-tags" style="display:block; padding:0px; color:blue"></i></li>
                                            </c:if>
                                            <c:if test="${i.type.contains('Salad')}">
                                            <li style="float:right"><i class="fa fa-tags" style="display:block; padding:0px; color:orange"></i></li>
                                            </c:if>
                                            <c:if test="${i.type.contains('Desert')}">
                                            <li style="float:right"><i class="fa fa-tags" style="display:block; padding:0px; color:gr"></i></li>
                                            </c:if>
                                    </ul>
                                </div>
                                <img style="float:left; margin-right:0px" src="../recipes_document/${i.recipeImage}" alt="..." class="cycle" id="${i.recipeID}_src" draggable="true" ondragstart="dragstart_handler(event);">
                            </div>
                            <!--<li><i class="fa fa-tags" style="position:absolute;right:10%"></i></li>-->
                        </div>
                    </c:forEach>
                </c:if>
            </div>  
        </div>
    </body>
</html>
