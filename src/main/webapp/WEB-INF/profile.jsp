<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="messages.jsp"%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div class="col-md-12">
            <h1 class="text-center">Here Are all the user ads!</h1>
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
