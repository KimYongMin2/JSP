<%@page import="java.util.List"%>
<%@ page import="bitMember.domain.BitMember" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    List<BitMember> list = (List<BitMember>) request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BitMember_List</title>
    <style>
        td {
            text-align: center;
            padding: 5px 10px;
        }

        button {
            margin: 5px 0;
        }
    </style>
    <script>
    </script>
</head>
<body>

<h1>bitMember_list</h1>
<hr>
<button onclick="location.href='/jsp_war/jsp/ncs_jdbc/jsp/form/bitMember_first_form.jsp';">처음화면</button>
<button onclick="location.href='/jsp_war/jsp/ncs_jdbc/jsp/form/bitMember_join_form.jsp';">회원가입</button>

<table border=1>
    <tr>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>가입일시</th>
        <th>관리</th>
    </tr>

    <%
        if(list!=null){
            for(int i=0; i<list.size(); i++){
    %>
    <tr>
        <td><%= list.get(i).getMemberId() %></td>
        <td><%= list.get(i).getPassword() %></td>
        <td><%= list.get(i).getMemberName() %></td>
        <td><%= list.get(i).getRegTime() %></td>
        <td>
            <a href="../jdbc/bitMember_select_by_memberId.jsp?memberId=<%= list.get(i).getMemberId() %>">수정</a>
            <a href="javascript:delDept(<%= list.get(i).getMemberId() %>)">삭제</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
<script>

    function delDept(memberId){

        if(confirm('정말 삭제하시겠습니까?')) {
            location.href = '../jdbc/bitMember_delete_delete.jsp?memberId=' + memberId
        }
    }

</script>

</body>
</html>