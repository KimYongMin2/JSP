<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    Object loginObj = session.getAttribute("loginInfo");

%>
<nav>
    <ul>
        <%
            if (loginObj == null) {
        %>
        <li><a href="/JSP_war/jsp/jdbcMember_jsp/regForm.jsp">회원가입</a></li>
        <li><a href="/JSP_war/jsp/jdbcMember_jsp/loginForm.jsp">로그인</a></li>
        <%
        } else {
        %>
        <li><a href="/JSP_war/jsp/jdbcMember_jsp/logout.jsp">로그아웃</a></li>
        <li><a href="/JSP_war/jsp/jdbcMember_jsp/member_list.jsp">회원리스트</a></li>
        <%
            }
        %>
        <li><a href="/JSP_war/jsp/jdbcMember_jsp/mypage.jsp">마이페이지</a></li>
    </ul>
</nav>