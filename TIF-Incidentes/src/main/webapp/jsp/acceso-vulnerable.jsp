<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Control de Acceso - Vulnerable</title>
</head>
<body>
    <h2>Acceso a Datos (Vulnerable: usuarios para testear: test y admin)</h2>

    <form method="get" action="<%= request.getContextPath() %>/AccesoVulnerableServlet">
        Ingresá el usuario a consultar: <input type="text" name="user"><br><br>
        <input type="submit" value="Ver datos">
    </form>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Volver al inicio</a></p>
</body>
</html>
