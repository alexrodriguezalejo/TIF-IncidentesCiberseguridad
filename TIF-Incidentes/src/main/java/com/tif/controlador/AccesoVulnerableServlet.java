package com.tif.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class AccesoVulnerableServlet extends HttpServlet {

    private static final Map<String, String> nombres = new HashMap<>();

    static {
        nombres.put("admin", "Administrador General");
        nombres.put("test", "Usuario de Prueba");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("user");
        String nombre = nombres.getOrDefault(usuario, "Desconocido");

        request.setAttribute("usuario", usuario);
        request.setAttribute("nombre", nombre);

        request.getRequestDispatcher("/jsp/acceso-vulnerable-datos.jsp").forward(request, response);
    }
}
