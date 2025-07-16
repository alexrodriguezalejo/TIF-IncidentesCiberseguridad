package com.tif.controlador;

import com.tif.util.ConexionBD;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class SqlInyeccionVulnerableServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("username");
        String clave = request.getParameter("password");

        String resultado = "";

        try (Connection con = ConexionBD.conectar();
             Statement stmt = con.createStatement()) {

            String sql = "SELECT * FROM usuarios WHERE username = '" + usuario + "' AND password = '" + clave + "'";
            System.out.println("Consulta ejecutada: " + sql);

            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                resultado = "Login exitoso (vulnerable)";
            } else {
                resultado = "Credenciales inválidas";
            }

        } catch (SQLException e) {
            resultado = "Error en la base de datos: " + e.getMessage();
        }

        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("/jsp/sql-vulnerable.jsp").forward(request, response);
    }
}
