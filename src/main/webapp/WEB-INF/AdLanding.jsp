<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
    <style>
        body {
            background-image: url("http://static.hdw.eweb4.com/media/wallpapers_1920x1080/games/1/1/magic-the-gathering-game-hd-wallpaper-1920x1080-9353.jpg");
            background-position: center;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <c:forEach var="ad" items="${ad}">
    <div class="col-md-6" style="border: black 1px">
        <h2>Title: ${ad.title}</h2>
        <p>Description: ${ad.description}</p>
        <p class="hidden" id="card-name">${ad.cardName}</p>
        <div><a id="card-pic" style="height: 100px; width: 100px"></a></div>
        <h4>Block: ${ad.block}</h4>
        <h4 class=“text-right”>Category: ${ad.category}</h4>

        <h3>Date: ${ad.date},  Ad ID:${ad.id}</h3>
        <hr>

    </div>
    </c:forEach>
</div>

<script src="/js/magicAPICall.js"></script>
</body>
</html>
