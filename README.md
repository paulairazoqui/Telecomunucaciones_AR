# Análisis y Visualización de Datos de Conectividad a Internet en Argentina


## Descripción General

Este proyecto analiza los datos de conectividad a internet en Argentina, abordando el desafío de entender las brechas y oportunidades en el acceso a tecnologías avanzadas. A través de un dashboard interactivo en Power BI, se proporciona una visión integral de los avances en conectividad, identificando áreas prioritarias para inversión y modernización.

El análisis se centra en tres indicadores clave de rendimiento (KPIs) que evalúan el **acceso**, el **potencial de conectividad** y el **crecimiento de tecnologías avanzadas**. El resultado principal es un conjunto de visualizaciones que permiten comprender la situación actual y proyectar estrategias futuras para mejorar la infraestructura tecnológica.

### Contexto del Análisis

En un mundo cada vez más digitalizado, el acceso a internet y la adopción de tecnologías avanzadas son fundamentales para el desarrollo social y económico. En Argentina, las diferencias regionales en conectividad representan un reto significativo para cerrar la brecha digital y promover la igualdad de oportunidades.

Este proyecto busca responder a preguntas críticas como: 
- *¿qué provincias tienen mayores oportunidades de inversión?* 
- *¿Cómo está evolucionando el acceso a tecnologías más avanzadas?* 
- *¿Qué regiones están rezagadas y por qué?* 

Con estas respuestas, se espera apoyar decisiones informadas que impulsen la conectividad en todo el país.

---

## Objetivos

- Evaluar el estado actual del acceso a internet en Argentina, identificando las provincias con mayor y menor cobertura.
- Analizar el potencial de conectividad ajustado por provincia, destacando las áreas con mayor oportunidad de inversión en infraestructura tecnológica.
- Comparar la evolución de las tecnologías de acceso a internet, con un enfoque en el crecimiento de la fibra óptica y el wireless como tecnologías avanzadas.
- Proveer información clave que sirva de base para estrategias de expansión y modernización de la infraestructura de conectividad.
- Diseñar y presentar un dashboard interactivo que permita visualizar de manera clara y concisa los indicadores clave y sus interpretaciones.

---

## KPIs Analizados

Este análisis se centra en tres indicadores clave de desempeño (KPIs), diseñados para evaluar diferentes aspectos de la conectividad y las tecnologías de acceso a internet:

1. **KPI de Incremento de Acceso**: Evalúa el aumento en el acceso a internet en las provincias, con un objetivo planteado del **2% trimestral**. Este KPI permite medir el progreso hacia una conectividad más inclusiva y destaca las provincias con mayor necesidad de mejoras.

2. **KPI de Potencial de Conectividad**: Analiza la saturación de la infraestructura de conectividad en relación con los ingresos y el acceso por cada 100 hogares. El objetivo planteado fue un **aumento del 25% en la saturación de la conectividad entre 2022 y 2023**, permitiendo identificar oportunidades de inversión estratégica en provincias con menor saturación.

3. **KPI de Crecimiento de Tecnologías Avanzadas**: Mide la adopción de tecnologías como fibra óptica y wireless, destacando el crecimiento en el uso de estas tecnologías frente a alternativas menos modernas como el cablemodem. Se planteó un objetivo de **aumento del 10% en conexiones a tecnologías avanzadas** entre 2022 y 2023.

Cada KPI fue diseñado con metodologías específicas que abordan los retos planteados en los datos, como la falta de uniformidad temporal y las disparidades regionales. Los detalles exhaustivos de los cálculos y enfoques metodológicos pueden consultarse en el archivo **KPIs Propuestos**, disponible en este repositorio.

--- 
## Datos Utilizados

