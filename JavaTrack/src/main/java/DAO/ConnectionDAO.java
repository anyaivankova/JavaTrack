package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {
    private static String dbUrl = "jdbc:mysql://localhost:3306/JavaTrack";
    private static String dbUname = "root";
    private static String dbPassword = "Circle228.";
    private static String dbDriver = "com.mysql.cj.jdbc.Driver";

    public static void loadDriver()
    {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection()
    {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
}
