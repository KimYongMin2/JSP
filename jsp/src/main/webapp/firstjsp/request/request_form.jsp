<%--
  Created by IntelliJ IDEA.
  User: kym96
  Date: 2021-07-16
  Time: 오후 4:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request_form</title>
</head>
<body>
<header>
    <h1>request Form Test</h1>
    <hr>
    <%--    데이터를 처리할 위치로 전송 : input요소에 name 속성을 반드시!! 정의해주어야 한다--%>
    <form action="request_result.jsp" method="post">
        <table>
            <tr>
                <td>이름</td>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>
            <tr>
                <td>직업</td>
                <td>
                    <SELECT name="job">
                        <OPTION>자바 프로그래머</OPTION>
                        <OPTION>그래픽 디자이너</OPTION>
                        <OPTION>시스템 엔지니어</OPTION>
                    </SELECT>
                </td>
            </tr>
            <tr>
                <td>관심사항</td>
                <td>
                    <input type="checkbox" name="interest" value="java"> java
                    <input type="checkbox" name="interest" value="css3"> css3
                    <input type="checkbox" name="interest" value="javascript"> javascript
                    <input type="checkbox" name="interest" value="jsp"> jsp
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit">
                    <input type="reset">
                </td>
            </tr>
        </table>
    </form>
</header>
</body>
</html>
