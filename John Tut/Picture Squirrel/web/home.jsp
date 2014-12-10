<%-- 
    Document   : home
    Created on : 03-Dec-2014, 11:24:58
    Author     : Rownak
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:import url="header.jsp"></c:import>

<sql:setDataSource var="ds" dataSource="jdbc/webshop"/>
<sql:query dataSource="${ds}" sql="select * from images " var="results"/>

<table class ="images">
    <c:set var="tablewidth" value="3"/>

    <c:forEach var="image" items="${results.rows}" varStatus="row">

        <c:if test="${row.index % tablewidth == 0}">
            <tr>
        </c:if>

        <c:set scope="page" var="imageName" value="${image.stem}.${image.image_extension}"/>
        <td>
            
            <a href="<c:url value="gallery?action=image&image=${image.id}"/>">
                <img width="300" src="${pageContext.request.contextPath}/pics/${imageName}"/>
            </a>
        </td>

        <c:if test="${row.index+1 % tablewidth == 0}">
            </tr>
        </c:if>

    </c:forEach>

</table>
<c:import url="footer.jsp"></c:import>