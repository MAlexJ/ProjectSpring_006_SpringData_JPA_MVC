<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Site">
    <meta name="MAlexJ" content="Site">

    <title>Spring JdbcTemplate</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<jsp:include page="index_navbar.jsp" flush="true"/>

<div class="container" id="page-wrapper">
    <c:choose>
        <c:when test="${flag eq 'home'}">
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
        </c:when>
        <c:when test="${flag eq 'article'}">
            <c:forEach items="${articles}" var="item">
                <div class="well">
                    <div class="row-fluid">
                        <div class="row">
                            <div class="col-xs-1">
                                <img width="100px" height="100px" class="thumbnail"
                                     src="<c:out value="${item.icon_ar}"/>"
                                     alt="GridView">
                            </div>
                            <div class="col-xs-6 ">
                                <div>
                                    <h3><a href="/article/<c:out value="${item.id}"/>"> <c:out value="${item.name_ar}"/> </a></h3>

                                    <p class="post-name-info">Автор: Алексей Максимов</p>
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
                                    <i class="icon-time"></i> 01.08.2014
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <c:out value="${category}"/>
        </c:when>
    </c:choose>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<!-- My Script JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/myjs.js"></script>

<!-- Morris Charts JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
</body>
</html>
