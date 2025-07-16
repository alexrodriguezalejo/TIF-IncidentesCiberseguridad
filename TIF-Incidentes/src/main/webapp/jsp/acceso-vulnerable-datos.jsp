<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String usuario = (String) request.getAttribute("usuario");
    String nombre = (String) request.getAttribute("nombre");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Datos del Usuario - Vulnerable</title>
</head>
<body>
    <h2>Datos del Usuario (Vulnerable)</h2>

    <p><strong>Usuario:</strong> <%= usuario %></p>
    <p><strong>Nombre:</strong> <%= nombre %></p>

    <p><a href="<%= request.getContextPath() %>/jsp/acceso-vulnerable.jsp">Volver</a></p>
</body>
</html>
