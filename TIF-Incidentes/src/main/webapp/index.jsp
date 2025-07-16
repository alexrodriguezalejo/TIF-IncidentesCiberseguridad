<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Incidentes de Ciberseguridad</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background-color: #f0f0f0;
        }
        h1 {
            color: #444;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            background: #fff;
            margin: 10px 0;
            padding: 10px 15px;
            border-left: 5px solid #007BFF;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        a {
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Incidentes de Ciberseguridad</h1>
    <p>Seleccioná una opción para ver la demostración:</p>
    <ul>
        <li><a href="jsp/sql-vulnerable.jsp">Inyección SQL (Vulnerable)</a></li>
        <li><a href="jsp/sql-seguro.jsp">Inyección SQL (Segura)</a></li>

        <li><a href="jsp/html-vulnerable.jsp">Inyección HTML (Vulnerable)</a></li>
        <li><a href="jsp/html-seguro.jsp">Inyección HTML (Segura)</a></li>

        <li><a href="jsp/auth-vulnerable.jsp">Pérdida de Autenticación (Vulnerable)</a></li>
        <li><a href="jsp/auth-seguro.jsp">Pérdida de Autenticación (Segura)</a></li>

        <li><a href="jsp/datos-vulnerable.jsp">Exposición de Datos Sensibles (Vulnerable)</a></li>
        <li><a href="jsp/datos-seguro.jsp">Exposición de Datos Sensibles (Segura)</a></li>

        <li><a href="jsp/acceso-vulnerable.jsp">Pérdida de Control de Acceso (Vulnerable)</a></li>
        <li><a href="jsp/acceso-seguro.jsp">Pérdida de Control de Acceso (Segura)</a></li>

        <li><a href="jsp/xss-vulnerable.jsp">Cross-Site Scripting (XSS - Vulnerable)</a></li>
        <li><a href="jsp/xss-seguro.jsp">Cross-Site Scripting (XSS - Seguro)</a></li>
    </ul>
</body>
</html>
