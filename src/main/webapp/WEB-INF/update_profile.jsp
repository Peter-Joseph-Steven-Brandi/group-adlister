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

    <div class="col-md-6">
        <h1>Update Your Info:</h1>

        <form action="/update" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text" value = ${sessionScope.user.username}>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                    <input id="email" name="email" class="form-control" type="text" value = ${sessionScope.user.email}>
            </div>
            <div class="form-group">
                <label for="oldpassword">Old Password</label>
                <input id="oldpassword" name="oldpassword" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="newpassword">New Password</label>
                <input id="newpassword" name="newpassword" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm New Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>




    </div>
</div>





</body>
</html>
