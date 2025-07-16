package com.tif.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import org.owasp.encoder.Encode;

public class HtmlInyeccionSeguroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String comentario = request.getParameter("comentario");
        // ✅ Escapamos el comentario antes de mostrarlo
        String comentarioSeguro = Encode.forHtml(comentario);
        request.setAttribute("comentario", comentarioSeguro);
        request.getRequestDispatcher("/jsp/html-seguro.jsp").forward(request, response);
    }
}
