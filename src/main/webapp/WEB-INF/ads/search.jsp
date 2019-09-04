<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
    <style>

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="top image">
    <img class="d-block w-100" src="https://media.wired.com/photos/5d32362665c5e400082d457f/master/pass/culture_magic_15079064.jpg" alt="900x400" data-holder-rendered="true" style="width: 60rem; height: 25rem;">
</div>

<div class="container">
    <h1 class="text-center">Search for an Ad:</h1>
    <form action="/ads/search" method="get">
        <div class="form-group">
<%--            <label for="search">Search:</label>--%>
            <input id="search" name="search" class="form-control" type="text" value="${param.searched}">
        </div>
        <input type="submit" class="btn btn-block btn">

    </form>
    <c:choose>
        <c:when test="${param.search != null}">
    <div class="container">
        <h1 class="text-center">Click the Ad Below for More Information:</h1>
        <div class="col-md-12">
            <div class="row d-inline-flex justify-content-center">
            <c:forEach var="ad" items="${ads}">
                <c:if test="${fn:containsIgnoreCase(ad.title, param.search) || fn:containsIgnoreCase(ad.description, param.search)
                || fn:containsIgnoreCase(ad.block, param.search)|| fn:containsIgnoreCase(ad.date, param.search)|| fn:containsIgnoreCase(ad.id, param.search)
                || fn:containsIgnoreCase(ad.category, param.search)}">
                    <div class="card col-md-5 m-2 ">
                        </a>
                        <div class="card-body">
                            <a href="/ad/id/?${ad.id}">
                                <h3 class="card-title">${ad.title}</h3>
                            </a>
                            <h5 class="text-left">Date: ${ad.date},  Ad ID:${ad.id}</h5>
                            <p class="card-text">Description: ${ad.description}</p>
                            <h4 class="text-right">Block: ${ad.block}</h4>
                            <h4 class="text-right">Category: ${ad.category}</h4>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
            </div>
        </div>
    </div>
        </c:when>
    </c:choose>
</div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
