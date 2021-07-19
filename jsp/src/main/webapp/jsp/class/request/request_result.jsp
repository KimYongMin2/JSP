<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%
  request.setCharacterEncoding("UTF-8");

    String userName = request.getParameter("username");
    String job = request.getParameter("job");

    String[] interests = request.getParameterValues("interest");

    request.setAttribute("userName", userName);
    request.setAttribute("job", job);
    request.setAttribute("age", 30);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request_result</title>
</head>
<body>
<header>
    <h1>request Form Test : result</h1>
    <hr>
    <table border="1">
        <tr>
            <td>이름</td>
            <td>
                <%= userName%>
            </td>
        </tr>
        <tr>
            <td>직업</td>
            <td>
                <%= job%>
            </td>
        </tr>
        <tr>
            <td>관심사항</td>
            <td>
                <%
                    if (interests != null && interests.length > 0) {
                        for (int i = 0; i < interests.length; i++) {
                            out.println(interests[i]+"<br>");
                        }
                    }
                %>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <jsp:include page="view.jsp"></jsp:include>
            </td>
        </tr>
    </table>
</header>
</body>
</html>
