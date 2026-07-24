-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               12.3.2-MariaDB - MariaDB Server
-- Server OS:                    Win64
-- HeidiSQL Version:             12.20.0.7320
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for empleadosdb
CREATE DATABASE IF NOT EXISTS `empleadosdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `empleadosdb`;

-- Dumping structure for table empleadosdb.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `activo` int(11) DEFAULT NULL,
  `idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `salario` double DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table empleadosdb.empleados: ~20 rows (approximately)
DELETE FROM `empleados`;
INSERT INTO `empleados` (`activo`, `idempleado`, `salario`, `correo`, `departamento`, `nombre`, `puesto`) VALUES
	(1, 1, 50000, 'carlos@email.com', 'TI', 'Carlos', 'Desarrollador'),
	(1, 2, 45000, 'ana@email.com', 'RH', 'Ana', 'Analista'),
	(1, 3, 60000, 'luis@email.com', 'Ventas', 'Luis', 'Gerente'),
	(1, 4, 48000, 'maria@email.com', 'TI', 'Maria', 'Diseñadora'),
	(1, 5, 42000, 'jose@email.com', 'Marketing', 'Jose', 'Especialista'),
	(1, 6, 52000, 'laura@email.com', 'RH', 'Laura', 'Coordinadora'),
	(1, 7, 35000, 'pedro@email.com', 'Ventas', 'Pedro', 'Representante'),
	(1, 8, 55000, 'sofia@email.com', 'TI', 'Sofia', 'Desarrolladora'),
	(1, 9, 70000, 'diego@email.com', 'Marketing', 'Diego', 'Director'),
	(1, 10, 32000, 'carmen@email.com', 'RH', 'Carmen', 'Asistente'),
	(1, 11, 38000, 'juan@email.com', 'TI', 'Juan', 'Soporte'),
	(1, 12, 45000, 'elena@email.com', 'Ventas', 'Elena', 'Ejecutiva'),
	(1, 13, 40000, 'roberto@email.com', 'Marketing', 'Roberto', 'Analista'),
	(1, 14, 47000, 'patricia@email.com', 'TI', 'Patricia', 'QA'),
	(1, 15, 58000, 'andres@email.com', 'RH', 'Andres', 'Gerente'),
	(1, 16, 48000, 'marta@email.com', 'Ventas', 'Marta', 'Coordinadora'),
	(1, 17, 65000, 'fernando@email.com', 'TI', 'Fernando', 'Arquitecto'),
	(1, 18, 37000, 'isabel@email.com', 'Marketing', 'Isabel', 'Community Manager'),
	(1, 19, 41000, 'ricardo@email.com', 'RH', 'Ricardo', 'Reclutador'),
	(1, 20, 53000, 'gabriela@email.com', 'TI', 'Gabriela', 'Desarrolladora');

-- Dumping structure for table empleadosdb.inventario
CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `precio` double DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `activo` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Dumping data for table empleadosdb.inventario: ~20 rows (approximately)
DELETE FROM `inventario`;
INSERT INTO `inventario` (`id`, `nombre_producto`, `categoria`, `cantidad`, `precio`, `proveedor`, `fecha_ingreso`, `activo`) VALUES
	(1, 'Laptop Dell XPS', 'Electrónica', 15, 1200, 'Dell', '2026-01-10', 1),
	(2, 'Monitor Samsung 24"', 'Electrónica', 30, 250, 'Samsung', '2026-01-12', 1),
	(3, 'Teclado Mecánico', 'Accesorios', 50, 80, 'Logitech', '2026-01-15', 1),
	(4, 'Mouse Inalámbrico', 'Accesorios', 45, 45, 'Logitech', '2026-01-15', 1),
	(5, 'Impresora HP Laser', 'Electrónica', 8, 350, 'HP', '2026-01-18', 1),
	(6, 'Silla Ergonomica', 'Muebles', 20, 180, 'OfiMarket', '2026-01-20', 1),
	(7, 'Escritorio Ejecutivo', 'Muebles', 12, 250, 'OfiMarket', '2026-01-20', 1),
	(8, 'Proyector Epson', 'Electrónica', 5, 500, 'Epson', '2026-01-22', 1),
	(9, 'Cable HDMI 2m', 'Accesorios', 100, 15, 'ProCables', '2026-01-25', 1),
	(10, 'Disco Duro Externo 1TB', 'Almacenamiento', 25, 90, 'Seagate', '2026-01-28', 1),
	(11, 'USB 64GB', 'Almacenamiento', 60, 25, 'Kingston', '2026-01-28', 1),
	(12, 'Webcam HD', 'Electrónica', 18, 60, 'Logitech', '2026-02-01', 1),
	(13, 'Auriculares Bluetooth', 'Accesorios', 35, 70, 'Sony', '2026-02-03', 1),
	(14, 'Router WiFi 6', 'Electrónica', 10, 150, 'TP-Link', '2026-02-05', 1),
	(15, 'Switch 8 Puertos', 'Electrónica', 7, 90, 'Cisco', '2026-02-07', 1),
	(16, 'Memoria RAM 16GB', 'Componentes', 22, 120, 'Kingston', '2026-02-10', 1),
	(17, 'SSD 512GB', 'Almacenamiento', 18, 110, 'Samsung', '2026-02-12', 1),
	(18, 'Fuente Poder 650W', 'Componentes', 14, 95, 'Corsair', '2026-02-15', 1),
	(19, 'Tarjeta Gráfica GTX 1650', 'Componentes', 9, 220, 'Nvidia', '2026-02-18', 1),
	(20, 'Kit Cable Organizer', 'Accesorios', 40, 20, 'ProCables', '2026-02-20', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
