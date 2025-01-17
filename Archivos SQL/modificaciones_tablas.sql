USE TelecomunicacionesAR;



-- Actualizar la tabla 'internet_accesos'
-- Reemplazar 'Provincia' por 'id_provincia'
UPDATE internet_accesos AS ia
JOIN provincia AS p ON ia.Provincia = p.Nombre
SET ia.Provincia = p.id_provincia;
-- Renombrar la columna 'Provincia' a 'id_provincia'
ALTER TABLE internet_accesos
CHANGE COLUMN Provincia id_provincia INT;

-- Actualizar la tabla 'internet_accesos' para usar 'id_fecha'
UPDATE internet_accesos AS ia
JOIN fecha AS f ON ia.Año = f.Año AND ia.Trimestre = f.Trimestre
SET ia.Año = f.id_fecha;
-- Renombrar la columna 'Año' a 'id_fecha'
ALTER TABLE internet_accesos
CHANGE COLUMN Año id_fecha INT;
-- Eliminar la columna 'Trimestre', ya que su información está en 'id_fecha'
ALTER TABLE internet_accesos
DROP COLUMN Trimestre;




-- Actualizar la tabla 'internet_penetracion'
-- Reemplazar 'Provincia' por 'id_provincia'
UPDATE internet_penetracion AS ia
JOIN provincia AS p ON ia.Provincia = p.Nombre
SET ia.Provincia = p.id_provincia;
-- Renombrar la columna 'Provincia' a 'id_provincia'
ALTER TABLE internet_penetracion
CHANGE COLUMN Provincia id_provincia INT;

-- Actualizar la tabla 'internet_accesos' para usar 'id_fecha'
UPDATE internet_penetracion AS ia
JOIN fecha AS f ON ia.Año = f.Año AND ia.Trimestre = f.Trimestre
SET ia.Año = f.id_fecha;
-- Renombrar la columna 'Año' a 'id_fecha'
ALTER TABLE internet_penetracion
CHANGE COLUMN Año id_fecha INT;
-- Eliminar la columna 'Trimestre', ya que su información está en 'id_fecha'
ALTER TABLE internet_penetracion
DROP COLUMN Trimestre;




-- Actualizar la tabla 'totales_acc_tec'
-- Actualizar la tabla 'totales_acc_tec' para usar 'id_fecha'
UPDATE totales_acc_tec AS ia
JOIN fecha AS f ON ia.Año = f.Año AND ia.Trimestre = f.Trimestre
SET ia.Año = f.id_fecha;
-- Renombrar la columna 'Año' a 'id_fecha'
ALTER TABLE totales_acc_tec
CHANGE COLUMN Año id_fecha INT;
-- Eliminar la columna 'Trimestre', ya que su información está en 'id_fecha'
ALTER TABLE totales_acc_tec
DROP COLUMN Trimestre;



-- Actualizar la tabla 'acc_tec_localidad'
-- Reemplazar 'Provincia' por 'id_provincia'
UPDATE acc_tec_localidad AS ia
JOIN provincia AS p ON ia.Provincia = p.Nombre
SET ia.Provincia = p.id_provincia;
-- Renombrar la columna 'Provincia' a 'id_provincia'
ALTER TABLE acc_tec_localidad
CHANGE COLUMN Provincia id_provincia INT;