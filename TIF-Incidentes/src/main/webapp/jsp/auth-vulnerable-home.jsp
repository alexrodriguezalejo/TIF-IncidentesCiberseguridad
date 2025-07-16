<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Zona Protegida Vulnerable</title>
</head>
<body>
    <h2>Zona Protegida (Vulnerable)</h2>

    <p>Bienvenido, usuario.</p>
    <p>Esta página no valida sesión, cualquier usuario puede acceder. Si queres cerra sesion y copia la url para comprobar</p>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Cerrar sesión</a></p>
</body>
</html>
