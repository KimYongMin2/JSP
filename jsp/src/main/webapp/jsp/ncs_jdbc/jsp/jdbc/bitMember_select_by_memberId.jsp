<%@ page import="java.sql.Connection" %>
<%@ page import="bitMember.dao.BitMemberDao" %>
<%@ page import="jdbc.util.ConnectionProvider" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-21
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String memberId = request.getParameter("memberId");

    Connection connection = null;
    BitMemberDao bitMemberDao = null;

    try {
        connection = ConnectionProvider.getConnection();
        bitMemberDao = BitMemberDao.getBitMemberDao();

        request.setAttribute("bitMember", bitMemberDao.selectById(connection, memberId));
    } catch (SQLException e){
        e.printStackTrace();
    }
%>
<jsp:forward page="../form/bitMember_edit_form.jsp"/>