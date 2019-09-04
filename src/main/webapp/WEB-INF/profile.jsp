<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="messages.jsp"%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <c:if test="${sessionScope.error != null}">
        <h3 style="color: red">${sessionScope.error}</h3>
        </c:if>
        <div class="col-md-6">
            <h1>Here Are all the user ads!</h1>
            <c:forEach var="ad" items="${ads}">
                <div class="col-md-6" style="border: black 1px">
                    <h2>${ad.title}</h2>
                    <p>Description: ${ad.description}</p>
                    <h4>Block: ${ad.block}</h4>
                    <h4>Category: ${ad.category}</h4>
                    <h3>Date: ${ad.date},  Ad ID:${ad.id}</h3>
                    <a href="/ads/update?${ad.id}"><button>Update</button></a>
                </div>
            </c:forEach>
        </div>
    </div>





</body>
</html>
