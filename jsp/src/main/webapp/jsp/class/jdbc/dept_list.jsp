<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="dept.domain.Dept" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2021-07-20
  Time: 오후 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //1. 드라이버 로드
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    // 2. DB 연결
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    // jdbcUrl
    String jdbcUrl = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC";
    String user = "bit";
    String pw = "bit";

    conn = DriverManager.getConnection(jdbcUrl,user,pw);

    // 3. Statement
    stmt = conn.createStatement();

    // sql
    String sqlSelect = "select * from dept";

    // 4. ResultSet
    rs = stmt.executeQuery(sqlSelect);

    // 5. List<Dept> <- 결과
    List<Dept> deptList = new ArrayList<>();

    while (rs.next()){
        //List에 객체 추가
        deptList.add(new Dept(rs.getInt("deptno"),
                rs.getString("dname"), rs.getString("loc")));
    }

    out.println(deptList);

    // 6. 결과 데이터를 request 의 속성에 저장
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
