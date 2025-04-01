## 📊 Proyecto Optimización de Talento

## FASE 1. CONOCEMOS Y MANEJAMOS LOS DATOS DEL ANÁLISIS

Para cumplir nuestros objetivos es muy importante la comprensión del conjunto de datos y sus características. En primer lugar realizamos un análisis exploratorio detallado del conjunto de datos para entender qué información teníamos.

### 📌Entendiendo los factores

     *** 1.Factores de Retención y Rotación de Empleados: ***

    Variables para conocer quien se va y quien se queda:

        - "employee_turnover":  ¿El empleado ha dejado la empresa? (yes/no).
        - "years_at_company": ¿Cuántos años lleva en la empresa? (0, 1, [...], 37, 40).
        - "years_since_last_promotion": ¿Hace cuánto fue su última promoción? (0, 1, [...], 14, 15).
        - "years_with_current_manager": ¿Cuántos años lleva con el mismo jefe? (0, 1, [...], 16, 17).

        ¿Por qué son importantes?
            -> Si hay empleados que se van tras pocos años, ¿qué factor lo causa?
            -> ¿La falta de promociones o cambio de jefe influye en la rotación?

    *** 2.Factores de Satisfacción en el Trabajo: ***

    Estas variables nos ayuda a hacernos una idea de la satisfacción de los empleados:

        - "job_satisfaction_level": ¿Cómo de satisfecho está con el trabajo? (Desde 1, el más bajo, a 4, el más alto).
        - "environmental_satisfaction_level": ¿Cómo de satisfecho está con el ambiente de trabajo? (Desde 1, el más bajo, a 4, el más alto).
        - "relationship_satisfaction_level": ¿Cómo de satisfecho está con las relaciones laborales? (Desde 1, el más bajo, a 4, el más alto).
        - "work_life_balance": (Desde 1, el más bajo, a 4, el más alto).
        - "job_involvement_level": ¿Cuál es el nivel de compromiso con el trabajo?  (Desde 1, el más bajo, a 4, el más alto).

        ¿Por qué son importantes? Posibles hipótesis sin resolver:
            -> Los empleados con baja satisfacción abandonan más y pronto.
            -> El ambiente laboral influye al nivel de satisfacción en las relaciones del trabajo y al equilibrio trabajo-vida personal.
            -> El nivel de satisfaccción laboral Influye directamente al nivel de compromiso.

    *** 3.Factores Económicos y Beneficios: ***

    Las siguientes variables nos facilitan identificar cómo influye el salario en la satisfacción y retención:

        - "annual_salary": ¿Cuánto gana al año? (Desde 10090.0 $ a 199990.0 $).
        - "percent_salary_hike": ¿Cuánto aumenta su sueldo por año? (Desde 11 % a 25 %).
        - "stock_option_level": ¿Cuál es su nivel de oportunidades de desarrollo? (0, 1, 2, 3, de menor a mayor).

        ¿Por qué son importantes? Posibles hipótesis sin resolver:
        -> Los empleados que se quedan tienen un sueldo mayor.
        -> Los aumentos de sueldo afectan la rotación.

    *** 4.Factores de Carga Laboral y Crecimiento ***
    Estas variables reflejan las características respecto a la jornada y experiencia laboral:

        - "overtime_hour": ¿Realizaba horas extras? ('yes', 'no').
        - "training_sessions_last_year": ¿Realizó formación en el último año? (0, 1, 2, 3, 4, 5, 6).
        - "job_level": ¿Cuál es el nivel jerárquico en su puesto? (5, 4, 3, 2, 1).
        - "standard_work_hours": ¿Qué tipo de jornada laboral tiene? ('full_time', 'part_time').
        - "num_companies_worked" -> ¿En cuántas empresas han trabajado antes? (Desde 0 a 9)
        - "business_travel_frequency": ¿Cuántos viajes de empresa hace al año?('travel_rarely', 'travel_frequently', 'non_travel')
        - "total_years_worked" -> ¿Cuántos años tiene de experiencia laboral? (Desde 0 a 40)

            ¿Por qué son importantes? Posibles hipótesis sin resolver:
            -> Las personas con mucha carga laboral se van antes.
            -> Los empleados con más formación tienen mejor nivel de satisfacción.
            -> Los empleados con un nivel jerárquico más alto tienen más retención y por tanto, una menor rotación.

    *** 5.Factores Personales y Demográficos ***

    Variables de datos personales:
        
        - "birth_year": ¿En qué año nació? (Desde 2005 a 1963)
        - "gender": ¿Cuál es su género? (0: "male" (hombre), 1: "female" (mujer))
        - "marital_status": ¿Es casado, divorciado o soltero? ('married', 'divorced', 'single')
        - "remote_work": ¿Trabaja en remoto? ('yes', 'no')
        - "education_level": ¿Cuál es su nivel de estudios más alto? (Desde 1, el más bajo, a 5, el más alto)
        - "distance_from_home_km": ¿Cuánto hay de distancia desde el trabajo a su casa en kilómetros (km)? (Desde 1 km a 29 km)

        ¿Por qué son clave? Posibles hipótesis sin resolver:
            -> Los empleados más jóvenes cambian de trabajo más seguido.
            -> El trabajo remoto influye en la satisfacción.
            -> El tiempo de traslado al trabajo afecta la rotación.

