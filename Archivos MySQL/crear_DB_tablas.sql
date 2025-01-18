-- Crear la base de datos
DROP DATABASE IF EXISTS TelecomunicacionesAR;
CREATE DATABASE TelecomunicacionesAR;
USE TelecomunicacionesAR;

SET GLOBAL local_infile = 1;

-- Tabla 1: acc_tec_localidad_limpio
DROP TABLE IF EXISTS acc_tec_localidad;
CREATE TABLE acc_tec_localidad (
    Provincia VARCHAR(255),
    Tecnologia VARCHAR(255),
    Accesos FLOAT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/acc_tec_localidad_limpio.csv'
INTO TABLE acc_tec_localidad
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla 2: fecha
DROP TABLE IF EXISTS fecha;
CREATE TABLE fecha (
    Año INT,
    Trimestre INT,
    id_fecha INT PRIMARY KEY
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/fecha.csv'
INTO TABLE fecha
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla 3: internet_accesos
DROP TABLE IF EXISTS internet_accesos;
CREATE TABLE internet_accesos (
    Año INT,
    Trimestre INT,
    Provincia VARCHAR(255),
    Mbps_Media_de_bajada FLOAT,
    ADSL FLOAT,
    Cablemodem FLOAT,
    Fibra_optica FLOAT,
    Wireless FLOAT,
    Otros FLOAT,
    Total_x FLOAT,
    Banda_ancha_fija INT,
    Dial_up FLOAT,
    Total_y INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/internet_accesos.csv'
INTO TABLE internet_accesos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla 4: internet_penetracion
DROP TABLE IF EXISTS internet_penetracion;
CREATE TABLE internet_penetracion (
    Año INT,
    Trimestre INT,
    Provincia VARCHAR(255),
    Accesos_por_cada_100_hab FLOAT,
    Accesos_por_cada_100_hogares FLOAT,
    HASTA_512_kbps FLOAT,
    MAS_512_Kbps_1_Mbps FLOAT,
    MAS_1_Mbps_6_Mbps FLOAT,
    MAS_6_Mbps_10_Mbps FLOAT,
    MAS_10_Mbps_20_Mbps FLOAT,
    MAS_20_Mbps_30_Mbps FLOAT,
    MAS_30_Mbps FLOAT,
    OTROS FLOAT,
    Total FLOAT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/internet_penetracion.csv'
INTO TABLE internet_penetracion
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla 5: provincia
DROP TABLE IF EXISTS provincia;
CREATE TABLE provincia (
    Pais VARCHAR(255),
    Nombre VARCHAR(255),
    Superficie INT,
    Hogares INT,
    Poblacion_2010 FLOAT,
    Poblacion_2022 FLOAT,
    Latitud FLOAT,
    Longitud FLOAT,
    Ingresos FLOAT,
    id_provincia INT PRIMARY KEY
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/provincia.csv'
INTO TABLE provincia
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla 6: totales_acc_tec_limpio
DROP TABLE IF EXISTS totales_acc_tec;
CREATE TABLE totales_acc_tec (
    Año INT,
    Trimestre INT,
    ADSL INT,
    Cablemodem INT,
    Fibra_optica INT,
    Wireless INT,
    Otros INT,
    Total INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/totales_acc_tec_limpio.csv'
INTO TABLE totales_acc_tec
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
