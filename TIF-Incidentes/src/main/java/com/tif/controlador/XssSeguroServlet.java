package com.tif.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import org.owasp.encoder.Encode;

public class XssSeguroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String comentario = request.getParameter("comentario");
        String comentarioSeguro = Encode.forHtml(comentario); // ✅ escapamos con ESAPI
        request.setAttribute("comentario", comentarioSeguro);
        request.getRequestDispatcher("/jsp/xss-seguro.jsp").forward(request, response);
    }
}
