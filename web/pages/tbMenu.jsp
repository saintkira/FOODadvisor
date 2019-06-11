<%-- 
    Document   : tbMenu
    Created on : Jun 11, 2019, 12:00:56 PM
    Author     : Jamin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
</body>
</html>
