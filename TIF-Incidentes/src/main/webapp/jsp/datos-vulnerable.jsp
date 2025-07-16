<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Exposición Datos Sensibles - Vulnerable</title>
</head>
<body>
    <h2>Datos de Usuario (Vulnerable a exposición de datos sensibles, ej juan y maria)</h2>

    <form method="post" action="<%= request.getContextPath() %>/DatosVulnerableServlet">
        Usuario: <input type="text" name="username" required><br><br>
        <input type="submit" value="Buscar Usuario">
    </form>

    <%
        String mensaje = (String) request.getAttribute("mensaje");
        if (mensaje != null) {
    %>
        <h3>Información del usuario:</h3>
        <p><strong>Usuario:</strong> <%= request.getAttribute("usuario") %></p>
        <p><strong>Nombre:</strong> <%= request.getAttribute("nombre") %></p>
        <p><strong>Contraseña (texto plano):</strong> <%= request.getAttribute("password") %></p>
        <p><strong>Mensaje:</strong> <%= mensaje %></p>
    <%
        }
    %>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Volver al inicio</a></p>
</body>
</html>
