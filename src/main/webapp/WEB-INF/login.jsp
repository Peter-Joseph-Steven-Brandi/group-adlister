<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="/WEB-INF/messages.jsp" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
    <style>
        body{
            background-image: url("https://www.wallpaperup.com/uploads/wallpapers/2017/05/23/1090492/0dcc06a8ebbd80d6bafdfb3d84c8d372.jpg");
            background-position: center;
            background-size: 90rem 50rem;
        }
        .container{
            margin-top: 175px;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container align-content-center">
    <h1 class="text-center">Please Log In:</h1>
    <c:if test="${sessionScope.error != null}">
        <h3 style='color:red; text-align: center'>"${sessionScope.error}"</h3>
        <% request.getSession().removeAttribute("error");%>
    </c:if>

    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Username:</label>
            <c:choose>
                <c:when test="${sessionScope.username!=null}">
                    <input id="username" name="username" class="form-control" type="text" value= ${sessionScope.username}>
                    <%request.getSession().removeAttribute("username");%>
                </c:when>
                <c:otherwise>
                    <input id="username" name="username" class="form-control" type="text">
                </c:otherwise>
            </c:choose>
            <input type="hidden" name="from" value="${param.from}"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
