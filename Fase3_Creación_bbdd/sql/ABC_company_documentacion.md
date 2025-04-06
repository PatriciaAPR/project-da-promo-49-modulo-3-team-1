# 📚 Documentación de la Base de Datos `ABC_company`

## 📌 Descripción General

La base de datos **ABC_company** está diseñada para almacenar y gestionar información relacionada con los empleados de una empresa, incluyendo datos personales, laborales, de satisfacción y financieros.

---

## 🏗️ Estructura de la Base de Datos

### employees

| Campo           | Tipo        | Descripción                          |
|-----------------|-------------|--------------------------------------|
| employee_number | INT         | Identificador único del empleado (PK)|
| age             | INT         | Edad del empleado                    |
| gender          | VARCHAR(50) | Género del empleado                  |
| marital_status  | VARCHAR(50) | Estado civil                         |
| over18          | VARCHAR(50) | Indicador si es mayor de 18 años     |
| date_of_birth   | INT         | Año de nacimiento                    |

### employee_attributes

| Campo                      | Tipo         | Descripción                                    |
|----------------------------|--------------|-------------------------------------------------|
| employee_number            | INT          | Identificador del empleado (FK)                |
| job_involvement            | INT          | Grado de involucramiento en el trabajo         |
| departament                | VARCHAR(100) | Departamento al que pertenece                  |
| job_role                   | VARCHAR(100) | Rol del empleado                               |
| job_level                  | INT          | Nivel del trabajo dentro de la organización    |
| job_satisfaction           | INT          | Nivel de satisfacción con el trabajo           |
| environment_satisfaction   | FLOAT        | Satisfacción con el entorno laboral            |
| relationship_satisfaction  | INT          | Calidad de relaciones interpersonales          |
| work_life_balance          | INT          | Balance vida-trabajo                           |
| years_at_company           | INT          | Años en la empresa                             |
| years_in_current_role      | INT          | Años en el rol actual                          |
| years_since_last_promotion | INT          | Años desde la última promoción                 |
| years_with_current_manager | INT          | Años con el actual jefe                        |
| training_times_last_year   | INT          | Cantidad de capacitaciones el último año       |
| performance_rating         | INT          | Evaluación de rendimiento                      |

### business_travel

| Campo                  | Tipo         | Descripción                        |
|------------------------|--------------|------------------------------------|
| employee_number        | INT          | Identificador del empleado (FK)    |
| business_travel_status | VARCHAR(100) | Estado de viaje de negocios        |

### overtime

| Campo           | Tipo        | Descripción                     |
|-----------------|-------------|----------------------------------|
| employee_number | INT         | Identificador del empleado (FK)  |
| overtime_status | VARCHAR(50) | Estado de horas extra            |

### salaries

| Campo                  | Tipo   | Descripción                             |
|------------------------|--------|-----------------------------------------|
| employee_number        | INT    | Identificador del empleado (FK)         |
| salary                 | FLOAT  | Sueldo base                             |
| monthly_income         | FLOAT  | Ingreso mensual                         |
| monthly_rate           | FLOAT  | Tasa mensual                            |
| percent_salary_hike    | INT    | Porcentaje de aumento salarial          |
| same_as_monthly_income | FLOAT  | Valor repetido del ingreso mensual      |

### employee_satisfaction

| Campo                     | Tipo   | Descripción                            |
|---------------------------|--------|----------------------------------------|
| employee_number           | INT    | Identificador del empleado (FK)        |
| environment_satisfaction  | FLOAT  | Satisfacción con el ambiente laboral   |
| job_satisfaction          | INT    | Satisfacción con el trabajo            |
| relationship_satisfaction | INT    | Satisfacción con las relaciones        |
| work_life_balance         | INT    | Balance entre vida y trabajo           |
| performance_rating        | INT    | Evaluación de desempeño                |

---

## 🧩 Relaciones Entre Tablas

- Todas las tablas secundarias (`employee_attributes`, `business_travel`, `overtime`, `salaries`, `employee_satisfaction`) se relacionan con la tabla principal `employees` mediante la clave `employee_number`.

---

## 🎯 Justificación del Diseño de la Base de Datos

La estructura de esta base de datos sigue principios de normalización y modularidad con los siguientes objetivos:


1. Separación lógica de la información

Dividimos la información en tablas especializadas para mantener la coherencia, evitar redundancias y facilitar futuras ampliaciones. Por ejemplo:

- employees almacena datos personales básicos.

- employee_attributes agrupa atributos laborales y de rendimiento.

- business_travel, overtime y salaries separan datos específicos que pueden cambiar independientemente.


2. Uso de claves foráneas (FK)

Todas las tablas secundarias utilizan employee_number como clave foránea para mantener integridad referencial con la tabla employees. Esto garantiza consistencia entre datos relacionados.


3. Facilidad para consultas y análisis

Al estructurar los datos de esta manera, se facilita:

- Consultas específicas (e.g., “¿Qué empleados tienen overtime y cuánto ganan?”).

- Generación de informes segmentados.

- Análisis estadístico o predictivo sin ambigüedad en los datos.


4. Escalabilidad

Si se requiere agregar nuevos datos (como ausentismo, evaluaciones 360°, etc.), se puede hacer sin alterar las tablas existentes, solo añadiendo nuevas relacionadas por employee_number.

