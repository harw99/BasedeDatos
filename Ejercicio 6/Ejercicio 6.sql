CREATE DATABASE provedores;

USE provedores;

CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre_empresa VARCHAR(100) NOT NULL,
    contacto VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO Proveedores (id_proveedor, nombre_empresa, contacto, telefono)
VALUES
    (1, "ABC Electronics", "John Smith", "123-456-7890"),
    (2, "Tech Innovators", "Emily Johnson", "987-654-3210"),
    (3, "Global Gadgets", "Michael Williams", "555-123-4567"),
    (4, "Quality Supplies", "Jessica Davis", "777-888-9999"),
    (5, "Innovate IT", "David Brown", "333-444-5555"),
    (6, "EcoTech Solutions", "Sarah Wilson", "222-333-4444"),
    (7, "Smart Systems", "Daniel Lee", "666-777-8888"),
    (8, "Pro Devices", "Sophia Martinez", "111-222-3333"),
    (9, "Future Tech", "Liam Anderson", "444-555-6666"),
    (10, "Precision Parts", "Olivia Taylor", "888-999-0000"),
    (11, "Global Electronics", "Ethan Jackson", "222-111-8888"),
    (12, "NexGen Innovations", "Ava White", "333-444-5555"),
    (13, "InnoSuppliers", "Noah Garcia", "777-888-9999"),
    (14, "TechVantage", "Isabella Hernandez", "666-555-4444"),
    (15, "Globe Gadgets", "Mia Thompson", "111-333-5555"),
    (16, "ConnectIT Solutions", "James Clark", "777-999-4444"),
    (17, "Advance Electronics", "Amelia Scott", "555-222-8888"),
    (18, "Smart Sourcing", "Logan Walker", "333-666-8888"),
    (19, "Quantum Supplies", "Charlotte Young", "888-444-1111"),
    (20, "Top Tech Enterprises", "Benjamin Lewis", "666-111-3333");

DROP TABLE provedores;



CREATE DATABASE categorias;

USE categorias;


CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY,
    nombre_categoria VARCHAR(50),
    descripcion_categoria VARCHAR(255)
);

INSERT INTO  categorias (id_categoria, nombre_categoria, descripcion_categoria)
VALUES
    (1, "Papas Margarita", "Tamaño Grande"),
    (2, "Hamburguesas Clásicas", "Sabores tradicionales"),
    (3, "Ensaladas Frescas", "Ingredientes saludables"),
    (4, "Postres Deliciosos", "Dulces y deliciosos"),
    (5, "Bebidas Refrescantes", "Variedad de opciones líquidas"),
    (6, "Tacos Auténticos", "Sabores de la calle"),
    (7, "Pizzas Variadas", "De todos los tamaños"),
    (8, "Mariscos Frescos", "Delicias del mar"),
    (9, "Sopas Reconfortantes", "Calientes y deliciosas"),
    (10, "Platos Vegetarianos", "Sin carne pero llenos de sabor"),
    (11, "Carnes a la Parrilla", "Jugosas y bien sazonadas"),
    (12, "Desayunos Caseros", "Comienza el día con energía"),
    (13, "Comida Asiática", "Sabores del este"),
    (14, "Comida Mediterránea", "Sana y deliciosa"),
    (15, "Especiales del Chef", "Creaciones únicas del chef"),
    (16, "Antojitos Mexicanos", "Pequeños bocados llenos de sabor"),
    (17, "Comida Rápida", "Rápida y sabrosa"),
    (18, "Platos Italianos", "Sabor a Italia en cada bocado"),
    (19, "Comida Tex-Mex", "Fusión de sabores"),
    (20, "Menú Infantil", "Especialmente para los más pequeños");
    
    
    
    CREATE DATABASE Movimientos_Inventario;

	USE Movimientos_Inventario;
    
    CREATE TABLE Movimientos_Inventario (
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    tipo_movimiento ENUM('Entrada', 'Salida'),
    fecha_movimiento DATE NOT NULL
);

INSERT INTO Movimientos_Inventario (id_producto, cantidad, tipo_movimiento, fecha_movimiento)
VALUES
    (1, 50, 'Entrada', '2023-08-01'),
    (2, 20, 'Salida', '2023-08-02'),
    (3, 30, 'Entrada', '2023-08-03'),
    (4, 10, 'Salida', '2023-08-04'),
    (5, 25, 'Entrada', '2023-08-05'),
    (6, 15, 'Salida', '2023-08-06'),
    (7, 40, 'Entrada', '2023-08-07'),
    (8, 5, 'Salida', '2023-08-08'),
    (9, 60, 'Entrada', '2023-08-09'),
    (10, 12, 'Salida', '2023-08-10'),
    (11, 28, 'Entrada', '2023-08-11'),
    (12, 8, 'Salida', '2023-08-12'),
    (13, 18, 'Entrada', '2023-08-13'),
    (14, 7, 'Salida', '2023-08-14'),
    (15, 35, 'Entrada', '2023-08-15'),
    (16, 9, 'Salida', '2023-08-16'),
    (17, 22, 'Entrada', '2023-08-17'),
    (18, 11, 'Salida', '2023-08-18'),
    (19, 42, 'Entrada', '2023-08-19'),
    (20, 3, 'Salida', '2023-08-20');

    
    DROP TABLE Movimientos_Inventario;
    
    
CREATE DATABASE ventas;

USE ventas;

CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    fecha_venta DATE NOT NULL,
    id_producto INT NOT NULL,
    cantidad_vendida INT NOT NULL,
    total_venta DECIMAL(10, 2) NOT NULL
);

INSERT INTO Ventas (id_venta, fecha_venta, id_producto, cantidad_vendida, total_venta)
VALUES
    (1, '2023-08-01', 5, 10, 150.50),
    (2, '2023-08-02', 3, 8, 120.75),
    (3, '2023-08-02', 7, 15, 250.00),
    (4, '2023-08-03', 1, 5, 75.25),
    (5, '2023-08-04', 2, 12, 180.00),
    (6, '2023-08-05', 6, 20, 300.50),
    (7, '2023-08-06', 9, 7, 105.75),
    (8, '2023-08-07', 8, 3, 45.00),
    (9, '2023-08-08', 4, 18, 270.25),
    (10, '2023-08-09', 10, 10, 150.00),
    (11, '2023-08-10', 12, 5, 75.50),
    (12, '2023-08-11', 14, 9, 135.75),
    (13, '2023-08-12', 11, 15, 250.25),
    (14, '2023-08-13', 16, 7, 105.00),
    (15, '2023-08-14', 18, 12, 180.50),
    (16, '2023-08-15', 19, 20, 300.75),
    (17, '2023-08-16', 20, 8, 120.25),
    (18, '2023-08-17', 15, 3, 45.50),
    (19, '2023-08-18', 17, 18, 270.00),
    (20, '2023-08-19', 13, 10, 150.50);

