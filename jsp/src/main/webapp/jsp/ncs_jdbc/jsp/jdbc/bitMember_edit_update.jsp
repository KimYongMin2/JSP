<%@ page import="java.sql.Connection" %>
<%@ page import="bitMember.dao.BitMemberDao" %>
<%@ page import="jdbc.util.ConnectionProvider" %>
<%@ page import="bitMember.domain.BitMember" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-21
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String memberId = request.getParameter("memberId");
    String password = request.getParameter("password");
    String memberName = request.getParameter("memberName");
    String regTime = request.getParameter("regTime");
    out.println(memberId + password + regTime + memberName);
    int result = 0;

    Connection connection = null;
    BitMemberDao bitMemberDao = null;

    try {
        connection = ConnectionProvider.getConnection();
        bitMemberDao = BitMemberDao.getBitMemberDao();

        result = bitMemberDao.updateBitMember(connection, new BitMember(memberId, password, memberName, regTime));

    } catch (SQLException e) {
        e.printStackTrace();
    }
    if (result > 0) {
%>
<script>
    alert('수정되었습니다.');
    location.href = 'bitMember_list_select.jsp';
</script>
<%
} else {
%>
<script>
    alert("해당 데이터를 찾지 못했습니다.");
    location.href = 'bitMember_list_select.jsp';
</script>
<%
    }
%>