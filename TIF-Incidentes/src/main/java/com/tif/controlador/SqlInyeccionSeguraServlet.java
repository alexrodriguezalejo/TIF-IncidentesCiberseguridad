package com.tif.controlador;

import com.tif.util.ConexionBD;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class SqlInyeccionSeguraServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("username");
        String clave = request.getParameter("password");

        String resultado = "";

        try (Connection con = ConexionBD.conectar();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM usuarios WHERE username = ? AND password = ?")) {

            ps.setString(1, usuario);
            ps.setString(2, clave);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                resultado = "Login exitoso (seguro)";
            } else {
                resultado = "Credenciales inválidas";
            }

        } catch (SQLException e) {
            resultado = "Error en la base de datos: " + e.getMessage();
        }

        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("/jsp/sql-seguro.jsp").forward(request, response);
    }
}
