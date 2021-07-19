<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-19
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String userName = (String)session.getAttribute("userName");
%>
<h1> 세션의 속성에 저장된 userName : <%= session.getAttribute("userName")%></h1>
<h1> userName  <%= userName%> </h1>
<h3><A href="logout.jsp">로그아웃</A> </h3>
</body>
</html>
