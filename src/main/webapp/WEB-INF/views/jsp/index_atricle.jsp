<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="span10 fix-main">
    <div class="well" style="background-color:#ffffff;">
        <div style="text-align: center;">
            <h2><c:out value="${article.name_ar}"/></h2>
        </div>
        <p><c:out value="${article.preview_ar}"/></p>

        <p></p>

        <c:out value="${article.content_ar}"/>

    </div>
</div>