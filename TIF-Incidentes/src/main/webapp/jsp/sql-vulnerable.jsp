<!-- sql-vulnerable.jsp -->
<h2>Login (Vulnerable a Inyecci�n SQL)</h2>

<form method="post" action="<%= request.getContextPath() %>/SqlInyeccionVulnerableServlet">
  Usuario: <input type="text" name="username"><br>
  Clave: <input type="password" name="password"><br>
  <input type="submit" value="Login (Vulnerable)">
</form>

<p><strong>Ejemplo de inyecci�n:</strong><br>
Usuario: <code>admin' --</code><br>
Contrase�a: <i>(puede estar vac�a)</i></p>

<p><%= request.getAttribute("resultado") %></p>

<a href="<%= request.getContextPath() %>/index.jsp">Volver</a>
