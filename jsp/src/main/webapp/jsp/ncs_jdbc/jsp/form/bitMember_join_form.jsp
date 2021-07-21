<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BitMember Join</title>
    <style>
    </style>
    <script>

    </script>
</head>
<body>

<h1>Bit 회원 가입</h1>
<hr>
<button onclick="location.href='/jsp_war/jsp/ncs_jdbc/jsp/form/bitMember_first_form.jsp';">처음화면</button>
<button onclick="location.href='/jsp_war/jsp/ncs_jdbc/jsp/jdbc/bitMember_list_select.jsp';">리스트보기</button>
<form action="../jdbc/bitMember_join_insert.jsp" method="post">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="memberId" required></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="password" required></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="memberName" required></td>
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