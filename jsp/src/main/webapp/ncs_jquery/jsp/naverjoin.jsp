<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/naverjoincss.css">
    <title>NAVER</title>
</head>
<body>
<div class="wrap">
    <div class="container">
        <div class="logo">
            <img src="../img/NAVER.png" alt="logo" class="logo">
        </div>
        <div class="join_section">
            <form id="loginForm" action="member.jsp" class="join" method="get">
                <label for="id" class="id_form">아이디
                    <span class="form_wrap">
                            <input type="text" id="id" name="userID">
                            <span>@naver.com</span>
                        <div id="idMsg" class="msg"></div>
                        </span>
                </label>
                <label for="pw" class="password_form">비밀번호
                    <span class="form_wrap">
                            <input type="password" id="pw" name="password">
                        <div class="msg"></div>
                        </span>
                </label>
                <label for="pw_re" class="password_re_form">비밀번호 재확인
                    <span class="form_wrap">
                            <input type="password" id="pw_re" name="rePassword">
                        <div class="msg"></div>
                        </span>
                </label>
                <label for="name" class="name_form">이름
                    <span class="form_wrap">
                            <input type="text" id="name" name="userName">
                        <div class="msg"></div>
                        </span>
                </label>
                <label id="birthwrap" for="year" class="birthday_form">생년월일
                    <span class="form_wrap">
                            <input type="text" id="year" name="year" placeholder="년(4자)">
                            <select name="month" id="month">
                                <option value="월">월</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <input type="text" id="day" name="day" placeholder="일">
                        </span>
                </label>
                <div class="msg"></div>
                <label for="gender" class="gender_form">성별
                    <span class="form_wrap">
                            <select name="gender" id="gender">
                                <option value="성별">성별</option>
                                <option value="남자">남자</option>
                                <option value="여자">여자</option>
                                <option value="선택안함">선택안함</option>
                            </select>
                        <div class="msg"></div>
                        </span>
                </label>
                <label for="email" class="email_form">본인 확인 이메일<span class="sub">(선택)</span>
                    <span class="form_wrap">
                            <input type="text" id="email" placeholder="선택입력" name="email">
                        <div class="msg"></div>
                        </span>
                </label>
                <label for="phone" class="phone_form">휴대전화
                    <span class="form_wrap">
                            <select name="nation" id="phone">
                                <option value="대한민국 +82">대한민국 +82</option>
                                <option value="덴마크 +45">덴마크 +45</option>
                            </select>
                        <div class="msg"></div>
                            <div>
                                <input type="text" id="num" placeholder="전화번호 입력" class="write_phone_num" name="num">
                                <div class="msg"></div>
                                <a href="#" class="certification_btn">인증번호 받기</a>
                            </div>
                            <input type="text" placeholder="인증번호 입력하세요">
                        <div class="msg"></div>
                        </span>
                </label>
                <input type="submit" value="가입하기" class="join_btn">
            </form>
        </div>
    </div><!-- container-->
</div><!-- wrap-->
<div id="list">
</div>
</body>
</html>