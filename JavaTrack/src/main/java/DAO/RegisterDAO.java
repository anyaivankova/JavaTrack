package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDAO {

    public boolean registerUser(String login, String password, String email, String phoneNumber)
    {
        ConnectionDAO.loadDriver();
        Connection con = ConnectionDAO.getConnection();

        String sql = "INSERT IGNORE INTO User (login, password, email, phoneNumber, role ) " +
                " VALUES ( ?, ?, ?, ?, 'user'); ";

        PreparedStatement ps;
        int rows = 0;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, login);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phoneNumber);
            rows = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return rows == 1;
    }



}
