<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-19
  Time: 오후 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    application.removeAttribute("name");
    application.removeAttribute("age");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>application 속성 삭제 : name, age</h1>
<h3><a href="attrView.jsp">속석 확인</a></h3>
</body>
</html>
