package com.tif.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class HtmlInyeccionVulnerableServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String comentario = request.getParameter("comentario");
        // ⚠️ Se muestra directamente sin filtrar
        request.setAttribute("comentario", comentario);
        request.getRequestDispatcher("/jsp/html-vulnerable.jsp").forward(request, response);
    }
}
