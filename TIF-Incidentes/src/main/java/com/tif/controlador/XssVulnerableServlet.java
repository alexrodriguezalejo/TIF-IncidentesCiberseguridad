package com.tif.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class XssVulnerableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String comentario = request.getParameter("comentario");
        request.setAttribute("comentario", comentario); // ⚠️ sin filtrar
        request.getRequestDispatcher("/jsp/xss-vulnerable.jsp").forward(request, response);
    }
}
