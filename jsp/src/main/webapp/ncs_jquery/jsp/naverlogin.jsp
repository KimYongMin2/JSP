<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <script src="https://code.jquery.com/jquery-1.12.4.js"
          integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="../script/join/member.js"></script>
  <script src="../script/login/manager.js"></script>
  <link rel="stylesheet" href="../css/naverlogincss.css">
  <title>NAVER</title>
</head>
<body>
<div class="wrap">
  <div class="container">
    <div class="logo">
      <img src="../img/NAVER.png" alt="logo">
    </div>
    <div class="login_section">
      <form id="loginForm" class="login" >
        <input type="text" id="loginID" class="id" placeholder="아이디">
        <input type="password" id="loginPW" class="pw" placeholder="비밀번호">
        <input type="submit" class="login_btn" value="로그인">
      </form>
      <a href="naverjoin.jsp">가입하기</a>
      <a href="memberList.jsp">리스트보기</a>
    </div>
  </div><!--container-->
</div><!--wrap-->
</body>
</html>