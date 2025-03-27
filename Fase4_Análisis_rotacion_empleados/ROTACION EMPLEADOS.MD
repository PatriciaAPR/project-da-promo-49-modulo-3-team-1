ROTACION EMPLEADOS.

DUDAS EN COLUMNAS: 

- ELIMINAR LA PRIMERA COLUMNA Unnamed: 0? eliminar
- en el DFlos nulos aparecen como Nan.
- atrition: es si el empleado dejo la empresa, valores de yes y no: OBJECT PASAR A STR UNICAMENTE.
- BUSINESSTRAVEL: OBJECT PASAR A STR.
- DAILYRATE: Tarifa diaria estimada para clientes, calculada en base al salario: PREGUNTAR CESAR
- Department: Departamento en el que trabaja el empleado. ELIMINAR??? APARECE COMO OBJETC

------------------------------
- SALARIO:
todas las que son rate es por lo que vende la emresa al empleado.
    - columnas salario unificar: HourlyRate: Tarifa por hora calculada.(eliminar)
    - MonthlyIncome: Ingreso mensual estimado en base al salario anual.
    - MonthlyRate: Tarifa mensual estimada en función de la tarifa diaria.
    - PercentSalaryHike: Incremento porcentual en el salario...al año? desde que entro en la empresa?
    - WORKLIFEBALANCE: Nivel de balance entre vida personal y laboral.
    - Salary: Salario anual calculado para el empleado. ES OBJETC PASAR A FLOAT
    - HourlyRate: Tarifa por hora calculada. ELIMINAR
    
-------------------------

- OverTime: Indica si el empleado trabaja horas extras (Yes/No). relacionar con salario y jobrole: ESTA COMO OBJETO PASAR A STR.
- distacefromhome: km? millas? APARECE COMO INT.

------------------------------
UNIFICAR:
- education:se mide en numeros, que significa el numero, va de 1 a 4? 1 es basico o 4, QUEREMOS     MODIFICARLO A MEDIO BASICO SUPERIORES? ESTA COMO INT, SI MODIFICAMOS HABRIA QUE CAMBIARLO.
- EducationField: Campo de estudio académico del empleado. ELIMINAR
-----------------------------

- employeecount: eliminar
- employeenumber: es como el id, revisar que no hay duplicados ni nulos.
- EnvironmentSatisfaction: es una escala de 1 a 4

-----------------------------

SATISFACCION: 
- JobInvolvement: ESCALA Nivel de compromiso del empleado en el trabajo.ELIMINAR
- JobSatisfaction: Satisfacción general en el puesto.
- RelationshipSatisfaction: Satisfacción con relaciones interpersonales en el trabajo.
--------------------------

- Gender: transformar a femenino y masculino, AHORA ES INT, COMO CAMBIAMOS TENDREMOS QUE PONER STR
------------------------

- Unificar estas?
    - JobInvolvement: Nivel de compromiso del empleado en el trabajo.
    - JobLevel: Nivel jerárquico del puesto del empleado.
-------------------------

UNIFICAR: 
    -JobLevel: Nivel jerárquico del puesto del empleado. ELIMINAR
    - JobRole: Función o rol específico del empleado.
    - RoleDepartament: Combinación de rol y departamento. ELIMINAR

--------------------

- MaritalStatus: Estado civil (e.g., Single, Married). ELIMINAR?
-------------------------

- NUMCOMPANIESWORKED: Número de empresas previas en las que ha trabajado. ES UN INT
--------------------------------
- Over18: que significa? eliminar?

--------------------------
- PerformanceRating: Evaluación de desempeño en una escala numérica. ¿1-4? que significa ES OBJETC PASAR  A INT

-----------------------

- StockOptionLevel: Nivel de opciones sobre acciones asignadas. ESCALA, QUE SIGNIFICA??
-----------------------

UNIFICAR estas:
YearsInCurrentRole: Años en el rol actual. sale casi todo NAN eliminar y dejar esta:YearsSinceLastPromotion:

-------------------------------
- YEARSWITHCURRMANAGER: Años trabajando con el mismo gerente. DUDA

------------------------

*** - SAMEASMONTHLYINCOME:eliminar consensuado con cesar ***
-----------------------

UNIFICAR:
- DateBirth: Año de nacimiento del empleado. ELIMINAR
- Age: Edad del empleado.AQUI APARECEN NUMEROS EN INT Y EN STR: APARECE COMO OBJECT, DATO CATEGORICO.

-----------------------------
StandardHours: Clasificación de jornada (Full Time/Part Time) ELIMINAR

----------------------
StockOptionLevel: Nivel de opciones sobre acciones asignadas ELIMINAR

-----------------


TOTALWORKINGYEARS: Años totales de experiencia laboral. PASAR A INT


YEARSWITHCURRMANAGER: Años trabajando con el mismo gerente. ELIMINAR

RoleDepartament: Combinación de rol y departamento ELIMINAR 


NUMBERCHILDREN: Número de hijos del empleado (si está disponible) ELIMINAR


RemoteWork: Indica si el empleado trabaja de forma remota (Yes/No). ES OBJETC  CAMBIO A STR


hacer dos equipos uno con columnas categoricas y otro con columnas numericas, si hacemos esto no podemos eliminar ni una sola fila, pporque a la hora de cuadrar las filas nos daran errores.

hacer primero reset index antes de separar los datos en equipos de trabajo.