### Fuentes de los Datos
1. **Conexiones a Internet**  
   - Fuente: [Enacom - Indicadores de Conectividad](https://indicadores.enacom.gob.ar/datos-abiertos)  
   - Dataset principal: `Internet.xlsx`  
   - Contiene datos sobre accesos a internet por provincia, tecnología, velocidad y población.

2. **Datos de Población y Hogares**  
   - Fuente: [INDEC - Censo Nacional de Población, Hogares y Viviendas 2022](https://www.indec.gob.ar/)  
   - Archivos utilizados:  
     - [Datos de Población](https://www.indec.gob.ar/ftp/cuadros/poblacion/c2022_tp_est_c1.xlsx)  
     - [Datos de Hogares](https://censo.gob.ar/wp-content/uploads/2024/07/c2022_tp_gobierno_local_c1.xlsx)

3. **Datos de Superficie Provincial**  
   - Fuente: [Wikipedia](https://es.wikipedia.org/wiki/Provincias_de_Argentina)  
   - Información utilizada para enriquecer las relaciones geográficas entre provincias.

4. **Ingresos Per Cápita Familiar**  
   - Fuente: [INDEC - Indicadores del Mercado de Trabajo](https://www.indec.gob.ar/ftp/cuadros/sociedad/indicadores_eph_total_urbano_ingresos_3t_2023.xls)  
   - Se utilizó el tercer trimestre de 2023 para obtener un contexto actualizado.

5. **Coordenadas de Provincias**  
   - Fuente: [Geodatos.net](https://www.geodatos.net/coordenadas/argentina)  
   - Datos utilizados para normalizar ubicaciones en los mapas.

---

### Descripción de los Datasets Principales
1. **Internet.xlsx (Enacom)**  
   - **Descripción:** Incluye múltiples hojas con información sobre accesos a internet, tecnologías utilizadas, velocidades promedio, penetración en población y hogares, entre otros.  
   - **Columnas Relevantes:**
     - `Año`, `Trimestre`, `Provincia`, `Velocidad`, `Tecnología`, `Accesos`, `Penetración`.
   - **Relaciones:** 
     - Provincias relacionadas mediante la columna `Provincia` (normalizada) y en algunos casos por `id_provincia`.

2. **Datos del Censo (INDEC)**  
   - **Población:**
     - **Descripción:** Proporciona datos sobre la población total por provincia.  
     - **Columnas Relevantes:** `Provincia`, `Población`.
   - **Hogares:**
     - **Descripción:** Incluye el número total de hogares por provincia.  
     - **Columnas Relevantes:** `Provincia`, `Hogares`.

3. **Ingresos Per Cápita Familiar (INDEC)**  
   - **Descripción:** Contiene los ingresos promedio por hogar en distintas regiones del país.  
   - **Columnas Relevantes:** `Provincia`, `Ingreso Promedio`.

4. **Datos Geográficos (Wikipedia y Geodatos.net)**  
   - **Superficie:** Utilizada para análisis adicionales relacionados con densidad de accesos.  
   - **Coordenadas:** Implementadas para enriquecer visualizaciones y análisis geoespacial.  
   - **Columnas Relevantes:** `Provincia`, `Latitud`, `Longitud`.

>*Este marco de datos fue clave para construir un análisis robusto y detallado. Las transformaciones y uniones necesarias se detallan en la siguiente sección.*

### Procesos de limpieza y transformación (resumido).

#### 1. Normalización de Nombres de Provincias
- Se ajustaron los nombres de las provincias en todos los DataFrames para garantizar consistencia.
- Se eliminaron tildes y se unificaron nombres alternativos:
  - Ejemplo: "CABA" y "Capital Federal" se normalizaron a "Capital Federal".

#### 2. Manejo de Valores Nulos
- **`vel_sin_rangos`:**
  - Los nulos en la columna `Velocidad` se imputaron utilizando el promedio por provincia y trimestre.
  - Se marcaron como "outliers" las velocidades mayores a `media + 3*std`.
- **`acc_rangos` y `dial_baf`:**
  - Se imputaron los nulos como la diferencia entre el `Total` y la suma de las demás categorías.
- **`penetracion_hogares`:**
  - Se mantuvieron los valores mayores a 100, entendiendo que múltiples conexiones por hogar son comunes.
  - Se investigaron posibles razones para tasas de penetración mayores al 100%.

#### 3. Agrupación y Consolidación de Datos
- En datasets con niveles geográficos (Provincia, Partido, Localidad), los datos se consolidaron a nivel de **Provincia** mediante agregación por suma.
  - Ejemplo: `acc_vel_loc_sinrangos`, `acc_tec_localidad`.

#### 4. Clasificación de Velocidades
- Se crearon rangos categóricos para la columna `Velocidad`, clasificados como:
  - `HASTA 512 kbps`, `+ 512 Kbps - 1 Mbps`, etc.
- Los rangos se utilizaron para analizar y comparar distribuciones.

#### 5. Creación de Nuevas Columnas
- En varios DataFrames, se generaron columnas adicionales para facilitar análisis posteriores:
  - Clasificación de accesos por `Rango` de velocidad.
  - Cálculo del `Total` como suma de categorías individuales (e.g., en `acc_rangos` y `dial_baf`).

#### 6. Unión de Tablas
- **`internet_accesos`:** Combina `vel_porc_prov`, `acc_tec`, y `dial_baf` utilizando `Año`, `Trimestre`, y `Provincia` como claves.
- **`internet_penetracion`:** Combina `penetracion_hab`, `penetracion_hogares`, y `acc_rangos` con la misma lógica.

#### 7. Imputación de Datos Faltantes
- Se utilizaron datos del DataFrame `vel_sin_rangos` para completar registros faltantes en `internet_penetracion`.
- Se emplearon promedios y clasificaciones de rangos de velocidad para rellenar vacíos en los trimestres sin datos completos.

#### 8. Manejo de Outliers
- Se identificaron y conservaron registros con velocidades mayores a 597.8 Mbps como "outliers", manteniéndolos marcados pero no eliminados.

#### 9. Evaluación Temporal
- Se verificaron los rangos temporales disponibles en los DataFrames:
  - Identificación de trimestres faltantes (e.g., T4 de 2023) y su imputación utilizando datos de otros DataFrames.

#### 10. Exportación de Datos Limpios
- Todos los DataFrames procesados se exportaron como archivos `.csv` para su uso en análisis posteriores.
  - Ejemplo: `internet_accesos.csv`, `internet_penetracion.csv`.

### Base de datos modelada
![base](Imagenes\modelo_base.png)


--- 

## Metodología

### Herramientas Utilizadas

El análisis y desarrollo del proyecto se realizó utilizando las siguientes herramientas:

- **Python**: Se empleó para el procesamiento y transformación de los datos (ETL), así como para tareas exploratorias iniciales. Todo el desarrollo se realizó en notebooks de **VSCode**. Las principales librerías utilizadas fueron:
  - **pandas**: Para la manipulación y transformación de datos.
  - **numpy**: Para operaciones matemáticas y análisis numérico.
  - **unicodedata**: Para normalización de textos, especialmente en nombres de provincias.
  - **warnings**: Para gestionar y suprimir mensajes de advertencia durante la ejecución.
  - **seaborn**: Para la creación de gráficos exploratorios.
  - **matplotlib.pyplot**: Para visualización de datos y gráficos personalizados.

- **MySQL**: Después del procesamiento, los datos fueron ingresados a una base de datos para estructurarlos y gestionarlos eficientemente. Se generó el modelo de datos, incluyendo relaciones y ajustes en tablas.

- **Power BI**: Utilizado para la creación de visualizaciones interactivas y dashboards, aprovechando funciones como botones de navegación, filtros interactivos, mapas, y gráficos avanzados.

### Exploratory Data Analysis (EDA) - Resumen

El análisis exploratorio se realizó sobre cuatro datasets principales, enfocándose en identificar tendencias, patrones y oportunidades en los accesos a internet en Argentina desde 2014 hasta 2024. A continuación, se presentan los puntos clave:

#### 1. Análisis General
- Los datos abarcan desde 2014 hasta 2024 y están distribuidos en trimestres, lo que permite un análisis temporal detallado.
- Se validó la consistencia entre sumas parciales de accesos por tecnología y los totales, asegurando la integridad de los datos.

#### 2. Principales Hallazgos
- **Tendencias de Acceso:**
  - Crecimiento sostenido en los accesos totales, con un máximo alcanzado en 2023.
  - El `ADSL` muestra un declive constante desde 2018, mientras que la `Fibra óptica` registra un crecimiento exponencial desde el mismo año.
  - `Cablemodem` domina el mercado, aunque su crecimiento se ha estabilizado, sugiriendo saturación.

- **Distribución por Tecnología:**
  - `Cablemodem` representa el **50.3%** de los accesos totales.
  - `Fibra óptica` crece rápidamente, alcanzando el **13.9%** de participación.
  - Tecnologías complementarias como `Wireless` (**3.5%**) y `Otros` (**1.8%**) mantienen un rol limitado pero estratégico en áreas específicas.

- **Velocidades de Conexión:**
  - Aumento exponencial en accesos con velocidades superiores a 30 Mbps, reflejando la modernización tecnológica.
  - Declive progresivo en las velocidades bajas (`HASTA 512 kbps`, `+ 512 Kbps - 1 Mbps`).

#### 3. Oportunidades de Negocio
- **Inversión en Fibra Óptica:**
  - Es la tecnología con mayor potencial de crecimiento y clave para responder a la creciente demanda de altas velocidades.
- **Optimización de Cablemodem:**
  - Mantener su base actual en mercados donde la fibra óptica aún no es viable.
- **Wireless en Zonas Rurales:**
  - Potenciar su adopción en regiones de difícil acceso como solución complementaria.
- **Transición desde ADSL:**
  - Reemplazar progresivamente esta tecnología, que está en declive, por opciones más modernas.

Este análisis permite identificar áreas estratégicas para la expansión de la conectividad y la modernización tecnológica, priorizando el desarrollo de infraestructura avanzada en regiones menos conectadas.

--- 

## Resultados y Conclusiones

El análisis de los datos relacionados con los accesos a internet en Argentina permitió identificar las siguientes conclusiones clave:

### 1. Tendencias Generales
- **Crecimiento Sostenido:** El número total de accesos a internet mostró un crecimiento constante desde 2014, alcanzando su punto máximo en 2023.
- **Declive de Tecnologías Obsoletas:** `ADSL` y otras tecnologías antiguas han disminuido significativamente, mientras que las conexiones de `Fibra óptica` y `Cablemodem` dominan el mercado actual.
- **Velocidades de Conexión:** El crecimiento en las velocidades altas (`+30 Mbps`) evidencia una transición hacia tecnologías más modernas.

### 2. Distribución por Tecnología
- **Predominio del Cablemodem:** Representa el **50.3%** de los accesos totales, consolidándose como la tecnología más utilizada, aunque su crecimiento se ha estabilizado.
- **Expansión de la Fibra Óptica:** Creció exponencialmente desde 2018 y representa una oportunidad clave para capturar mercados en transición.
- **Wireless como Solución Estratégica:** Aunque su participación es baja (**3.5%**), es relevante en regiones rurales o de difícil acceso.

### 3. Desigualdad Regional
- **Concentración en Grandes Centros Urbanos:** Provincias como Buenos Aires, Córdoba y Santa Fe concentran la mayoría de los accesos y cuentan con las velocidades más altas.
- **Brecha Digital:** Provincias del norte, como Formosa y Santiago del Estero, presentan los niveles más bajos de acceso y velocidades, reflejando desigualdades significativas.

### 4. Oportunidades de Mejora
- **Modernización de Infraestructura:** Acelerar la transición hacia `Fibra óptica` y tecnologías de alta velocidad en regiones menos conectadas.
- **Estrategias Regionales:** Priorizar inversiones en regiones con menor acceso para reducir la brecha digital y fomentar la inclusión tecnológica.
- **Optimización de Mercados Saturados:** En áreas urbanas con alta conectividad, ofrecer servicios diferenciados para fidelizar clientes y maximizar ingresos.

En resumen, el análisis muestra una evolución positiva en la conectividad a internet en Argentina, impulsada por la adopción de tecnologías modernas. Sin embargo, se destaca la necesidad de abordar las desigualdades regionales para garantizar un acceso equitativo y sostenible en todo el país.

## Recomendaciones

Con base en los resultados obtenidos en el análisis, se proponen las siguientes recomendaciones para mejorar la conectividad y aprovechar las oportunidades de negocio:

### 1. Expansión de Fibra Óptica
- **Priorizar Inversiones:** Ampliar la cobertura de `Fibra óptica` en regiones urbanas y suburbanas con alta demanda, ya que es la tecnología con mayor potencial de crecimiento.
- **Reducción de Brechas:** Implementar planes de expansión en provincias con baja penetración tecnológica, como Formosa y Santiago del Estero, para fomentar la inclusión digital.

### 2. Estrategias para Mercados Saturados
- **Optimización del Cablemodem:** Mantener y mejorar los servicios actuales en regiones donde esta tecnología domina, asegurando la fidelización de clientes.
- **Servicios Diferenciados:** Desarrollar ofertas premium para clientes en mercados saturados, como Buenos Aires y Capital Federal.

### 3. Abandono Progresivo de ADSL
- **Transición Planificada:** Sustituir gradualmente el `ADSL` con tecnologías más modernas en regiones donde la infraestructura lo permita.
- **Enfoque en Regiones Específicas:** Mantener el `ADSL` solo en mercados donde no existan alternativas viables a corto plazo.

### 4. Potenciación de Wireless en Zonas Rurales
- **Estrategias Regionales:** Implementar `Wireless` como solución principal en áreas rurales o regiones de difícil acceso.
- **Mejora de Infraestructura:** Invertir en la optimización de estas redes para ofrecer velocidades competitivas y mayor estabilidad.

### 5. Políticas Públicas para la Inclusión Digital
- **Incentivos Gubernamentales:** Fomentar la colaboración entre el sector público y privado para financiar proyectos de modernización tecnológica en regiones rezagadas.
- **Educación y Concientización:** Implementar programas educativos que promuevan el uso de internet como herramienta clave para el desarrollo.

### 6. Análisis y Monitoreo Continuo
- **Seguimiento de Tendencias:** Monitorear la evolución del mercado para ajustar estrategias en función de la adopción de nuevas tecnologías.
- **Identificación de Nichos:** Explorar oportunidades en tecnologías emergentes que puedan capturar mercados específicos o complementarios.

En conjunto, estas recomendaciones buscan maximizar la cobertura, mejorar la calidad de la conectividad y reducir las desigualdades regionales, asegurando un desarrollo equitativo y sostenible en el mercado de internet en Argentina.

---

## Uso del Repositorio

### Archivos Relevantes

- **Datasets crudos**: Contiene los datos originales utilizados para el análisis.
- **Datasets procesados**: Incluye los datos que han sido limpiados y transformados para su uso en el análisis y visualización.
- **Notebooks**: Contiene los notebooks utilizados para el análisis exploratorio de datos (EDA) y generación de insights.
- **Propuesta de KPIs.md**: Documento que detalla los Indicadores Clave de Desempeño propuestos para evaluar la conectividad en Argentina.
- **Dashboard.pbix**: Archivo de Power BI que contiene el dashboard interactivo con las visualizaciones del análisis.
- **Archivo SQL**: Carpeta que incluye los siguientes elementos para la creación y diseño de la base de datos.

--- 