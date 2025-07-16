<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>XSS - Seguro</title>
</head>
<body>
    <h2>Formulario de Comentarios (Seguro contra XSS)</h2>

    <form method="post" action="<%= request.getContextPath() %>/XssSeguroServlet">
        Comentario: <input type="text" name="comentario"><br><br>
        <input type="submit" value="Enviar">
    </form>

    <p><strong>Ejemplo de inyección:</strong><br>
    <code>&lt;script&gt;alert('XSS')&lt;/script&gt;</code></p>

    <%
        String comentario = (String) request.getAttribute("comentario");
        if (comentario != null) {
    %>
        <h3>Comentario recibido:</h3>
        <p><%= comentario %></p> <!-- ✅ escapado en el servlet -->
    <%
        }
    %>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Volver</a></p>
</body>
</html>
