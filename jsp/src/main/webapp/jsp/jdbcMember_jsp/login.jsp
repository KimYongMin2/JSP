<%@ page import="cookie.util.CookieBox" %><%--
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

  // ID 저장을 위한 쿠키 설정
  // reId 값의 유무 체크
  if(reId!=null&& reId.equals("on")){
    response.addCookie(CookieBox.makeCookie("reId",memberID,"/", 60*60*24*365));
  }
  else{
    response.addCookie(CookieBox.makeCookie("reId",memberID,"/", 0));

  }

%>

<script>
  alert('로그인 되었습니다');
  location.href = '/JSP_war/jsp/jdbcMember_jsp/index.jsp';
</script>