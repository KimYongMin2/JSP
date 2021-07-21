<%@ page import="java.sql.Connection" %>
<%@ page import="bitMember.dao.BitMemberDao" %>
<%@ page import="jdbc.util.ConnectionProvider" %>
<%@ page import="bitMember.domain.BitMember" %><%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-21
  Time: 오후 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String memberId = request.getParameter("memberId");
    String password = request.getParameter("password");
    String memberName = request.getParameter("memberName");

    int result = 0;

    Connection connection = null;
    BitMemberDao bitMemberDao = BitMemberDao.getBitMemberDao();

    try {
        connection = ConnectionProvider.getConnection();
        result = bitMemberDao.insertBitMember(connection, new BitMember(memberId, password, memberName));
    } catch (Exception e) {
        e.printStackTrace();
    }
    if (result > 0) {
%>
// 등록
<script>
    alert('등록되었습니다.');
    location.href = '/jsp_war/jsp/ncs_jdbc/jsp/jdbc/bitMember_list_select.jsp';
</script>
<%
} else {
%>
// 노등록
<script>
    alert('오류 발생으로 등록되지 않았습니다.');
    window.history.go(-1);
</script>
<%
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
