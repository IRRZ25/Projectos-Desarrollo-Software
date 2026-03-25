-- Proyecto: Modelado de datos basado en dataset real (Nike)
-- Autor: Irvin Romero
-- Descripción:
-- Se transforma un dataset CSV en un modelo relacional
-- para facilitar consultas y análisis de datos.

PRAGMA foreign_keys = ON;

-- Flujo de datos:
-- CSV → nike_raw → productos → consultas analíticas

DROP TABLE IF EXISTS nike_raw;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS marcas;

CREATE TABLE marcas (
    id_marca INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE productos (
    id_producto VARCHAR(50) PRIMARY KEY,
    nombre VARCHAR(150),
    id_marca INT,
    precio_lista DECIMAL(10,2),
    precio_venta DECIMAL(10,2),
    descuento DECIMAL(5,2),
    descripcion TEXT,
    rating DECIMAL(3,2),
    reviews INT,
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca)
);

-- Tabla original basada en el CSV
CREATE TABLE nike_raw (
    product_name VARCHAR(150),
    product_id VARCHAR(50),
    listing_price DECIMAL(10,2),
    sale_price DECIMAL(10,2),
    discount DECIMAL(5,2),
    brand VARCHAR(100),
    description TEXT,
    rating DECIMAL(3,2),
    reviews INT,
    images TEXT
);

-- Inserción de datos de ejemplo
INSERT INTO nike_raw VALUES
('Air Max 90', '001', 120, 100, 20, 'Nike', 'Zapato deportivo', 4.5, 150, 'img1.jpg'),
('Air Force 1', '002', 110, 90, 18, 'Nike', 'Clásico urbano', 4.7, 200, 'img2.jpg');

-- Insertar marcas únicas
INSERT INTO marcas (id_marca, nombre)
VALUES (1, 'Nike');

-- Insertar productos desde tabla cruda
INSERT INTO productos (
    id_producto, nombre, id_marca, precio_lista, precio_venta,
    descuento, descripcion, rating, reviews
)
SELECT 
    product_id,
    product_name,
    1,
    listing_price,
    sale_price,
    discount,
    description,
    rating,
    reviews
FROM nike_raw;

-- Consulta: productos con alto rating y descuento significativo
SELECT 
    p.nombre,
    m.nombre AS marca,
    p.precio_lista,
    p.precio_venta,
    p.descuento,
    p.rating
FROM productos p
JOIN marcas m ON p.id_marca = m.id_marca
WHERE p.descuento > 10
AND p.rating >= 4;
