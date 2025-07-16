package com.tif.controlador;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class AuthVulnerableServlet extends HttpServlet {

    // Para demo: usuario hardcodeado admin/admin123
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if ("admin".equals(user) && "admin123".equals(pass)) {
            // Vulnerabilidad: no invalidamos sesión previa
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);

            // Redirigimos a página protegida (sin validación)
            response.sendRedirect(request.getContextPath() + "/jsp/auth-vulnerable-home.jsp");
        } else {
            request.setAttribute("error", "Credenciales inválidas");
            request.getRequestDispatcher("/jsp/auth-vulnerable.jsp").forward(request, response);
        }
    }
}
