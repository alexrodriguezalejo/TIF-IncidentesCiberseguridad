<!-- sql-seguro.jsp -->
<h2>Login (Protegido contra Inyección SQL)</h2>

<form method="post" action="<%= request.getContextPath() %>/SqlInyeccionSeguraServlet">
  Usuario: <input type="text" name="username"><br>
  Clave: <input type="password" name="password"><br>
  <input type="submit" value="Login (Seguro)">
</form>

<p><strong>Usuario de prueba:</strong> <code>admin</code><br>
<strong>Contraseña:</strong> <code>admin123</code></p>

<p><%= request.getAttribute("resultado") %></p>

<a href="<%= request.getContextPath() %>/index.jsp">Volver</a>
