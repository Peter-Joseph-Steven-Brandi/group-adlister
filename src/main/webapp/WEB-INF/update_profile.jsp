<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="messages.jsp" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
    <style>
        body{
            background-image: url("https://img3.akspic.com/image/13527-dragon_age_inquisition-dungeons_dragons-magic_the_gathering-dungeons_and_dragons-game-1920x1080.jpg");
            background-position: center;
            background-size: 90rem 50rem;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1 class="text-left">Welcome, ${sessionScope.user.username}!</h1>

    <div class="col-md-12">
        <h1 class="text-center">Update Your Info:</h1>
        <h3 style="color: red">${sessionScope.error}</h3>

        <form action="/update" method="post">
            <div class="form-group">
                <p id="oldUsername">Current Username: ${sessionScope.user.username}</p>
            </div>
            <div class="form-group">
                <label for="username">New Username:</label>
                <input id="username" name="username" class="form-control" type="text"
                       value= ${sessionScope.user.username}>
            </div>
            <div class="form-group">
                <p id="oldEmail">Current Email: ${sessionScope.user.email}</p>
            </div>
            <div class="form-group">
                <label for="email">New Email:</label>
                <input id="email" name="email" class="form-control" type="text" value= ${sessionScope.user.email}>
            </div>
            <div class="form-group">
                <label for="oldPassword">Please Enter Your Current Password:</label>
                <input id="oldPassword" name="oldPassword" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="newPassword">New Password:</label>
                <input id="newPassword" name="newPassword" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm New Password:</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>


    </div>
</div>


</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
