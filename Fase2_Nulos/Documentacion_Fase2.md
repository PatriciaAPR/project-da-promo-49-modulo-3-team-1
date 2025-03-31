# Fase 2
### 📌Datos Nulos y Toma de Decisiones

A partir del análisis y la limpieza de datos anterior hemos realizado una depuración de datos nulos que nos ayudará a simplificar la información. Para ello hemos utilizado el conjunto de datos elaborado en formato .csv de manera no definitiva. Este archivo contenía la información filtrada y limpia sin eliminar los datos nulos.

Hemos ido analizando y realizando cambios de manera gradual, de manera que hemos creído conveniente eliminar las variables irrelevantes y modificar los datos nulos de manera definitiva después de haber realizado los cambios sintácticos pertinentes. Así pudimos trabajar en la creación del código para la eliminación de datos y generar un conjunto de datos organizados en tablas de una manera ordenada e intuitiva.

  - En primer lugar, debido a la falta de datos o redundancia, se han eliminado las siguientes variables:
  "daily_rate",  "education_field", "employee_number", "numberchildren", "over_18", "age", 
  "hourly_rate", "monthly_income", "monthly_rate", "performance_rating", "same_as_monthly_income". Las razones son las siguientes:

    · "age": Utilizamos la variable "birth_year", pues nos parece más precisa y ofrece la misma información. Cabe destacar que conociendo el dato "age" hemos podido llegar a la conclusión de que estos datos fueron recogidos en 2023.

    · "daily_rate": Es el coste del empleado por día, creemos que esta información no era relevante ya que no conocemos si los horarios de los empleados son regulares y tenemos el ingreso anual como variable a analizar.

    · "employee_number": 1678 valores "1"". Variable redundante, es eliminada.

    · "numberchildren": 1678 (100%) valores vacíos. Se elimina.

    · "years_current_role": 1643 (97,91%) valores vacíos. Se elimina.

    · "department": 1366 (81,41%) valores vacíos. Se elimina.

    · "role_department": 1366 (81,41%) valores vacíos. Se elimina.

    *Además de los datos nulos, estas dos últimas variables dan la misma información.*

    · "hourly_rate": 1267 (75,51%) valores vacíos. Se elimina.

    · "over_18": 938 (55,90%) valores vacíos. Información redundante, esta variable también se elimina al superar además el 50% de valores nulos.

    · "education_field": 774 (46,13%) valores vacíos. Tomamos la decisión de eliminar esta variable del análisis pues consideramos que la información que aporta no es relacional respecto a otros datos si ya vamos a valorar la variable "education_level". Resulta complejo observar una tendencia agrupando valores categóricos. Por lo que decidimos eliminar la variable "educationfield" y quedarnos con "educationlevel" que es más precisa.

    · "same_as_monthly_income": 489 (29,14%) valores vacíos. Se elimina pues aporta la misma información que "monthly_income", el sueldo mensual.

    · "monthly_income": 489 (29,14%) valores vacíos. Teniendo 
    "annual_salary", nos parece irrelevante analizar esta columna, por lo que la eliminamos.

    · "monthly_rate": Teniendo 
    "annual_salary", nos parece irrelevante analizar esta columna, por lo que la eliminamos.

    · "performance_rating": 200 (11,92%) valores vacíos. Aunque la cantidad de nulos es baja, hemos valorado que esta variable no aporta datos significativos para el análisis pues aunque la valoración del desempeño es del 1 al 4, todos las respuestas son "3" o "4", rangos de alta autopercepción. Creemos que hay un sesgo y no la incluiremos en el análisis.

    · "job_role": Consideramos que aunque no tiene nulos no ofrece una información relevanta, sino confusa, ya tenemos la variable de jerarquía en sus sustitución ("job_level")


