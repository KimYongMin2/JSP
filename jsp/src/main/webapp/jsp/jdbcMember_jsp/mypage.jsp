<%@ page import="jdbcMember.domain.Member" %>
<%@ page import="jdbcMember.domain.LoginInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    LoginInfo loginInfo = (LoginInfo) session.getAttribute("loginInfo");
    if (loginInfo == null) {
%>
<script>
    alert('로그인이 필요한 페이지입니다.\n로그인 후 사용해주세요!!')
    location.href = '/JSP_war/jsp/jdbcMember_jsp/loginForm.jsp'
</script>
<%
} else {
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/JSP_war/jsp/jdbcMember_jsp/css/default.css">
    <style>
    </style>
    <script>
    </script>
</head>
<body>

<%@ include file="frame/header.jsp" %>

<%@ include file="frame/nav.jsp" %>

<div class="contents">

    <h2>My page</h2>
    <hr>
    <h3>
        <%= loginInfo%>
    </h3>

</div>


</body>
</html>
<%
    }
%>