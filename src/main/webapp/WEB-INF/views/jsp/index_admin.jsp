<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
    <div class="row">
        <div class="col-xs-8">
            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>id</th>
                    <th>name_ar</th>
                    <th>type_ar</th>
                    <th>preview_ar</th>
                    <th>icon_ar</th>
                    <th>date_ar</th>
                    <th>author_ar</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${articles}" var="item">
                    <tr class="info">
                        <td><c:out value="${item.id}"/></td>
                        <td><c:out value="${item.name_ar}"/></td>
                        <td><c:out value="${item.type_ar}"/></td>
                        <td><c:out value="${item.preview_ar}"/></td>
                        <td><c:out value="${item.icon_ar}"/></td>
                        <td><c:out value="${item.date_ar}"/></td>
                        <td><c:out value="${item.author_ar}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-8">
            <a href="#spoiler_insert" class="btn btn-info" data-toggle="collapse">Insert</a>

            <div class="collapse" id="spoiler_insert">
                <div class="well">
                    <form method="post">
                        <jsp:include page="index_admin_insert.jsp"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</div>
