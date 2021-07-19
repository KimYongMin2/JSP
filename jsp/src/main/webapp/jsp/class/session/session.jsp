<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-19
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("userName", "son");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>세션에 사용자 이름을 저장했습니다. : <%= session.getAttribute("userName") %></h1>
<h3><a href="sessionView.jsp">세션의 속성 정보 확인</a></h3>
</body>
</html>
