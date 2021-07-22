<%@ page import="cookie.util.CookieBox" %>
<%@ page import="jdbcMember.domain.Member" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="jdbcMember.dao.MemberDao" %>
<%@ page import="jdbc.util.ConnectionProvider" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-22
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String memberID = request.getParameter("memberId");
    String password = request.getParameter("password");
    String reId = request.getParameter("reId");

    boolean loginChk = false;

    Connection connection = null;
    MemberDao memberDao = null;

    if (memberID != null && password != null && memberID.trim().length() > 2 && password.trim().length() > 3) {
        try {

            connection = ConnectionProvider.getConnection();
            memberDao = MemberDao.getInstance();

            Member member = memberDao.selectByIdPw(connection, memberID, password);

            if (member != null) {
                //회원 정보를 Session 객체에 저장
                //session.setAttribute("member", member);
                session.setAttribute("loginInfo", member.toLoginInfo());
                loginChk = true;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // ID 저장을 위한 쿠키 설정
    // reId 값의 유무 체크
    if (reId != null && reId.equals("on")) {
        response.addCookie(CookieBox.makeCookie("reId", memberID, "/", 60 * 60 * 24 * 365));
    } else {
        response.addCookie(CookieBox.makeCookie("reId", memberID, "/", 0));

    }

    if (loginChk) {
        response.sendRedirect("/JSP_war/jsp/jdbcMember_jsp/index.jsp");
    } else {
%>
<script>
    alert('아이디 또는 비밀번호가 일치하지 않습니다');
    window.history.go(-1);
</script>
<%
    }
%>

