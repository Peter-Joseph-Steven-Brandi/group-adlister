<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <style>
        body{
            background-color: black;
            color: white;
        }
        .card{
            /*background-color: gray;*/
            background-image: url("https://www.barraques.cat/pngfile/big/6-65479_3d-.jpg");
            background-position: center;
            box-shadow: rebeccapurple 3px 3px;
            color: whitesmoke;
            text-shadow: rebeccapurple 2px 2px 2px;
        }
        h1{
            text-shadow: rebeccapurple 3px 3px;
        }

        nav{
            border: whitesmoke solid 2px;
            text-shadow: rebeccapurple 2px 2px ;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1 class="text-center">Ad Index Located Below:</h1>
        <div class="col-md-12">
            <div class="row d-inline-flex justify-content-center">
    <c:forEach var="ad" items="${ads}">
<<<<<<< HEAD
            <div class="card col-md-5 m-2 ">
                <div class="card-body">
                    <h3 class="card-title">${ad.title}</h3>
                    <h5 class="text-left">Date: ${ad.date},  Ad ID:${ad.id}</h5>
                    <p class="card-text">Description: ${ad.description}</p>
                    <h4 class="text-right">Block: ${ad.block}</h4>
                    <h4 class="text-right">Category: ${ad.category}</h4>
                </div>
            </div>
=======
        <div class="col-md-6" style="border: black 1px">
            <a href="/ad/id/?${ad.id}">
            <h2>${ad.title}</h2>
            </a>
            <p>Description: ${ad.description}</p>
            <h4>Block: ${ad.block}</h4>
            <h4>Category: ${ad.category}</h4>
            <h3>Date: ${ad.date},  Ad ID:${ad.id}</h3>
        </div>
>>>>>>> origin
    </c:forEach>
        </div>
        </div>
</div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
