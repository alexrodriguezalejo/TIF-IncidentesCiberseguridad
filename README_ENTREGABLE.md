
# Entregable - TIF Incidentes de Ciberseguridad

Este archivo `.zip` contiene todo lo necesario para ejecutar y revisar el proyecto.

---

## 🗂 Contenido del ZIP

### 📁 TIF-Incidentes (carpeta)
- Contiene **todo el código fuente** del proyecto.
- Incluye Servlets, JSPs, configuraciones, clases auxiliares y más.
- Se puede importar en Eclipse para continuar desarrollando.
  - Recomendado: `File > Import > Maven > Existing Maven Projects`
  - También se puede pegar dentro del `workspace` y abrir como proyecto.

### 📦 TIF-Incidentes.war
- Archivo **compilado y listo para desplegar**.
- Se puede ejecutar directamente en Apache Tomcat:
  - Colocá el archivo `.war` en la carpeta `webapps` de Tomcat.
  - Luego accedé a: `http://localhost:8080/TIF-Incidentes`

### 🗃 TIF-Incidentes.sql
- Script de creación de base de datos y usuarios.
- Ejecutalo en tu cliente MySQL (Workbench, consola, etc) **antes de iniciar la app**.
- Crea la base de datos `tif_db` con la tabla `usuarios` y algunos usuarios de prueba.

```sql
CREATE DATABASE tif_db;

USE tif_db;

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50)
);

INSERT INTO usuarios (username, password) VALUES
('admin', 'admin123'),
('test', 'test123');
```

⚠️ **Importante:** Si tu MySQL tiene una contraseña distinta a la que está en el código fuente, modificá el archivo:

```
src/com/tif/util/ConexionBD.java
```

Actualizá el `user`, `password`, y el puerto si fuera necesario.

---

## ✅ Recomendaciones

- Verificá que tengas Apache Tomcat instalado y configurado.
- Usá Eclipse IDE con soporte para proyectos Maven y Servlets/JSP.
- Revisá el archivo `README.md` principal dentro de la carpeta `TIF-Incidentes` para más detalles técnicos.

---

Autor: Alexander Rodríguez
