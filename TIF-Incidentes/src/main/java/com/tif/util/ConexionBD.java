package com.tif.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
    private static final String URL = "jdbc:mysql://localhost:3306/tif_db";
    private static final String USER = "root";
    private static final String PASSWORD = "1234"; // Cambia esto

    public static Connection conectar() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Forzamos la carga del driver
        } catch (ClassNotFoundException e) {
            throw new SQLException("Error cargando el driver de MySQL", e);
        }

        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

