<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class = "container"></div>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img class="d-block w-100" src="https://i.imgur.com/4GzcgJy.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 25rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://magic.wizards.com/sites/mtg/files/images/wallpaper/Kadena-Slinking-Sorcerer_C19_1920x1080_0.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 25rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://wallpaperbro.com/img/177218.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 25rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="http://cdn.towall.net/l/magic-gathering-fantasy-artwork-art-adventure-action-fighting-trading-card-6.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 25rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="http://getwallpapers.com/wallpaper/full/c/0/1/114447.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 25rem;">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="https://img3.akspic.com/image/16224-dragon-mythology-playing_card-fiction-magic_the_gathering-2560x1440.jpg" alt="900x400" data-holder-rendered="true" style="width: 75rem; height: 25rem;">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</div>
<div class="container">
    <h1 class="text-center">Ad Index Located Below:</h1>
        <div class="col-md-12">
            <div class="row d-inline-flex justify-content-center">
    <c:forEach var="ad" items="${ads}">
            <div class="card col-md-5 m-2 ">
                <div class="card-body">
                    <h3 class="card-title">${ad.title}</h3>
                    <h5 class="text-left">Date: ${ad.date},  Ad ID:${ad.id}</h5>
                    <p class="card-text">Description: ${ad.description}</p>
                    <h4 class="text-right">Block: ${ad.block}</h4>
                    <h4 class="text-right">Category: ${ad.category}</h4>
                </div>
            </div>
    </c:forEach>
        </div>
        </div>
</div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
