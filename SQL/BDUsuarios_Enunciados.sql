/*=======================================================
   CREAR BASE DE DATOS
=========================================================*/
CREATE DATABASE jose_hern_parcial1;
GO

USE jose_hern_parcial1;
GO

/*=======================================================
   TABLA CERVEZAS
=========================================================*/
CREATE TABLE CERVEZAS (
    CodC CHAR(2) PRIMARY KEY,
    Envase VARCHAR(20),
    Capacidad DECIMAL(5,2),
    Stock INT
);

INSERT INTO CERVEZAS VALUES
('01', 'Botella', 0.2, 3600),
('02', 'Botella', 0.33, 1200),
('03', 'Lata',    0.33, 2400),
('04', 'Botella', 1,    288),
('05', 'Barril',  60,   30);

/*=======================================================
   TABLA BARES
=========================================================*/
CREATE TABLE BARES (
    CodB CHAR(3) PRIMARY KEY,
    Nombre VARCHAR(50),
    Cif VARCHAR(20),
    Localidad VARCHAR(50)
);

INSERT INTO BARES VALUES
('001', 'Stop',        '11111111X', 'Villa Botijo'),
('002', 'Las Vegas',   '22222222Y', 'Villa Botijo'),
('003', 'Club Social', '33333333Z', 'Las Ranas'),
('004', 'Otra Ronda',  '44444444W', 'La Esponja');

/*=======================================================
   TABLA EMPLEADOS
=========================================================*/
CREATE TABLE EMPLEADOS (
    CodE INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Sueldo INT
);

INSERT INTO EMPLEADOS VALUES
(1, 'Prudencio Caminero', 120000),
(2, 'Vicente Merario',    110000),
(3, 'Valentin Siempre',   100000);

/*=======================================================
   TABLA REPARTO
=========================================================*/
CREATE TABLE REPARTO (
    CodE INT,
    CodB CHAR(3),
    CodC CHAR(2),
    Fecha DATE,
    Cantidad INT,
    FOREIGN KEY (CodE) REFERENCES EMPLEADOS(CodE),
    FOREIGN KEY (CodB) REFERENCES BARES(CodB),
    FOREIGN KEY (CodC) REFERENCES CERVEZAS(CodC)
);

INSERT INTO REPARTO VALUES
(1, '001', '01', '2005-10-21', 240),
(1, '001', '02', '2005-10-21', 48),
(1, '002', '03', '2005-10-22', 60),
(1, '004', '05', '2005-10-22', 4),
(2, '002', '03', '2005-10-22', 48),
(2, '002', '05', '2005-10-23', 2),
(2, '004', '01', '2005-10-23', 480),
(2, '004', '02', '2005-10-24', 72),
(3, '003', '03', '2005-10-24', 48),
(3, '003', '04', '2005-10-25', 20);
