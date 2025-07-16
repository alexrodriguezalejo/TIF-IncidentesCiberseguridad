<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login Seguro - Pérdida de Autenticación</title>
</head>
<body>
    <h2>Login (Seguro - Control de Sesión)</h2>

    <form method="post" action="<%= request.getContextPath() %>/AuthSeguroServlet">
        Usuario (admin): <input type="text" name="username" required><br><br>
        Contraseña (admin123): <input type="password" name="password" required><br><br>
        <input type="submit" value="Login Seguro">
    </form>

    <p style="color:red;">
        <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
    </p>

    <p><a href="<%= request.getContextPath() %>/index.jsp">Volver al inicio</a></p>
</body>
</html>
