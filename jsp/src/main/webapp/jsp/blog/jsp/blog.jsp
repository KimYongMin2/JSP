<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Blog</title>
    <%--http://localhost:8090/jsp_war/blog/css/myblog.css--%>
    <link rel="stylesheet" href="/jsp_war/jsp/blog/css/myblog.css">
</head>
<body>

<div id="main_wrap">
    <!-- header 시작 -->
    <%@include file="include/header.jsp" %>
    <!-- header 끝-->

    <!-- navigation 시작 -->
    <%@include file="include/nav.jsp" %>
    <!-- navigation 끝 -->

    <!-- 컨테츠 영역 시작-->
    <div id="content_wrap">
        <%@include file="include/section.jsp" %>
        <%@include file="include/aside.jsp" %>
    </div>
    <!-- 컨테츠 영역 끝-->

    <!--footer 시작 -->
    <%@include file="include/footer.jsp" %>
    <!--footer 끝 -->

</div>

</body>
</html>
