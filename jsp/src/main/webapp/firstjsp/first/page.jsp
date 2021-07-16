<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page</title>
</head>
<body>
<%@include file="include/top.jsp"%>
<%@include file="include/nav.jsp"%>
<div id="wrap">
    <%@include file="include/news.jsp"%>
    <%@include file="include/shopping.jsp"%>
</div>
<jsp:include page="include/footer.jsp">
    <jsp:param name="email" value="kym960304@naver.com"/>
    <jsp:param name="tel" value="010-6858-8374"/>
</jsp:include>
</body>
</html>
