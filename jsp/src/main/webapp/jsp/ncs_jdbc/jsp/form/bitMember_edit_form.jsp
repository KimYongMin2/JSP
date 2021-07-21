<%@ page import="bitMember.domain.BitMember" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    BitMember bitMember = (BitMember) request.getAttribute("bitMember");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BitMember edit</title>
    <style>
    </style>
    <script>

    </script>
</head>
<body>

<h1>Bit 회원정보 수정</h1>
<hr>
<form action="../jdbc/bitMember_edit_update.jsp" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="memberId" value="<%= bitMember.getMemberId() %>" readonly></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="password" value="<%= bitMember.getPassword() %>" required></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="memberName" value="<%= bitMember.getMemberName() %>" required></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="등록">
                <input type="reset">
            </td>
        </tr>
    </table>
</form>

</body>
</html>