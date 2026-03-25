--primera //
SELECT DISTINCT e.Nombre
FROM EMPLEADOS e, REPARTO r, BARES b
WHERE e.CodE = r.CodE
AND r.CodB = b.CodB
AND b.Nombre = 'Stop'
AND r.Fecha BETWEEN '2005-10-17' AND '2005-10-23';

--segunda//
SELECT DISTINCT b.Cif, b.Nombre, b.Localidad
FROM BARES b, REPARTO r, CERVEZAS c
WHERE b.CodB = r.CodB
AND r.CodC = c.CodC
AND c.Envase = 'Botella'
AND c.Capacidad < 1
ORDER BY b.Localidad;

--tercera//
SELECT b.Nombre, c.Envase, c.Capacidad, r.Fecha, r.Cantidad
FROM REPARTO r, EMPLEADOS e, BARES b, CERVEZAS c
WHERE r.CodE = e.CodE
AND r.CodB = b.CodB
AND r.CodC = c.CodC
AND e.Nombre = 'Prudencio Caminero';

--cuarta//
SELECT DISTINCT b.Nombre
FROM BARES b, REPARTO r, CERVEZAS c
WHERE b.CodB = r.CodB
AND r.CodC = c.CodC
AND c.Envase = 'Botella'
AND (c.Capacidad = 0.2 OR c.Capacidad = 0.33);

--- Cinco//
SELECT DISTINCT e.Nombre
FROM EMPLEADOS e, REPARTO r, BARES b, CERVEZAS c
WHERE e.CodE = r.CodE
AND r.CodB = b.CodB
AND r.CodC = c.CodC 
AND b.Nombre IN ('Stop','Las Vegas')
AND c.Envase = 'Botella';

--seis//
SELECT e.Nombre, COUNT(*) AS Viajes
FROM EMPLEADOS e, REPARTO r, BARES b
WHERE e.CodE = r.CodE
AND r.CodB = b.CodB
AND b.Localidad <> 'Villa Botijo'
GROUP BY e.Nombre;

--siete//
SELECT b.Nombre, b.Localidad, SUM(r.Cantidad * c.Capacidad) AS Litros
FROM BARES b, REPARTO r, CERVEZAS c
WHERE b.CodB = r.CodB
AND r.CodC = c.CodC
GROUP BY b.Nombre, b.Localidad
ORDER BY Litros DESC;

-- ocho --
-- Lista de bares y sus compras de botellas < 1 litro
SELECT DISTINCT b.Nombre
FROM BARES b, REPARTO r, CERVEZAS c
WHERE b.CodB = r.CodB
AND r.CodC = c.CodC
AND c.Envase = 'Botella'
AND c.Capacidad < 1;

--nueve//
UPDATE EMPLEADOS
SET Sueldo = Sueldo * 1.05
WHERE CodE = (
    SELECT TOP 1 CodE
    FROM REPARTO
    GROUP BY CodE
    ORDER BY COUNT(DISTINCT Fecha) DESC
);


--diez
INSERT INTO REPARTO (CodE, CodB, CodC, Fecha, Cantidad)
VALUES (
   2,        -- Vicente Merario
   '001',    -- Stop
   '03',     -- Lata
   '2005-10-26',
   48
);
