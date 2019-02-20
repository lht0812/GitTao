package com.java1824.coolboys.utils;

import java.sql.*;
import java.util.ResourceBundle;

public class SQLUtils {

    private static String DRIVER = ResourceBundle.getBundle("cfg").getString("DRIVER");
    private static String URL = ResourceBundle.getBundle("cfg").getString("URL");
    private static String NAME = ResourceBundle.getBundle("cfg").getString("NAME");
    private static String PWD = ResourceBundle.getBundle("cfg").getString("PWD");

    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnect() throws SQLException {
        Connection connection = DriverManager.getConnection(URL, NAME, PWD);
        return connection;
    }


    public static void close(ResultSet resultSet) throws SQLException {
        if (resultSet != null) {
            resultSet.close();
        }
    }

    public static void close(Statement statement) throws SQLException {
        if (statement != null) {
            statement.close();
        }
    }

    public static void close(Connection connection) throws SQLException {
        if (connection != null) {
            connection.close();
        }
    }


}
