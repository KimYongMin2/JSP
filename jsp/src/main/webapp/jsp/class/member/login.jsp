<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-26
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("userName",request.getParameter("id"));
    response.sendRedirect("/jsp_war/jsp/class/member/mypage/mypage.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
