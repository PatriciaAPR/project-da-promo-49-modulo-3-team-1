## Proyecto Optimización de Talento

Con el objetivo de reducir la rotación de empleados y mejorar la satisfacción en el trabajo la empresa ABC Corporation, nos solicita desarrollar un proyecto de análisis de datos. 
Nuestro objetivo es identificar factores clave que influyen en la satisfacción en el trabajo y, en última instancia, en la retención de empleados.

### Análisis Exploratorio de Datos (EDA) 

1. Carga de Datos

    - Carga de un archivo CSV utilizando la librería pandas a través de Visual_Code.

    - Se verificó la estructura de los datos con el comando df.head() y df.info() para inspeccionar las primeras filas y la información general del DataFrame.

2. Inspección Inicial del DataFrame

    - Se verificaron las primeras filas del dataset para entender la estructura de los datos.

    - Se inspeccionó el tipo de datos de cada columna utilizando df.dtypes para determinar si las columnas contenían valores numéricos, de texto o fechas.
      
    - Se calculó el porcentaje de valores nulos en cada columna con df.isnull().mean() * 100.

3. Análisis Estadístico Descriptivo

    - Se obtuvieron estadísticas descriptivas del DataFrame con df.describe() para comprender la distribución de las variables numéricas.

    - Se identificaron valores atípicos o inconsistencias en los datos numéricos.

    - Para columnas categóricas, se analizaron los valores utilizando df['column_name'].value_counts().


### Transformación del DataFrame 

1. Tratamiento de Valores Nulos

    - Se identificaron las columnas con valores nulos.

    - Dependiendo de la naturaleza de la columna, se tomaron decisiones sobre cómo tratar los valores nulos:

        a. En el caso de columnas numéricas, los valores nulos fueron reemplazados por la media o mediana de la columna.
        b. En el caso de columnas categóricas, los valores nulos fueron reemplazados por la media o mediana de la columna y, en otros casos, por nuevas 'etiquetas de valor'.

    - Se verificó que los valores nulos fueran tratados correctamente mediante df.isnull().sum().

2. Conversión de Tipos de Datos

    - Se realizaron conversiones de tipos de datos en columnas, como convertir columnas de texto que contenían números a tipo int o float.

    - Se verificó que todas las conversiones se realizaron correctamente utilizando df.dtypes.