### 📌 Tipos de variables:

- Variables Categóricas: Son los conjuntos de datos cualitativos, que representan las características de un objeto.

            - Ordinal: Son las categorías con un orden lógico, pero sin una diferencia exacta entre ellas: "environmental_satisfaction_level", "relationship_satisfaction_level", "work_life_balance", "job_involvement_level",  "stock_option_level", "job_level", "business_travel_frequency",  "education_level".
e
            - Nominal: Son las categorías sin ningún orden específico: "employee_turnover", "overtime_hour", "standard_work_hours", "gender", "marital_status", "remote_work".

- Variables numéricas: Este tipo de datos representa cantidades o medidas. 

            - Discretas: Datos que son contables y sus valores se pueden enumerar: "years_at_company", "years_since_last_promotion", "years_with_current_manager", "training_sessions_last_year", "num_companies_worked", "total_years_worked", "birth_year".

            - Continuas: Puede tener un número infinito de valores numéricos dentro de un rango específico: "annual_salary", "percent_salary_hike", "distance_from_home_km".


### 📌 Análisis Exploratorio de Datos (EDA) 

1. Carga de Datos

    - Leímos del archivo CSV el cual contenía la información de los empleados a analizar.

2. Inspección Inicial del DataFrame

    - Observamos las variables, la cantidad de datos e hicimos una observación general sobre datos duplicados, nulos, faltantes, innecesarios y con sintaxis inapropiada. 

3. Exploración detallada

    - Cálculamos porcentajes, valores y observamos la tipología de las variables.


