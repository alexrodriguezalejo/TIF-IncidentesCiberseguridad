<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    // Simulamos login: creamos usuario en sesión (en la vida real sería luego del login)
    session.setAttribute("user", "test");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Control de Acceso - Seguro</title>
</head>
<body>
    <h2>Acceso a Datos (Seguro)</h2>

    <form method="get" action="<%= request.getContextPath() %>/AccesoSeguroServlet">
        <input type="submit" value="Ver mis datos">
    </form>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Volver al inicio</a></p>
</body>
</html>
