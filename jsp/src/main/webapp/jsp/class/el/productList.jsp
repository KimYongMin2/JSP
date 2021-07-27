<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-23
  Time: 오전 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="product" class="product.Product" scope="session"/>

<h1> 상품리스트 : 원하시는 상품을 선택하세요</h1>
<form action="productSelect.jsp">
    <select name="select">
        <%
            for (int i = 0; i < product.getPList().length; i++) {
                out.println("<option>" + product.getPList()[i] + "</option>");
            }
        %>
    </select>
    <input type="submit">
</form>
</body>
</html>
