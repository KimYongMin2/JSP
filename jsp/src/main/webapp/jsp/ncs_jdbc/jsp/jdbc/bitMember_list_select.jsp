<%@ page import="java.sql.Connection" %>
<%@ page import="bitMember.dao.BitMemberDao" %>
<%@ page import="jdbc.util.ConnectionProvider" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="jdbc.util.JdbcUtil" %>
Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-21
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Connection connection = null;
    BitMemberDao bitMemberDao = BitMemberDao.getBitMemberDao();

    try {
        connection = ConnectionProvider.getConnection();
        request.setAttribute("result", bitMemberDao.getBitMemberList(connection));
    } catch (SQLException e){
        e.printStackTrace();
    } catch (Exception e){
        e.printStackTrace();
    } finally {
        JdbcUtil.close(connection);
    }
%>
<jsp:forward page="../form/bitMember_list_form.jsp"/>