<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Inyección HTML - Vulnerable</title>
</head>
<body>
	<h2>Inyección HTML (Vulnerable)</h2>

	<p>
		<strong>Ejemplo de ataque:</strong> Pegá esto como comentario para
		probar: `h2 Hola script alert('Inyección HTML') script`
	</p>

	<form method="post"
		action="<%=request.getContextPath()%>/HtmlInyeccionVulnerableServlet">
		Comentario: <input type="text" name="comentario"><br> <input
			type="submit" value="Enviar Comentario">
	</form>

	<p>Comentario recibido:</p>
	<div>
		<%=request.getAttribute("comentario")%>
	</div>

	<a href="<%=request.getContextPath()%>/index.jsp">Volver</a>
</body>
</html>