## TRANSFORMACIÓN DE LOS DATOS

 1. Conversión de Tipos de Datos

    - Se realizaron conversiones de tipos de datos en columnas en función de su coherencia como columnas de texto ("string") que contenían números a tipo numérico ("int") o decimal ("float").

    - Se verificó que todas las conversiones se realizaron correctamente utilizando el método "df.dtypes".

    - Los datos escritos erróneamente como en el caso de "distancefromhome" (tiene valores negativos que no concuerdan con la sintaxis de los demás valores) se deciden renombrar como valor absoluto debido a su mayor compatibilidad con sus datos.

 2. Homogenización y Consistencia de los Datos

    - Unificación de formatos: Las columnas que contenían valores numéricos en formato texto (por ejemplo, las cantidades y los años) fueron convertidas a los tipos de datos correspondientes, numéricos o decimales. Esto asegura que las operaciones matemáticas y estadísticas puedan realizarse correctamente. También encontramos, por ejemplo que la variable "distancefromhome" contenía valores negativos. Como somos analistas, antes de tomar una decisión sobre los valores negativos en distancefromhome, primero tuvimos que contarlos y ver su porcentaje en relación con el total de datos y tras ver un porcentaje significativo  tomamos la decisión de transformar los datos a valor absoluto.

    - Consistencia en los valores categóricos: Se identificaron columnas con valores categóricos, tales como el género, el tipo de trabajo, etc. Aseguramos que no existieran discrepancias como mayúsculas/minúsculas, utilizando métodos como ".str.lower()" para convertir todos los valores a minúsculas y hacer la comparación consistente.

    - Homogenización de sintaxis: En algunas columnas se realizaron transformaciones para que las categorías tuvieran valores homogéneos, eliminando posibles errores de sintaxis simplificando las categorías. Por ejemplo, en la columna "MaritalStatus" se repetía el tipo de respuesta "Married" pero un error de escritura ("Marreid"), se corrigió el error para dar sentido a la categoría.

    - Homogenización de unidades de medida: Si las columnas contenían valores numéricos que representaban unidades de medida (por ejemplo, salarios), se verificó que todas las unidades fueran consistentes. Por ejemplo, si una columna representaba años en la empresa, se estandarizó para que todos los valores estuvieran en la misma unidad (años completos).

    - En las columnas donde se recogían unidades de medida, se extrajo y se definió el tipo de dato como números puros (sin texto) para facilitar su análisis.

    - Eliminación de duplicados en número de empleados. 



### 📌Sustitución de nombres de columnas

    Dentro del análisis llegamos a la conclusión de que la sintaxis utilizadas en las columnas desde el inicio del proyecto no podían ser presentadas en la base de datos de la misma forma. Esto se debe a la detección de posibles confusiones en su propia lectura y comprensión respecto a su representación de los datos
 
    Por ello, a continuación mostramos los cambios establecidos en orden respecto a los títulos anteriores de las variables del análisis.

    *VARIABLES ANTES*

    ['age', 'attrition', 'businesstravel', 'dailyrate', 'department',
    'distancefromhome', 'education', 'educationfield', 'employeecount',
    'employeenumber', 'environmentsatisfaction', 'gender', 'hourlyrate',
    'jobinvolvement', 'joblevel', 'jobrole', 'jobsatisfaction','maritalstatus', 'monthlyincome', 'monthlyrate', 'numcompaniesworked',
    'over18', 'percentsalaryhike', 'relationshipsatisfaction', 'stockoptionlevel', 'trainingtimeslastyear', 'yearsatcompany', 'yearsincurrentrole', 'yearssincelastpromotion', 'yearswithcurrmanager', 'datebirth', 'overtime', 'performancerating', 'standardhours', 'totalworkingyears', 'worklifebalance', 
    'sameasmonthlyincome', 'salary', 'roledepartament', 'numberchildren', 'remotework']
   
    *VARIABLES DESPUÉS*

    ['age', 'employee_turnover', 'business_travel_frequency', 'daily_rate', 'distance_from_home_km', 'education_level', 'education_field', 'employee_id', 'environmental_satisfaction_level', 'gender', 'hourly_rate', 'job_involvement_level', 'job_level', 'job_role', 'job_satisfaction_level', 'marital_status', 'monthly_income', 'monthly_rate', 'num_companies_worked', 'over_18',
    'percent_salary_hike', 'relationship_satisfaction_level',
    'stock_option_level', 'training_sessions_last_year', 'years_at_company', 'years_since_last_promotion','years_with_current_manager', 'birth_year', 'overtime_hours', 'performance_rating', 'standard_work_hours', 'total_years_worked', 'work_life_balance', 'same_as_monthly_income', 'annual_salary', 'remote_work']

    *DATO IMPORTANTE* : Se puede observar que las variables "department", "employeecount", "yearsincurrentrole", "roledepartament", "department" y 
    "numberchildren" han sido eliminadas. Esto se debe a que la información que aportan es totalmente irrelevante para el estudio o simplemente no contiene ninguna información.

