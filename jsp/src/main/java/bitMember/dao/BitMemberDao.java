package bitMember.dao;

import bitMember.domain.BitMember;
import jdbc.util.JdbcUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BitMemberDao {
    private BitMemberDao(){}
    private static BitMemberDao bitMemberDao = new BitMemberDao();

    public static BitMemberDao getBitMemberDao() {
        return bitMemberDao == null ? new BitMemberDao() : bitMemberDao;
    }

    public int insertBitMember(Connection connection, BitMember bitMember){
        int result = 0;
        PreparedStatement preparedStatement = null;

        String sql = "INSERT INTO bitmember (memberid, password, membername) VALUES (?, ?, ?)";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,bitMember.getMemberId());
            preparedStatement.setString(2,bitMember.getPassword());
            preparedStatement.setString(3,bitMember.getMemberName());

            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(preparedStatement);
        }

        return result;
    }

    public List<BitMember> getBitMemberList(Connection connection){
        List<BitMember> list = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            statement = connection.createStatement();
            String sql = "select * from bitMember";
            resultSet = statement.executeQuery(sql);
            list = new ArrayList<>();

            while (resultSet.next()){
                list.add(new BitMember(resultSet.getString("memberId"), resultSet.getString("password"),
                        resultSet.getString("memberName"), resultSet.getString("regTime")));

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JdbcUtil.close(resultSet);
            JdbcUtil.close(statement);
        }

        return list;
    }
}