En segundo lugar, hemos decidido mantener las siguientes columnas por su bajo porcentaje de valores vacíos y porque observamos posibles relaciones con otras variables:

    · "business_travel_frequency": 801 (47,83%) valores vacíos. Creímos que mantener esta variable era importante para detectar factores influyentes en la satisfacción laboral. Los datos nulos serán "unknown", desconocidos.

    · "overtime_hours": 696 (41,48%) valores vacíos. Creemos que esta variable de "horas extras" puede aportar sentido al análisis por lo que a pesar de los valores nulos se mantiene y los datos vacíos se completan como "unknown", desconocidos.

    · "marital_status": 675 (40,33%) valores vacíos. Mantenemos la variable porque puede aportar sentido y relacionarse directamente con la variable "work_life_balance". Los valores nulos se renombraron como "unknown", desconocidos.

    · "total_years_worked": 549 (32,59%) valores vacíos. La mantenemos en el análisis porque la experiencia nos parece un dato relevante. Los valores nulos se sustituyeron por su moda, "10.0", puesto que se trata de una variable numérica.

    · "standard_work_hours": 351 (20,94%) valores vacíos. Tenemos un 55,24% de jornada parcial y un 23,83% de jornada completa. Mantenemos la variable pues consideramos que el tipo de jornada laboral puede relacionarse con la satisfacción. Hemos decidido que información nula será renombrada como "None".

    *Dato importante: No consideramos sustituír los valores nulos por la moda, media o mediana cuando el número es mayor al 20 % ya que significaría asumir una información que no es representativa.*

    · "annual_salary": 285 (16.98%) valores vacíos. Esta información (el salario anual) nos parece muy relevante y como los nulos son menor a un 20%, sustituimos tales valores por la mediana, "53914.11".

    · "work_life_balance": 114 (6,69%) valores vacíos. Consideramos que es una variable interesante y debido a su bajo porcentaje de nulos hemos sustituído tales valores por la moda (dato categórico), "3.0".

- Dependiendo de la naturaleza de la columna, se toman decisiones sobre cómo tratar los valores nulos:

        a. En el caso de columnas numéricas, si se cumplía la condición de que los datos nulos eran un 20% o menos. Si los nulos eran superiores a tal porcentaje renombramos los nulos por "None" para su mejor lectura en la siguiente fase de trabajo.
        
        Se identificó las columnas con valores nulos:    "distance_from_home_km": 202 (mediana: 7.0);"environmental_satisfaction_level": 102 (mediana: 3.0)

        b. En el caso de columnas categóricas, los valores nulos fueron reemplazados por nuevas 'etiquetas de valor' también si se cumplía la condición de que los nulos eran un 20% o menos. En caso contrario, los datos también fueron sustituídos por "None".

- Se verificó que los valores nulos fueron tratados correctamente mediante el método "df.isnull().sum()"

Analizaremos duplicados e información irrelevante de las variables, si apenas existen datos no nulos se elimina la variable, si no, hacemos las modificaciones necesarias para darle coherencia a la información.

1. "dailyrate": Aunque tiene 0% de nulos, es preciso eliminarla ya que no nos interesa la información que aporta de pago diario teniendo la variable "salary" anual.
2. "educationfield": Contiene 45.13% de nulos, casi la mitad, por lo que se procede a su eliminación. Además, consideramos que no es una información de interés pues con la variable "educarionlevel" obtenemos unos datos más precisos sobre la formación.
3. "employeenumber": contiene 0 datos nulos pero hemos observado que no es relevante pues sólo posee un dato, 1. 
4. "numberchildren": se elimina, pues tiene un 100% de nulos.
5. "over18": se elimina, pues más del 50% de los datos son nulos (55.90%) y los datos que contienen no son claros.
6. "age": aunque no tiene nulos decidimos sustituirla por la variable "birthyear" la cual es más precisa indicando el año de nacimiento.
7. "hourlyrate": el pago por horas no es importante si sabemos el pago del salario anual, además contiene más de 70% de datos nulos.
8. "monthlyincome": el salario mensual tiene un 29,14% de nulos. Eliminaremos esta variable porque nos basta con saber el salario anual de los empleados.
9. "monthlyrate": pago mensual, no tiene nulos pero es una información no útil.
10. "performancerating": aunque no hay nulos, vemos que esta variable tiene una información muy homogénea, se trata de una percepción de desempeño y todos los valores son 3 o 4 en una escala del 1 al 4. Es necesario eliminarla.
11. "worklifebalance": Tenemos un 6.69% de nulos, no eliminaremos la variable ya que se puede relacionar con otras. Como el porcentaje de nulos es bajo se sustituirán por la mediana de los valores del 1 al 4.
12. "sameasmonthlyincome":con casi 30% de nulos, es una columna duplicada de monthlyincome, por lo que se elimina.

 ### 📌Creación de archivo CSV
Finalmente, con los datos limpios, hemos creado un archivo en formato csv para almacenarlo y poder utilizar tal información depurada y filtrada, en este caso, en un programa llamado MySQL Workbench el cual permite establecer relaciones entre colúmnas devolviéndonos tablas para un análisis completo.