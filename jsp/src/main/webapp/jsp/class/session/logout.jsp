<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-19
  Time: 오전 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>로그아웃 되었습니다.</h1>
<h3><a href="sessionView.jsp">세션 정보 확인하기</a> </h3>
</body>
</html>
