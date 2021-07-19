<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>BBB</h1>
이메일 : <%= request.getParameter("email")%> ,
전화번호 : <%= request.getParameter("tel")%>
</body>
</html>
