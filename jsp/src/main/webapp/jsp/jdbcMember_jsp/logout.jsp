<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-22
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
%>
<script>
    alert('로그아웃 되었습니다.')
    location.href = '/JSP_war/jsp/jdbcMember_jsp/index.jsp'
</script>
