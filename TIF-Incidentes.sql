CREATE DATABASE tif_db;

USE tif_db;

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50)
);

-- Usuarios de prueba
INSERT INTO usuarios (username, password) VALUES
('admin', 'admin123'),
('test', 'test123');
