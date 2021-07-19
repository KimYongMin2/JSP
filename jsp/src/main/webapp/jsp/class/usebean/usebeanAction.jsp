<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-19
  Time: 오후 3:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="member" class="member.Member" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%= member %>
<br>
<%= member.getName() %>
</body>
</html>
