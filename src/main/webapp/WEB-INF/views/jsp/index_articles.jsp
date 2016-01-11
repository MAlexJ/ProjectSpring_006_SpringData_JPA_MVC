<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach items="${articles}" var="item">
    <div class="well">
        <div class="row-fluid">
            <div class="row">
                <div class="col-xs-1">
                    <img width="100px" height="100px" class="thumbnail"
                         src="<c:out value="${item.icon_ar}"/>"
                         alt="GridView">
                </div>
                <div class="col-xs-8">
                    <div>
                        <h3><a href="/article/<c:out value="${item.id}"/>"> <c:out
                                value="${item.name_ar}"/> </a></h3>

                        <p class="post-name-info">Автор: <c:out value="${item.author_ar}"/></p>
                        <a href="category/android" class="label label-success"><c:out
                                value="${item.type_ar}"/></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <p><c:out value="${item.preview_ar}"/></p>

                    <legend></legend>
                    <div>
                        <i class="fa fa-calendar"></i> <c:out value="${item.date_ar}"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>