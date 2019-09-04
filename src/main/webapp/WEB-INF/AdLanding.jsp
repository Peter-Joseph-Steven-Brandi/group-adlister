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
            <div class="col-md-12" style="border: black 1px">
                <h4 class="text-center">Date: ${ad.date}</h4>
                <h2 class="text-right">${ad.title}</h2>
                <p class="text-right">${ad.description}</p>
                <h3 class="text-center">${ad.block}</h3>
                <h3 class="text-center">${ad.category}</h3>
            </div>
    </c:forEach>
</div>
</body>
</html>
