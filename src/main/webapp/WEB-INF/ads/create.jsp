<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/CSS.jsp"/>
    <style>
    body{
    background-image: url("http://epicwallpaperz.com/wallpaper-hd/magic-wallpaper-high-resolution-On-wallpaper-hd.jpg");
    background-position: center;
    background-size: 90rem 50rem;
    }
        select{
            margin-left: 195px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1 class="text-center">Create a New Ad:</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Title:</label>
            <c:if test="${sessionScope.error!=null}">
                <input id="title" name="title" class="form-control" type="text" value = ${sessionScope.title}>
                <%request.getSession().removeAttribute("title");%>
            </c:if>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <c:if test="${sessionScope.error != null}">
            <textarea id="description" name="description" class="form-control" type="text" value = ${sessionScope.description}>
                    <%request.getSession().removeAttribute("email");%>
                </c:if>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
            <div class="row">
                <div class="col-6 justify-content-center">
                <h6>Categories:</h6>
            <select multiple name="category">
                <c:forEach var="category" items="${categories}">
                    <option value="${category.id}">${category.category}</option>
                </c:forEach>
            </select>
                    </div>
                <div class="col-6 justify-content-center">
                        <h6>Block:</h6>
                    <select name="block">
                    <%--                    <option value=0 selected>Unknown</option>--%>
                        <c:forEach var="block" items="${blocks}">
                            <option  value="${block.id}">${block.block}</option>
                        </c:forEach>
                    </select>
                </div>
        <input type="submit" class="btn btn-block btn-primary mt-2">
            </div>
    </form>
    </div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />

</footer>
</html>