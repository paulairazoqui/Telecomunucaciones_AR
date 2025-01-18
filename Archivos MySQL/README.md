# Archivos MySQL

Este directorio contiene los archivos SQL y otros recursos relacionados con el modelado y manipulación de la base de datos del proyecto **TelecomunicacionesAR**.

## Contenido

1. **crear_DB_tablas.sql**
    - Crea la base de datos y las tablas principales.
    - Inserta datos iniciales en las tablas a partir de archivos CSV mediante la instrucción `LOAD DATA INFILE`.

2. **modificaciones_tablas.sql**
    - Realiza modificaciones en las tablas creadas previamente.
    - Cambia las columnas de referencia (`Provincia` y `Año`) a claves foráneas (`id_provincia` e `id_fecha`).
    - Renombra columnas y elimina información redundante.

3. **conexiones.sql**
    - Define las relaciones entre las tablas mediante claves foráneas.
    - Conecta las tablas con las entidades `provincia` y `fecha` para asegurar la integridad referencial.

4. **Modelo_SQL.pdf**
    - Contiene el modelo lógico de la base de datos, ilustrando las tablas y sus relaciones.

## Requisitos Previos

- **MySQL Server 8.0 o superior**.
- **MySQL Workbench** o cualquier herramienta que permita ejecutar scripts SQL.
- Los archivos CSV deben estar disponibles en el directorio configurado para `LOAD DATA INFILE`. En este caso:
  - `C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/`

## Instrucciones de Uso

1. **Crear la Base de Datos y Tablas**
    - Ejecutar `crear_DB_tablas.sql` para:
        - Crear la base de datos `TelecomunicacionesAR`.
        - Crear y poblar las tablas iniciales con datos desde los archivos CSV.

2. **Modificar las Tablas**
    - Ejecutar `modificaciones_tablas.sql` para:
        - Actualizar las referencias entre tablas.
        - Simplificar y normalizar la estructura de las tablas.

3. **Definir Conexiones**
    - Ejecutar `conexiones.sql` para:
        - Establecer las claves foráneas entre las tablas y garantizar la integridad referencial.

4. **Consultar el Modelo**
    - Revisar el archivo `Modelo_SQL.pdf` para entender la estructura de la base de datos y sus relaciones.

## Notas

- Asegúrate de que la opción `local_infile` esté habilitada en el servidor MySQL antes de cargar los datos. Esto puede hacerse con:
  ```sql
  SET GLOBAL local_infile = 1;
  ```
- Si los archivos CSV están en una ubicación diferente, actualiza las rutas en `crear_DB_tablas.sql`.
- Revisa posibles restricciones de permisos en el directorio de los archivos CSV si surgen errores durante la carga de datos.

---