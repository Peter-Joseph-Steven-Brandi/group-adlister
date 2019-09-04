<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="/WEB-INF/messages.jsp"%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
</head>
<body>
<%--<c:choose>--%>
<%--    <c:when test="${sessionScope.user == null}">--%>
        <%@ include file="/WEB-INF/partials/navbar.jsp" %>
<%--    </c:when>--%>
<%--</c:choose>--%>
 <div class="container">
        <h1 class="text-left">Welcome to the land of used magical cards...</h1>
     <p class="text-right">"It's actually quite simple, but since you've only recently begun to walk upright, it may take some time to explain."/n
         —Jace Beleren, to Garruk Wildspeaker</p>
    </div>

<div id="carouselFadeExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="d-block w-100" src="https://www.desktophut.com/wp-content/uploads/2018/10/mtg-core-2019.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 40rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://wallpaperplay.com/walls/full/0/5/2/18874.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 40rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://www.wallpapermaiden.com/image/2018/08/26/magic-the-gathering-fantasy-woman-artwork-23599.jpeg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 40rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://cdn.suwalls.com/wallpapers/games/orzhov-syndicate-magic-the-gathering-27092-1920x1080.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 40rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://www.wallpaperflare.com/static/297/782/436/digital-art-dragon-fantasy-art-magic-the-gathering-wallpaper.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 40rem;">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselFadeExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselFadeExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
