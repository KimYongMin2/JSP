<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-19
  Time: 오전 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Enumeration e = application.getAttributeNames();
    while (e.hasMoreElements()){
        String name = (String) e.nextElement();
        out.println(name + " = "+ application.getAttribute(name) + "<br><br>");
    }
%>
<h3><a href="remAttr.jsp">속성 삭제</a></h3>
<h1></h1>
</body>
</html>
