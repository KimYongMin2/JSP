<%@ page import="java.sql.Connection" %>
<%@ page import="bitMember.dao.BitMemberDao" %>
<%@ page import="jdbc.util.ConnectionProvider" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="jdbc.util.JdbcUtil" %><%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-21
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String memberId = request.getParameter("memberId");

    int result = 0;

    Connection connection = null;
    BitMemberDao bitMemberDao = null;

    try {
        connection = ConnectionProvider.getConnection();
        bitMemberDao = BitMemberDao.getBitMemberDao();
        result = bitMemberDao.deleteBitMember(connection, memberId);
    }catch (SQLException e){
        e.printStackTrace();
    }catch (Exception e){
        e.printStackTrace();
    }finally {
        JdbcUtil.close(connection);
    }

    if (result > 0) {
%>
<script>
    alert('삭제되었습니다.');
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