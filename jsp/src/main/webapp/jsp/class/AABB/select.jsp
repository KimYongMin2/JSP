<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //사용자로부터 파라미터를 받아 응답을 분기해주는 처리
    //select.jsp?sel=aa
    String select = request.getParameter("sel");

    if (select != null) {
        if (select.equals("aa")) {
%>
<jsp:forward page="aa.jsp"></jsp:forward>
<%} else if (select.equals("bb")) {%>
<jsp:forward page="bb.jsp"></jsp:forward>
<%
} else if (select.equals("blog")) {%>
<jsp:forward page="../../blog/jsp/blog.jsp"></jsp:forward>
<%
        }
    }
%>


잘못된 요청입니다.