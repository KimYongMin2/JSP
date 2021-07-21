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

    public BitMember selectById(Connection connection, String memberId) {
        BitMember bitMember = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        String sql = "select * from bitMember where memberId=?";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, memberId);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                bitMember = new BitMember(resultSet.getString("memberId"), resultSet.getString("password"),
                        resultSet.getString("memberName"), resultSet.getString("regTime"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(resultSet);
            JdbcUtil.close(preparedStatement);
        }
        return bitMember;
    }

    public int updateBitMember(Connection connection, BitMember bitMember){
        int result=0;
        PreparedStatement preparedStatement = null;
        String sql = "update bitMember set password=?, memberName=? where memberId=?";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,bitMember.getPassword());
            preparedStatement.setString(2,bitMember.getMemberName());
            preparedStatement.setString(3,bitMember.getMemberId());

            result = preparedStatement.executeUpdate();

        } catch (SQLException e){
            e.printStackTrace();
        } finally {
            JdbcUtil.close(preparedStatement);
        }

        return result;
    }
    public int deleteBitMember(Connection connection, String memberId){
        int result = 0;

        PreparedStatement preparedStatement = null;

        String sql = "delete from bitMember where memberId=?";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,memberId);

            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.close(preparedStatement);
        }

        return result;
    }
}
