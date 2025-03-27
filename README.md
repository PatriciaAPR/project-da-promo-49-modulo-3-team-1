## 📌 Proyecto Optimización de Talento

Con el objetivo de reducir la rotación de empleados y mejorar la satisfacción en el trabajo la empresa ABC Corporation, nos solicita desarrollar un proyecto de análisis de datos. 

Nuestro objetivo es identificar factores clave que influyen en la satisfacción en el trabajo y, en última instancia, en la retención de empleados.

## FASE 1. CONOCEMOS Y MANEJAMOS LOS DATOS DEL ANÁLISIS

### 📌 Análisis Exploratorio de Datos (EDA) 

1. Carga de Datos
2. Inspección Inicial del DataFrame 
3. Análisis Estadístico Descriptivo

### 📌 Transformación del DataFrame 

1. Conversión de Tipos de Datos

    - Se realizaron conversiones de tipos de datos en columnas, como convertir columnas de texto que contenían números a tipo int o float.

    - Se verificó que todas las conversiones se realizaron correctamente utilizando df.dtypes.

2. Homogenización y Consistencia de los Datos

   - Unificación de Formatos: Las columnas que contenían valores numéricos en formato string (por ejemplo, cantidades o años) fueron convertidas a los tipos de datos correspondientes, como int o float. Esto asegura que las operaciones              matemáticas y estadísticas puedan realizarse correctamente.

   - Consistencia en los Valores Categóricos: Se identificaron columnas con valores categóricos, tales como el género, el tipo de trabajo, etc. Aseguramos que no existieran discrepancias como mayúsculas/minúsculas, utilizando funciones como        .str.lower() para convertir todos los valores a minúsculas y hacer la comparación consistente.

    - En algunas columnas se realizaron transformaciones para que las categorías tuvieran valores homogéneos, eliminando posibles errores de tipeo y simplificando las categorías.

    - Homogenización de Unidades de Medida: Si las columnas contenían valores numéricos que representaban unidades de medida (por ejemplo, salarios), se verificó que todas las unidades fueran consistentes. Por ejemplo, si una columna                representaba años en la empresa, se estandarizó para que todos los valores estuvieran en la misma unidad (años completos).

    - En las columnas donde se recogían unidades de medida, se extrajo y se definió el tipo de dato como números puros (sin texto) para facilitar su análisis.

## FASE 2. EVALUACIÓN E IMPORTACIÓN DE DATOS NULOS

    - Se identificó las columnas con valores nulos.

    - Dependiendo de la naturaleza de la columna, se toman decisiones sobre cómo tratar los valores nulos:

        a. En el caso de columnas numéricas, los valores nulos fueron reemplazados por la media o mediana de la columna.
        b. En el caso de columnas categóricas, los valores nulos fueron reemplazados por nuevas 'etiquetas de valor'.

    - Se verificó que los valores nulos fueran tratados correctamente mediante df.isnull().sum().
    

## FASE 3. CREACIÓN DE LA BASE DE DATOS

    - Se realizó un estudio de los datos a contener en función de las columnas existentes
    - Tras evaluar los datos se decide una importación global de los mismos, incluyendo los datos nulos. 
    - Se realiza un informe de recomendaciones sobre las columnas y sus valores nulos.
    - Se crean tres tablas de interrelación para la importación de los datos según los siguientes criterios:
            - Datos Básicos relativos a los datos de carácter personal del empleado
            - Datos de Empresa que recogen toda la información del trabajador y su puesto de trabajo
            - Niveles de Satisfacción del empleado donde se importan todas las columnas que recogen escalas de tipo numérico en el DataFrame
    - Se genera la Primary Key en 'employeer_number', común para las tres tablas.

FASE 4. ANÁLISIS DE LA ROTACIÓN DE LOS EMPLEADOS
-
-
-
