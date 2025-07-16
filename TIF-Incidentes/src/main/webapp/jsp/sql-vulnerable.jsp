<!-- sql-vulnerable.jsp -->
<h2>Login (Vulnerable a Inyección SQL)</h2>

<form method="post" action="<%= request.getContextPath() %>/SqlInyeccionVulnerableServlet">
  Usuario: <input type="text" name="username"><br>
  Clave: <input type="password" name="password"><br>
  <input type="submit" value="Login (Vulnerable)">
</form>

<p><strong>Ejemplo de inyección:</strong><br>
Usuario: <code>admin' --</code><br>
Contraseña: <i>(puede estar vacía)</i></p>

<p><%= request.getAttribute("resultado") %></p>

<a href="<%= request.getContextPath() %>/index.jsp">Volver</a>
