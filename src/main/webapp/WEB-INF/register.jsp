<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="messages.jsp"%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
    <style>
        body{
            background-image: url("https://images.alphacoders.com/265/thumb-1920-265693.png");
            background-position: center;
            background-size: 90rem 50rem;
        }
        .container{
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1 class="text-center">Please fill in your information:</h1>
          <c:if test="${sessionScope.error != null}">
        <h3 style='color:red; text-align: center'>"${sessionScope.error}"</h3>
        <%request.getSession().removeAttribute("error");%>
    </c:if>

        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <c:if test="${sessionScope.error!=null}">
                    <input id="username" name="username" class="form-control" type="text" value = ${sessionScope.username}>
                    <%request.getSession().removeAttribute("username");%>
                </c:if>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <c:if test="${sessionScope.error!=null}">
                    <input id="email" name="email" class="form-control" type="text" value = ${sessionScope.email}>
                    <%request.getSession().removeAttribute("email");%>
                </c:if>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
