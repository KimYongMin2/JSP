package jdbcMember.dao;

import jdbc.util.JdbcUtil;
import jdbcMember.domain.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class MemberDao {

    private MemberDao() {
    }

    private static MemberDao dao = new MemberDao();

    public static MemberDao getInstance() {
        return dao;
    }

    public int insertMember(Connection conn, Member member) {

        int resultCnt = 0;

        PreparedStatement pstmt = null;

        String sql = "insert into member (memberid,password,membername) values (?, ?, ?)";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMemberid());
            pstmt.setString(2, member.getPassword());
            pstmt.setString(3, member.getMembername());

            resultCnt = pstmt.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return resultCnt;

    }

    public List<Member> selectList(Connection conn) {

        List<Member> list = null;

        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();

            String sql = "select * from member";

            rs = stmt.executeQuery(sql);

            list = new ArrayList<Member>();

            while (rs.next()) {
                list.add(new Member(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getTimestamp(6)));
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(stmt);
        }

        return list;

    }

    public Member selectByIdPw(Connection connection, String memberId, String password){
        Member member = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        String sql = "select * from member where memberId=? and password=?";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, memberId);
            preparedStatement.setString(2, password);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()){
                member = new Member();
                member.setIdx(resultSet.getInt("idx"));
                member.setMemberid(resultSet.getString("memberId"));
                member.setPassword(resultSet.getString("password"));
                member.setMembername(resultSet.getString("memberName"));
                member.setRegdate(resultSet.getTimestamp("regDate"));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JdbcUtil.close(resultSet);
            JdbcUtil.close(preparedStatement);
        }

        return member;
    }

}