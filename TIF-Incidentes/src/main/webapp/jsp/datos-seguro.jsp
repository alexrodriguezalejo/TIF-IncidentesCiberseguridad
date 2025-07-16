<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Exposición Datos Sensibles - Seguro (Ej: juan y maria)</title>
</head>
<body>
    <h2>Datos de Usuario (Seguro)</h2>

    <form method="post" action="<%= request.getContextPath() %>/DatosSeguroServlet">
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
        <p><strong>Mensaje:</strong> <%= mensaje %></p>
        <p><em>La contraseña no se muestra por seguridad.</em></p>
    <%
        }
    %>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Volver al inicio</a></p>
</body>
</html>
