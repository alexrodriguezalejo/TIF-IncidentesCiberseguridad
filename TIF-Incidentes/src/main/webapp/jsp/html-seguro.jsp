<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.owasp.encoder.Encode" %>
<html>
<head>
    <title>Inyección HTML - Segura</title>
</head>
<body>
    <h2>Inyección HTML (Segura)</h2>

    <p><strong>Ejemplo de ataque:</strong> Pegá esto como comentario para probar:  
    `h2 hola h2' con sus llaves de cierre <>'</p>

    <form method="post" action="<%= request.getContextPath() %>/HtmlInyeccionSeguroServlet">
        Comentario: <input type="text" name="comentario"><br>
        <input type="submit" value="Enviar Comentario">
    </form>

    <p>Comentario recibido:</p>
    <div>
        <%= request.getAttribute("comentario") %>
    </div>

	<a href="<%=request.getContextPath()%>/index.jsp">Volver</a>
</body>
</html>
