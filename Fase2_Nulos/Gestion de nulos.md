## 📄 Resumen de imputaciones en el proyecto de rotación de empleados

Este documento resume las decisiones tomadas para el tratamiento de valores nulos en el dataset, justificando las estrategias utilizadas para cada variable. Las imputaciones se realizaron de forma manual tras un análisis estadístico, y al final se incorporaron gráficas visuales con diferentes imputadores automáticos (SimpleImputer, KNNImputer, IterativeImputer) con fines comparativos.

---

### ✅ Imputaciones manuales

#### Variables numéricas:

| Columna                            | Tipo                  | Estrategia manual aplicada | Valor imputado | Justificación                                                                 |
|-----------------------------------|------------------------|-----------------------------|----------------|---------------------------------------------------------------------------------|
| `total_years_worked`              | Numérica continua     | Moda                        | 10.0           | Valor más frecuente. Representa la mayoría de casos (ápice de la distribución).  |
| `annual_salary`                   | Numérica continua     | Mediana                     | 53914.11       | Valores extremos en sueldos. Se decide usar la mediana para evitar sesgos.     |
| `distance_from_home_km`           | Numérica continua     | Mediana                     | 7.0            | Distribución desigual. La mediana representa mejor la posición central.        |
| `work_life_balance`               | Categórica ordinal     | Moda                        | 3.0            | Escala de satisfacción. 3 es el valor más común (946 veces).                   |
| `environmental_satisfaction_level`| Categórica ordinal     | Mediana                     | 3.0            | Moda poco representativa. La mediana suaviza la distribución.                  |

#### Variables categóricas:

Las variables categóricas se imputaron usando el valor "unknown" en lugar de la moda, con el fin de **preservar trazabilidad** y poder identificar posteriormente los registros que originalmente tenían valores nulos. Esta estrategia permite mantener la información sobre la ausencia de datos sin introducir sesgo con una categoría existente.

| Columna                    | Tipo                 | Estrategia manual aplicada | Valor imputado | Justificación                                                  |
|----------------------------|-----------------------|-----------------------------|----------------|------------------------------------------------------------------|
| `marital_status`          | Categórica nominal   | Relleno con "unknown"       | "unknown"      | Mantener trazabilidad de nulos. Mejora interpretabilidad.       |
| `business_travel_frequency` | Categórica nominal  | Relleno con "unknown"       | "unknown"      | Trazabilidad. Evita asignar una categoría errónea por defecto. |
| `overtime_hours`          | Categórica nominal   | Relleno con "unknown"       | "unknown"      | Permite diferenciar empleados sin dato registrado.              |
| `standard_work_hours`     | Categórica binaria   | Relleno con "unknown"       | "unknown"      | Conserva información sin alterar las categorías reales.         |

---

### 🎨 Visualización de imputaciones automáticas

Se incorporaron **gráficos de tipo boxplot y countplot** para visualizar cómo quedarían los datos si se hubieran imputado mediante:

- `SimpleImputer` con estrategia "median" o "most_frequent"
- `KNNImputer` con 5 vecinos
- `IterativeImputer` con regresión iterativa

⚠️ Estas imputaciones automáticas **no se aplicaron realmente** al DataFrame final, solo se usaron con fines visuales para comparar la distribución de los datos imputados frente a las decisiones manuales tomadas.

---

Este enfoque asegura un tratamiento cuidadoso de los datos nulos y una imputación fundamentada en análisis estadístico y comprensión del tipo de variable.



