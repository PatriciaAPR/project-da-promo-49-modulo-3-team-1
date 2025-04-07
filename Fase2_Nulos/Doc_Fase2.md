# 📌 Fase 2 – Datos nulos y toma de decisiones

A partir del análisis y la limpieza de datos anterior hemos realizado una depuración de datos nulos que nos ayudará a simplificar la información. Para ello hemos utilizado el conjunto de datos elaborado en formato .csv de manera no definitiva. Este archivo contenía la información filtrada y limpia sin eliminar los datos nulos.

Hemos ido analizando y realizando cambios de manera gradual, eliminando variables irrelevantes y modificando los datos nulos de manera definitiva después de realizar cambios sintácticos pertinentes. Así pudimos crear el código para la eliminación de datos y generar un conjunto de datos organizados en tablas de manera ordenada e intuitiva.

## 🔸 Variables eliminadas

En primer lugar, debido a la falta de datos o redundancia, se han eliminado las siguientes variables:

`daily_rate`, `education_field`, `employee_number`, `numberchildren`, `over_18`, `age`, `hourly_rate`, `monthly_income`, `monthly_rate`, `performance_rating`, `same_as_monthly_income`.

**Justificación variable a variable:**

- `age`: Utilizamos `birth_year`, ya que es más precisa y nos indica que los datos fueron recogidos en 2023.
- `daily_rate`: No resulta útil al desconocer la regularidad de los horarios; tenemos el ingreso anual.
- `employee_number`: Solo contiene el valor “1”, es redundante.
- `numberchildren`: 100% de nulos, se elimina.
- `years_current_role`: 97,91% de nulos, se elimina.
- `department` y `role_department`: Ambas con 81,41% de nulos, se eliminan. Además, aportan la misma información.
- `hourly_rate`: 75,51% de nulos, se elimina.
- `over_18`: 55,90% de nulos, información redundante.
- `education_field`: 46,13% de nulos, se prefiere `education_level` por ser más precisa y representativa.
- `same_as_monthly_income`: 29,14% de nulos. Duplicada con `monthly_income`.
- `monthly_income`: 29,14% de nulos. Se elimina porque contamos con `annual_salary`.
- `monthly_rate`: Similar al anterior.
- `performance_rating`: Solo contiene los valores 3 y 4 (alta autopercepción), lo que genera sesgo. Se elimina.
- `job_role`: Aunque sin nulos, se elimina por ser confusa frente a `job_level`.

---

## 🔹 Variables conservadas con tratamiento de nulos

Mantenemos ciertas columnas a pesar de su porcentaje de nulos porque observamos valor analítico en ellas:

- `business_travel_frequency` (47,83% nulos): mantiene, nulos como `"unknown"`.
- `overtime_hours` (41,48%): se mantiene, nulos como `"unknown"`.
- `marital_status` (40,33%): se mantiene por posible relación con `work_life_balance`, nulos como `"unknown"`.
- `total_years_worked` (32,59%): se mantiene, nulos sustituidos por moda `"10.0"`.
- `standard_work_hours` (20,94%): se mantiene, nulos sustituidos por `"None"`.
- `annual_salary` (16,98%): se mantiene, nulos sustituidos por mediana `"53914.11"`.
- `work_life_balance` (6,69%): se mantiene, nulos sustituidos por moda `"3.0"`.

> No imputamos con media/moda/mediana si los nulos superan el 20% salvo justificación fuerte, para no asumir información poco representativa.

También se imputaron:

- `distance_from_home_km`: mediana `7.0`.
- `environmental_satisfaction_level`: mediana `3.0`.

---

## ✅ Imputaciones manuales detalladas

### ✳️ Variables numéricas

| Columna                            | Estrategia aplicada | Valor imputado | Justificación                                     |
|-----------------------------------|----------------------|----------------|--------------------------------------------------|
| total_years_worked                | Moda                 | 10.0           | Valor más frecuente de la distribución.          |
| annual_salary                     | Mediana              | 53914.11       | Evita sesgos generados por valores extremos.     |
| distance_from_home_km             | Mediana              | 7.0            | Representa mejor la tendencia central.           |
| work_life_balance                 | Moda                 | 3.0            | Valor más común (946 casos).                     |
| environmental_satisfaction_level  | Mediana              | 3.0            | Más representativa que la moda en este caso.     |

---

### ✳️ Variables categóricas

| Columna                    | Valor imputado | Justificación                                                  |
|----------------------------|----------------|----------------------------------------------------------------|
| marital_status             | "unknown"      | Permite identificar registros sin dato real.                   |
| business_travel_frequency  | "unknown"      | Evita asignar una categoría arbitraria.                        |
| overtime_hours             | "unknown"      | Diferencia empleados sin dato registrado.                      |
| standard_work_hours        | "unknown"      | Conserva el dato sin alterar las categorías reales.            |

---

## 🎨 Visualización de imputaciones automáticas

Se incorporaron gráficos de tipo boxplot y countplot para visualizar cómo quedarían los datos si se hubieran imputado con:

- `SimpleImputer` (mediana o moda)
- `KNNImputer` (5 vecinos)
- `IterativeImputer` (regresión iterativa)

⚠️ Estas imputaciones **no se aplicaron realmente** al DataFrame final; fueron comparativas frente a nuestras decisiones manuales.
