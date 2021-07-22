<%@ page import="cookie.util.CookieBox" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    CookieBox cBox = new CookieBox(request);

    String reId = cBox.exists("reId") ? cBox.getValue("reId") : "";
    String checked = cBox.exists("reId") ? "checked" : "";
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

    <h2>login</h2>
    <hr>
    <form action="login.jsp">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="memberId" value="<%= reId%>"></td>
            </tr>
            <tr>
                <th>PW</th>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <th></th>
                <td><input type="checkbox" name="reId" value="on" <%= checked%>>아이디 기억하기</td>
            </tr>
            <tr>
                <th></th>
                <th><input type="submit"></th>
            </tr>
        </table>
    </form>
</div>


</body>
</html>