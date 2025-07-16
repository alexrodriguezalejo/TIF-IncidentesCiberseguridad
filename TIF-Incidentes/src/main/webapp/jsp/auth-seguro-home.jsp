<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // NO declares HttpSession session = ...
    if (session == null || session.getAttribute("user") == null) {
        response.sendRedirect(request.getContextPath() + "/jsp/auth-seguro.jsp?error=Debe iniciar sesión");
        return;
    }
    String usuario = (String) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Zona Protegida Segura</title>
</head>
<body>
    <h2>Zona Protegida (Seguro)</h2>

    <p>Bienvenido, <strong><%= usuario %></strong></p>

    <form action="<%= request.getContextPath() %>/LogoutServlet" method="post">
        <input type="submit" value="Cerrar sesión">
    </form>
</body>
</html>
