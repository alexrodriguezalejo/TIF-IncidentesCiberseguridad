package com.tif.controlador;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class DatosSeguroServlet extends HttpServlet {

    // Simulación base de datos con contraseñas hasheadas (pero no mostramos)
    private static Map<String, Map<String, String>> usuarios = new HashMap<>();

    static {
        Map<String, String> user1 = new HashMap<>();
        user1.put("nombre", "Juan Pérez");
        user1.put("passwordHash", "****hashed_password****"); // simulado
        usuarios.put("juan", user1);

        Map<String, String> user2 = new HashMap<>();
        user2.put("nombre", "María Gómez");
        user2.put("passwordHash", "****hashed_password****"); // simulado
        usuarios.put("maria", user2);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        Map<String, String> datos = usuarios.get(username);

        if (datos != null) {
            request.setAttribute("usuario", username);
            request.setAttribute("nombre", datos.get("nombre"));
            request.setAttribute("mensaje", "Datos cargados correctamente (seguro)");
        } else {
            request.setAttribute("mensaje", "Usuario no encontrado");
        }

        request.getRequestDispatcher("/jsp/datos-seguro.jsp").forward(request, response);
    }
}
