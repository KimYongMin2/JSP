<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 5:58
  To change this template use File | Settings | File Templates.
--%>
<%
    request.setCharacterEncoding("UTF-8");

    String userID = request.getParameter("userID");
    String pw = request.getParameter("password");
    String userName = request.getParameter("userName");
    String year = request.getParameter("year");
    String month = request.getParameter("month");
    String day = request.getParameter("day");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String nation = request.getParameter("nation");
    String num = request.getParameter("num");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://code.jquery.com/jquery-1.12.4.js"
            integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../script/projectscript/function.js"></script>
    <script src="../script/projectscript/member.js"></script>
    <script src="../script/projectscript/manager.js"></script>

    <title>member</title>
</head>
<body>
<header>
    <h1>member</h1>
    <hr>
    <table border="1">
      <tr>
        <td>아이디</td>
        <td>
          <%= userID%>
        </td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td>
          <%= pw%>
        </td>
      </tr>
      <tr>
        <td>이름</td>
        <td>
          <%= userName%>
        </td>
      </tr>
      <tr>
        <td>생일</td>
        <td>
          <%= year+'-'+month+'-'+day%>
        </td>
      </tr>
      <tr>
        <td>성별</td>
        <td>
          <%= gender%>
        </td>
      </tr>
        <tr>
            <td>이메일</td>
            <td>
                <%= email%>
            </td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td>
                <%= nation +':' + num%>
            </td>
        </tr>

    </table>
</header>
<div id="list">
</div>
<div>
    <a href="naverjoin.jsp">가입하기</a>
</div>
</body>
</html>
