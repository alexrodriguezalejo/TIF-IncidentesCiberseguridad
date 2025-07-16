package com.tif.controlador;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class AuthSeguroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if ("admin".equals(user) && "admin123".equals(pass)) {
            // Invalida sesión previa para evitar fijación
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            // Crear nueva sesión
            session = request.getSession(true);
            session.setAttribute("user", user);

            response.sendRedirect(request.getContextPath() + "/jsp/auth-seguro-home.jsp");
        } else {
            request.setAttribute("error", "Credenciales inválidas");
            request.getRequestDispatcher("/jsp/auth-seguro.jsp").forward(request, response);
        }
    }
}
