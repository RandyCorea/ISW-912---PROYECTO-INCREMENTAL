-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS barberia_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE barberia_db;

-- Tabla de Usuarios (Administradores y Barberos)
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    rol ENUM('admin', 'barbero') DEFAULT 'barbero',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Tabla de Citas (Reservas de clientes)
CREATE TABLE IF NOT EXISTS citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(100) NOT NULL,
    telefono_cliente VARCHAR(20) NOT NULL,
    fecha_cita DATE NOT NULL,
    hora_cita TIME NOT NULL,
    estado ENUM('Pendiente', 'Completada', 'Cancelada') DEFAULT 'Pendiente',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Insertar administrador por defecto (Contraseña encriptada para: admin123)
INSERT INTO usuarios (nombre, correo, password, rol) 
VALUES ('Administrador Principal', 'admin@barberia.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin')
ON DUPLICATE KEY UPDATE correo = correo;