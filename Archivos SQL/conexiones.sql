USE TelecomunicacionesAR;

-- Conectar la tabla 'internet_accesos'
-- Conectar 'internet_accesos' con 'provincia'
ALTER TABLE internet_accesos
ADD CONSTRAINT fk_accesos_provincia
FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia);
-- Conectar 'internet_accesos' con 'fecha'
ALTER TABLE internet_accesos
ADD CONSTRAINT fk_accesos_fecha
FOREIGN KEY (id_fecha) REFERENCES fecha(id_fecha);


-- Conectar la tabla 'internet_penetracion'
-- Conectar 'internet_penetracion' con 'provincia'
ALTER TABLE internet_penetracion
ADD CONSTRAINT fk_penetracion_provincia
FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia);
-- Conectar 'internet_penetracion' con 'fecha'
ALTER TABLE internet_penetracion
ADD CONSTRAINT fk_penetracion_fecha
FOREIGN KEY (id_fecha) REFERENCES fecha(id_fecha);



-- Conectar la tabla 'acc_tec_localidad'
-- Conectar 'acc_tec_localidad' con 'provincia'
ALTER TABLE acc_tec_localidad
ADD CONSTRAINT fk_acc_provincia
FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia);


-- Conectar la tabla 'totales_acc_tec'
-- Conectar 'totales_acc_tec' con 'fecha'
ALTER TABLE totales_acc_tec
ADD CONSTRAINT fk_totales_fecha
FOREIGN KEY (id_fecha) REFERENCES fecha(id_fecha);