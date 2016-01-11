<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
    <c:forEach items="${list}" var="item">
        <h2><b><c:out value="${item.id}"/></b> . <c:out value="${item.name}"/></h2>
        <i><c:out value="${item.preview}"/></i>
        <br>
        <c:out value="${item.content}"/>
        <br>
        <br>
    </c:forEach>
</div>