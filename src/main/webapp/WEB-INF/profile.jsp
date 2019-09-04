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

        <div class="col-md-6">
            <h1>Here Are all the user ads!</h1>
            <c:forEach var="ads" items="${ads}">
                <div class="col-md-6" style="border: black 1px">
                    <h2>${ads.title}</h2>
                    <p>Description: ${ads.description}</p>
                    <h4>Block: ${ads.blocksId}</h4>
                    <h4>Category: ${ads.category}</h4>
                    <h3>Date: ${ads.date},  Ad ID:${ads.id}</h3>
                </div>
            </c:forEach>
        </div>
    </div>





</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
