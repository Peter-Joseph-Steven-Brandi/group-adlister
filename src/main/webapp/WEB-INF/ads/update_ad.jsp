<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="../messages.jsp" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>

    <div class="col-md-6">
        <h1>Update Your Ad:</h1>
        <c:forEach var="ad" items="${ad}">

        <h3 style="color: red">${sessionScope.error}</h3>

        <form action="/ads/update" method="post">
            <label for="newTitle">Title</label>
            <div class="form-group" contenteditable="true">
                <p id="newTitle" class="form-control">${ad.title}</p>
<%--                <input id="newTitle" name="newTitle" class="form-control" type="text" value= ${ad.title}>--%>
            </div>
            <label for="newDescription">Description</label>
            <div class="form-group" contenteditable="true">
                <p id="newDescription" class="form-control">${ad.description}</p>
                    <%--                <input id="newTitle" name="newTitle" class="form-control" type="text" value= ${ad.title}>--%>
            </div>

            <label for="oldCategory">Category</label>
            <div class="">
                <p id="oldCategory">${ad.category}</p>
                    <%--                <input id="newTitle" name="newTitle" class="form-control" type="text" value= ${ad.title}>--%>
            </div>

            <label for="oldBlock">Block</label>
            <div class="">
                <p id="oldBlock">${ad.block}</p>
                    <%--                <input id="newTitle" name="newTitle" class="form-control" type="text" value= ${ad.title}>--%>
            </div>
            </c:forEach>
            <br>
            <div>
                <select multiple name="category">
                    <c:forEach var="category" items="${categories}">
                            <option value="${category.id}">${category.category}</option>
                    </c:forEach>
                </select>
                <select name="block">
                    <%--                    <option value=0 selected>Unknown</option>--%>
                    <c:forEach var="block" items="${blocks}">
                        <option value="${block.id}">${block.block}</option>
                    </c:forEach>
                </select>
            </div>

            <input type="submit" class="btn btn-primary btn-block" value="Submit Changes">
            <br>
            <a href="/profile">
                <button type="button" class="btn btn-primary btn-block">Cancel</button>
            </a>
        </form>
    </div>
</div>


</body>
</html>
