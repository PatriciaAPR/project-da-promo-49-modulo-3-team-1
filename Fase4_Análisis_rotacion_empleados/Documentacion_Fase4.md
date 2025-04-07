# 🖥️ Desarrollo del Análisis de Rotación de Empleados

Se refiere a la cantidad de empleados que dejan una empresa y son reemplazados en un período de tiempo determinado.
Objetivo: Análisis descriptivo de la rotación voluntaria de empleados pueden estar influenciados por múltiples factores.

Pero... ¿qué es exactamente la rotación? Se refiere a la cantidad de empleados que dejan una empresa generando su próximo reemplazo.
Las causas principales pueden ser : Renuncias voluntarias (empleados que consiguen otro trabajo o renuncian por motivos personales); Despidos (por bajo rendimiento o reestructuración); Jubilaciones (en algunos casos).


## Objetivo metodológico:

### Análisis Descriptivo: 
Nos enfocamos en resumir y describir los datos sin sacar conclusiones profundas.

Técnicas usadas: tablas, gráficos de barras, histogramas, medidas de tendencia central (media, mediana, moda).

### Análisis Diagnóstico: 
Quisimos encontrar las relaciones y causas de los datos descritos.

Técnicas usadas: correlaciones, segmentaciones y análisis de tendencias fundamental (gráficos de líneas).


## Dentro de cada análisis podríamos encontrar:

### Variables Numéricas

#### 📊 Análisis Diagnóstico

###### Estableciendo Correlaciones Numéricas

La correlación de Pearson es útil porque mide la relación lineal entre dos variables numéricas. Nos ayuda a responder preguntas como:

    ❇️ ¿Qué factores influyen en el abandono de empleados?
    ❇️ ¿Existe relación entre el salario y la satisfacción laboral?
    ❇️ ¿A mayor distancia del trabajo, hay más rotación?

Nos ayuda a visualizar patrones ocultos: Algunas relaciones no son obvias sin un análisis de correlación. Por ejemplo: Si "work_life_balance" y "employee_turnover" tienen correlación negativa fuerte, mejorar el equilibrio vida-trabajo puede reducir la rotación.

▶️¿Cómo funciona?
La correlación de Pearson devuelve un valor entre -1 y 1:

    🔸 Cerca de +1 → Relación positiva fuerte (Si una variable sube, la otra también)
    🔸 Cerca de -1 → Relación negativa fuerte (Si una sube, la otra baja)
    🔸 Cerca de 0 → No hay relación lineal

##### **Análisis de la Matriz de Correlación**

**¿Qué muestra el gráfico/heatmap?**

El gráfico es un mapa de calor que muestra la relación entre todas las variables numéricas en el dataset. Los valores de la correlación de Spearman estan representados como números en cada celda:

Un valor cercano a 1 indica una relación muy fuerte entre dos variables (cuando una sube, la otra también lo hace).
Un valor cercano a -1 indica una relación inversa muy fuerte (cuando una sube, la otra baja).
Un valor cercano a 0 indica que no hay relación significativa entre las dos variables.

**📈 Correlaciones detectadas** 

1. **Job Level y Annual Salary (correlación: 0.88):**  
   Correlación positiva fuerte. A mayor nivel de trabajo, mayor salario anual. Esto es un resultado esperado en la mayoría de organizaciones.

2. **Job Level y Total Years Worked (correlación: 0.56):**  
   Correlación moderada positiva. Los empleados con mayor nivel laboral suelen haber trabajado más tiempo en total.

3. **Job Level y Birth Year (correlación: -0.49):**  
   Correlación negativa moderada. Empleados con mayor nivel suelen ser mayores (nacieron antes), lo que refleja más experiencia acumulada.

4. **Job Level y Years with Current Manager (correlación: 0.37):**  
   Correlación moderada positiva. Empleados con niveles más altos tienden a haber trabajado más tiempo con su actual manager.

5. **Job Level y Years at Company (correlación: 0.48):**  
   Correlación moderada positiva. A mayor antigüedad en la empresa, mayor nivel de trabajo.
 

##### Resumen de Análisis de la Matriz de Correlación

🔻 **Correlaciones más fuertes (+0.5 o más)**

1. "annual_salary" y "job_level"(0.88): Cuanto más alto es el nivel del puesto, mayor es el salario. Tiene lógica pues los ascensos llevan a mejores sueldos.
2. "years_at_company" y "years_with_current_manager" (0.76):  Si un empleado lleva más tiempo en la empresa, también ha estado con su gerente por más tiempo. Indica estabilidad en los equipos de trabajo.
3. "total_years_worked" y "years_at_company" (0.52): Los empleados que han trabajado más años en otras empresas también llevan más tiempo en la empresa actual.
4. "years_at_company" y "job_level" (0.53): Los empleados con más años en la empresa tienden a estar en niveles laborales más altos.

🔻 **Correlaciones negativas fuertes (-0.5 o menos)**

1. "birth_year" está fuertemente correlacionado de manera negativa con total_years_worked (-0.55) y annual_salary (-0.56).** Esto sugiere que cuanto más joven es un empleado, menos años ha trabajado en otras empresas y tienen salarios más bajos. 
2. "job_level" y "birth_year" (-0.51): Los empleados más jóvenes suelen estar en niveles laborales más bajos.

🔻 **Correlaciones moderadas (0.2 a 0.5)**

1. "years_at_company" y "annual_salary" (0.47): Cuanto menos tiempo en la empresa, menor es el salario. La antigüedad es recompensada.
2. "years_at_company" y "birth_year" (-0.31): Cuanto menos años lleva en la empresa más joven es el empleado.
3. "num_companies_worked" tiene una relación positiva con "total_years_worked" (0.21), lo que sugiere que las personas con más experiencia laboral han trabajado en más número de empresas.
3. "education_level" tiene una correlación algo moderada con "total_years_worked" (0.12), pero una correlación negativa con "birth_year" (-0.20), lo que indica que los empleados mayores pueden haber tenido menos nivel educativo en promedio.



### Variables Categóricas

#### Análisis Descriptivo

A continuación se describen las principales variables categóricas del dataset, su distribución y posibles implicaciones para el análisis de la rotación de empleados.

---

##### 🧑‍💼 Employee Turnover (Rotación de empleados)

- El dataset contiene **1.614 empleados**.
- De ellos, **1.355 empleados no han renunciado** (`"no"`) y **259 sí lo han hecho** (`"yes"`).
- ➤ Existe un **desbalance de clases**, lo que podría afectar futuros modelos predictivos. Sería recomendable aplicar técnicas como **oversampling** o **undersampling** si se usa esta variable como variable objetivo.

---

##### ✈️ Business Travel Frequency (Frecuencia de viajes laborales)

- La categoría más frecuente es **"unknown"** con **772 casos**.
- ➤ La alta proporción de valores desconocidos puede **afectar la calidad del análisis**.
- Se recomienda revisar si los `"unknown"` pueden **imputarse o eliminarse**, según el contexto.

---

##### 🚻 Gender (Género)

- Predominan los hombres (**971 empleados**) frente a **643 mujeres**.
- ➤ Sería interesante analizar si hay diferencias en la **rotación de empleados según género**.

---

##### 💍 Marital Status (Estado civil)

- Hay **651 empleados con valor "unknown"** en esta variable.
- ➤ Nuevamente se detecta **problema de calidad de datos**.
- Si se considera una variable relevante, podría aplicarse alguna estrategia de **imputación** o descartarla.

---

##### ⏱️ Overtime Hours (Horas extra)

- La mayoría de empleados **no realiza horas extra** (**682 casos**).
- ➤ Podría investigarse si hay una **relación entre hacer horas extra y la rotación laboral**.

---

##### 🕒 Standard Work Hours (Tipo de jornada)

- **888 empleados trabajan a tiempo parcial**.
- ➤ Este factor podría influir en la **satisfacción y permanencia** dentro de la empresa.

---

##### 🏠 Remote Work (Trabajo remoto)

- **1.000 empleados trabajan en remoto**, lo que representa **la mayoría de la plantilla**.
- ➤ Sería útil explorar si el **trabajo remoto está asociado a una menor rotación**, mayor satisfacción o retención de talento.

---

**Resumen de los datos que tenemos hasta el momento:**
La variable que más nos interesa es "employee_turnover" ya que es la decisión de los empleados de rotación o abandono de la empresa.

En total hay 1614 empleados, siendo 1355 los que no renuncian a su puesto mientras que 259 de ellos sí lo han hecho.


### 🔍 Preguntas de Análisis: Rotación vs. Variables Categóricas

A partir de la descripción anterior, se proponen algunas preguntas clave para analizar si existe relación entre la rotación de empleados (`employee_turnover`) y diferentes variables categóricas:

---

#### 👩‍🦰👨 Gender (Género) vs. Employee Turnover

> ¿Hay diferencias significativas en la rotación entre hombres y mujeres?

---

#### 🏠 Remote Work (Trabajo Remoto) vs. Employee Turnover

> ¿Los empleados que trabajan en remoto presentan menor rotación que los presenciales?

---

#### ⏱️ Overtime Hours (Horas Extra) vs. Employee Turnover

> ¿Los empleados que realizan horas extra tienen más probabilidades de renunciar?

---

#### ✈️ Business Travel Frequency (Frecuencia de Viajes) vs. Employee Turnover

> ¿Una mayor frecuencia de viajes se asocia a una mayor rotación?

---

#### 💍 Marital Status (Estado Civil) vs. Employee Turnover

> ¿Influye el estado civil en la permanencia en la empresa?

---

Estas preguntas guían la exploración cruzada de variables categóricas con la variable objetivo (`employee_turnover`) y permiten construir hipótesis sobre los factores que podrían influir en la decisión de abandonar o no la empresa.

### 🔍 Observaciones Relevantes a partir de los Gráficos

A continuación se resumen los hallazgos más relevantes obtenidos a partir de las visualizaciones realizadas, que permiten entender mejor los factores asociados a la rotación de empleados:

---

#### 👩‍🦰👨 Género vs Rotación

Aunque hay más mujeres en la muestra total, la rotación relativa entre géneros es bastante similar. No se observan diferencias destacables en la proporción de hombres y mujeres que abandonan la empresa. Este resultado sugiere que **el género no parece ser un factor determinante en la rotación**.

---

#### 🏠 Trabajo Remoto vs Rotación

La mayoría de los empleados trabajan en remoto. Al comparar con aquellos que trabajan de forma presencial, **la rotación no muestra grandes diferencias** entre ambos grupos. Esto indica que, en este caso, el **trabajo remoto no parece influir significativamente en la permanencia** de los empleados.

---

#### ⏱️ Horas Extra vs Rotación

Si bien hay más empleados que no realizan horas extra, **la proporción de rotación es mayor entre quienes sí las hacen**. Este patrón sugiere que **las horas extra podrían estar relacionadas con mayor desgaste laboral**, lo que podría influir negativamente en la retención del talento.

---

#### ✈️ Frecuencia de Viajes vs Rotación

Esta variable presenta una alta proporción de valores `"unknown"`, lo que limita su análisis. Sin embargo, dentro de los valores conocidos, se observa que **los empleados que viajan con más frecuencia tienden a abandonar más la empresa** que aquellos que no lo hacen. Esto podría estar vinculado al impacto que los viajes frecuentes tienen en el equilibrio vida-trabajo.

---

#### 💍 Estado Civil vs Rotación

También en esta variable hay muchos valores desconocidos, pero entre los datos válidos se percibe que **los empleados solteros presentan una mayor tasa de rotación** que los casados o divorciados. Esto podría estar relacionado con distintos niveles de estabilidad o prioridades personales según la situación familiar.

---

#### 🎂 Edad (Año de nacimiento) vs Rotación

El boxplot evidencia que los empleados que han renunciado tienden a ser más jóvenes, mientras que quienes permanecen en la empresa muestran una mayor variedad de edades. Esto sugiere que la **edad podría estar relacionada con la estabilidad laboral**, siendo los perfiles jóvenes más propensos a cambiar de empleo.

---

#### 🏢 Años en la Empresa vs Rotación

La antigüedad en la empresa está claramente relacionada con la permanencia: **los empleados que se han marchado suelen tener menos años en la empresa**, mientras que quienes continúan han desarrollado trayectorias más largas. Esto confirma que **la fidelización suele aumentar con el tiempo**.

---

#### 💰 Salario Anual vs Rotación

El análisis salarial muestra que **los empleados que han renunciado tienden a tener un salario anual más bajo** que aquellos que permanecen en la empresa. Además, quienes se quedan presentan una mayor dispersión salarial y presencia de sueldos elevados. Esto sugiere que **el salario puede ser un factor relevante en la retención**, y que las condiciones económicas más favorables podrían contribuir a reducir la rotación.

---

#### 🧑‍🤝‍🧑 Género (Reforzado con gráfico adicional)

A través del gráfico comparativo, también se observa que tanto hombres como mujeres presentan niveles similares de rotación. Aunque el porcentaje de rotación podría ser ligeramente mayor entre mujeres, **la diferencia no es especialmente pronunciada**.

---

### Conclusión general:

Las variables más asociadas a la rotación parecen ser la **edad**, la **antigüedad en la empresa**, el **salario** y el hecho de **realizar horas extra**. 

Factores como el estado civil o la frecuencia de viajes podrían influir, aunque se ven limitados por la calidad de los datos. En cambio, el género y el trabajo remoto no parecen marcar una diferencia significativa en la rotación.



### Variables Categóricas Ordinales

#### Análisis cruzado entre la rotación y variables de satisfacción laboral

Se han analizado varias dimensiones de satisfacción y balance laboral en relación con la rotación de empleados. 

Las principales conclusiones son:

- 🏢 **Satisfacción con el entorno laboral:** Los empleados con niveles medios y altos de satisfacción tienden a permanecer en la empresa. La rotación se reduce significativamente a medida que aumenta la satisfacción.
  
- 💼 **Nivel de implicación laboral:** La implicación en el trabajo es uno de los factores más relevantes. Los empleados con un alto nivel de implicación (nivel 4) presentan la rotación más baja del conjunto.
  
- 😊 **Satisfacción general con el trabajo:** La mayoría de quienes se quedan en la empresa reportan niveles altos o medios de satisfacción, mientras que la rotación se concentra ligeramente más en niveles bajos.
  
- ⚖️ **Equilibrio vida-trabajo:** Un buen balance se asocia con menor rotación. La mayor parte de los empleados que se quedan tienen un balance adecuado (nivel 3 o 4).

En resumen, los niveles de satisfacción e implicación laboral muestran una relación inversa con la rotación: **a mayor satisfacción e implicación, menor probabilidad de abandono**. 

Esto refuerza la importancia de trabajar en el clima y la cultura laboral como estrategia para retener talento.


**Relación entre Nivel Educativo y Variables de Satisfacción Laboral**

Se ha analizado cómo varían distintos niveles de satisfacción y balance laboral en función del nivel educativo de los empleados. Las principales conclusiones son:

- 📚 Los empleados con **nivel educativo medio (nivel 3)** presentan en general **los valores más altos de satisfacción con el entorno laboral, implicación, satisfacción general y balance vida-trabajo**.
  
- 📉 Los extremos educativos (niveles 1 y 5) aparecen menos representados y tienden a mostrar porcentajes más bajos en todas las dimensiones analizadas.

- 💡 Este patrón podría sugerir que los empleados con educación intermedia tienen un mejor encaje o estabilidad dentro del entorno organizativo actual, mientras que aquellos con niveles muy bajos o muy altos podrían experimentar un menor grado de ajuste o satisfacción.

Este análisis puede resultar útil para comprender cómo influyen los factores educativos en la percepción del entorno laboral y en el compromiso general con la organización.


**Relación entre Género y Variables de Satisfacción Laboral**

Al analizar las variables de satisfacción e implicación laboral según el género, se observan algunas diferencias notables:

- 📍 En todos los indicadores analizados (`environmental_satisfaction_level`, `job_involvement_level`, `job_satisfaction_level`, `work_life_balance`), **las mujeres presentan porcentajes más altos que los hombres en los niveles más positivos**.
  
- 💼 En particular, las mujeres destacan por una **mayor implicación laboral** y una **satisfacción más alta tanto con el trabajo como con el entorno**.
  
- ⚖️ En términos de equilibrio entre vida personal y laboral, las mujeres también reportan mejores resultados.

Estos datos sugieren que las mujeres podrían tener una **percepción más positiva o más comprometida con su entorno laboral** en comparación con sus compañeros hombres. También podrían reflejar una mayor implicación emocional o un estilo de comunicación diferente en las evaluaciones laborales.

No obstante, es importante tener en cuenta posibles sesgos en la autopercepción o la cultura organizacional al interpretar estas diferencias.


**Relación entre Nivel de Trabajo y Variables de Satisfacción Laboral**

Al cruzar los distintos niveles de trabajo (`job_level`) con variables de satisfacción y balance laboral, se observa un patrón claro:

- Los niveles bajos e intermedios (`job_level` 1 y 2) muestran **mayores porcentajes de satisfacción con el entorno, implicación laboral, satisfacción general y equilibrio vida-trabajo**.
  
- A medida que aumenta el nivel de trabajo, **disminuye la proporción de empleados con percepciones positivas en estas dimensiones**. Los niveles 4 y 5 presentan cifras considerablemente más bajas en comparación con los niveles inferiores.

- Esto podría deberse a un **mayor nivel de exigencia, responsabilidad o estrés en los cargos superiores**, lo que impacta negativamente en la percepción del entorno y la experiencia laboral.

Este análisis sugiere que los empleados con cargos más altos pueden beneficiarse de **estrategias de apoyo específicas**, como políticas de conciliación, reconocimiento profesional o mejoras en el entorno de trabajo para preservar su bienestar.


**Relación entre Horas Extra y Variables de Satisfacción e Implicación Laboral**

El análisis cruzado entre el tipo de jornada (`overtime_hours`) y las variables de satisfacción revela un patrón consistente y significativo:

- 👎 Los empleados que realizan horas extra presentan, en promedio, **niveles más bajos de satisfacción con el entorno laboral, implicación, satisfacción general y equilibrio vida-trabajo**.

- ✅ Por el contrario, quienes **no hacen horas extra** o tienen un horario estándar muestran **mayores niveles de bienestar, implicación y satisfacción**.

- 🔄 Este hallazgo **rompe la creencia de que hacer más horas está relacionado con mayor compromiso**. De hecho, los datos sugieren que **las horas extra podrían ser un factor de riesgo para la motivación y el bienestar laboral**.

Este análisis refuerza la importancia de **fomentar jornadas razonables y políticas de conciliación**, especialmente si se busca reducir la rotación y mejorar la satisfacción de los empleados.


**Relación entre Tipo de Jornada Laboral y Satisfacción Laboral**

El análisis de las variables de satisfacción en función del tipo de jornada (`standard_work_hours`) muestra patrones muy claros:

- 👥 Los empleados que trabajan **a tiempo parcial** reportan **niveles mucho más altos de satisfacción ambiental, implicación en el trabajo, satisfacción general y equilibrio vida-trabajo**, en comparación con aquellos que trabajan a jornada completa o que no tienen jornada definida.

- 💡 Especialmente destaca la implicación laboral (nivel 3) y la percepción del balance personal-laboral, que alcanzan sus valores más altos entre los empleados a jornada parcial.

- 🧩 Estos resultados sugieren que **la flexibilidad horaria o la reducción de jornada mejora significativamente la experiencia laboral**, sin afectar negativamente al compromiso del empleado.

Este hallazgo puede ser de gran valor para la empresa, ya que muestra cómo **políticas de conciliación o jornadas más adaptables pueden mejorar el clima laboral**, aumentar la satisfacción y posiblemente reducir la rotación.


**Relación entre Antigüedad en la Empresa y Satisfacción Laboral**

El análisis cruzado entre la variable `years_at_company` y distintas dimensiones de satisfacción laboral revela varios patrones relevantes:

- 🏁 Los empleados con **menos de 10 años** en la empresa presentan los **niveles más altos de satisfacción ambiental, implicación, satisfacción general y equilibrio personal-laboral**.
  
- ⏳ A partir de los **10-15 años**, estas proporciones tienden a estabilizarse o disminuir ligeramente, posiblemente por una combinación de desgaste, rutina o menor reconocimiento a largo plazo.

- 📈 El punto de **mayor implicación y satisfacción** suele darse entre los **5 y 7 años**, lo cual podría coincidir con una etapa de crecimiento o consolidación profesional dentro de la organización.

- 🧘‍♀️ En cuanto al equilibrio vida-trabajo, se observa que los primeros años suelen ofrecer **mejores condiciones de conciliación**, mientras que los empleados más veteranos reportan niveles más bajos.

Estos resultados pueden ser clave para diseñar estrategias de retención y bienestar que **varíen según la antigüedad del empleado**, adaptando beneficios, reconocimientos o condiciones laborales según la etapa profesional en la que se encuentre.


**Relación entre Año de Nacimiento y Satisfacción Laboral**  

Se ha analizado cómo varían distintos niveles de satisfacción, implicación y equilibrio vida-trabajo en función del año de nacimiento de los empleados. El análisis revela tendencias generacionales claras:

- 🧒 **Las generaciones más jóvenes** (especialmente quienes nacieron entre 1985 y 1995) presentan **los niveles más altos de satisfacción con el entorno, implicación laboral, satisfacción general y equilibrio vida-trabajo**.

- 🧓 Por el contrario, **los empleados de mayor edad** (nacidos antes de 1975) tienden a mostrar **niveles más bajos en todas las variables**, lo que podría deberse a distintos factores como desgaste laboral, desajuste generacional o menor identificación con la cultura organizativa actual.

- 📉 También se observa que los empleados más recientes (nacidos después del año 2000) **aún no presentan valores especialmente altos**, probablemente debido a su menor experiencia laboral o etapa de adaptación.

Este análisis sugiere que la edad (o generación) puede influir en cómo se percibe el entorno laboral. Por tanto, las estrategias de retención, motivación y bienestar deberían **adaptarse a los distintos grupos generacionales** para ser verdaderamente efectivas.



**Relación entre Trabajo Remoto y Satisfacción Laboral**

El análisis comparativo entre empleados que trabajan en remoto y los que no revela una **tendencia clara y consistente**:

- 💻 **Los empleados que trabajan en remoto presentan niveles más altos de satisfacción ambiental, implicación en el trabajo, satisfacción general y equilibrio vida-trabajo.**

- 📈 En particular, las diferencias en la **implicación (nivel 3: 36.74% remoto vs 22.43% no remoto)** y el **equilibrio personal-laboral (nivel 3: 39.53% remoto vs 23.73% no remoto)** son especialmente destacadas.

- 🧠 Estos datos sugieren que el trabajo en remoto **no solo mejora la percepción del entorno**, sino que también **favorece el compromiso y el bienestar emocional**.

- 🛠️ Este hallazgo puede ser clave para la empresa a la hora de **diseñar políticas de flexibilidad laboral**, ya que demuestra que el trabajo remoto puede ser una herramienta potente para **aumentar la satisfacción y la retención del talento**.

En resumen, **el trabajo remoto parece aportar múltiples beneficios tanto para el empleado como para la organización**.



**Relación entre Nivel Salarial y Satisfacción Laboral**

Se ha analizado cómo varían los niveles de satisfacción, implicación y equilibrio personal-laboral en función del salario anual, agrupado por tramos. Las conclusiones son especialmente relevantes para la gestión del talento y las políticas de compensación:

- 💸 **Los empleados que ganan entre 30.000€ y 60.000€** son los que presentan **mayor implicación en el trabajo**, **mayor satisfacción general**, **mejor percepción del entorno laboral** y **el mejor equilibrio vida-trabajo**.

- 📉 En contraste, los empleados con **salarios muy altos (más de 90.000€)** presentan niveles **bajos de satisfacción y de balance personal-laboral**, lo que sugiere que **un salario elevado no garantiza bienestar ni compromiso**.

- 🧩 También se observa que **los empleados con salarios muy bajos (menos de 30.000€)** muestran niveles más bajos en comparación con el rango medio, aunque en algunos aspectos están por encima del grupo de salarios altos.

Este análisis muestra que el salario **no es linealmente proporcional a la satisfacción laboral**, y que el tramo medio podría ser donde el empleado se siente **más motivado, cómodo y equilibrado**.

Esto puede ser clave para las estrategias de retención: **más salario no siempre significa más compromiso**, y hay que considerar **otros factores motivacionales no económicos** para mantener el bienestar.



## 📌 Análisis de Resultados


### Factores Clave en la Rotación de Empleados:

    - Horas extras y viajes frecuentes están fuertemente asociados con una mayor rotación, indicando una posible sobrecarga laboral.

    - Estado civil también influye: los empleados solteros presentan una mayor tasa de abandono.

    - Edad y antigüedad: los empleados más jóvenes y con menos tiempo en la empresa tienden a rotar más, incluso si están satisfechos.


### Satisfacción Laboral y Retención:

    - Los niveles de satisfacción en áreas como el entorno laboral, el compromiso, la satisfacción general y el equilibrio vida-trabajo están relacionados con una menor rotación.

    - El trabajo remoto y a tiempo parcial se asocia con mayores niveles de satisfacción.


### Variables Demográficas y Jerárquicas:

    - Género: las mujeres reportan mayor satisfacción, aunque esto no se traduce directamente en menor rotación.

    - Jerarquía y salario: niveles más altos implican mayor satisfacción, pero también más estré y menor equilibrio vida personal-laboral, lo que puede aumentar el riesgo de rotación si no se gestiona bien.


### Calidad de los Datos:

    - Existen valores “unknown” en variables importantes como frecuencia de viajes y estado civil, lo que limita la precisión de algunos análisis.

    - Es fundamental mejorar los procesos de recolección de datos para futuras evaluaciones.


## ✅ Recomendaciones Clave

    - Fomentar el equilibrio vida-trabajo: reducir horas extras, promover trabajo remoto y políticas de bienestar.

    - Retener talento joven: ofrecer planes de desarrollo, crecimiento profesional e incentivos personalizados.

    - Apoyar a niveles jerárquicos altos: brindar recursos contra el estrés y promover el equilibrio personal.

    - Revisar la política salarial: ajustar sueldos bajos para reducir rotación por insatisfacción económica.

    - Mejorar la calidad de datos: eliminar valores desconocidos en variables críticas para una mejor toma de decisiones.


## 📌 Perfil del trabajador con mayor rotación voluntaria**

        - Joven (años de nacimiento recientes).
        - Poca antigüedad (bajos years_at_company, total_years_worked).
        - Nivel bajo o medio en jerarquía (job_level 1 o 2).
        - Sueldo bajo o medio (annual_salary).
        - No tiene oportunidades de desarrollo (stock_option_level bajo o 0).
        - Realiza horas extra y viaja frecuentemente por trabajo.
        - Tiene baja conciliación vida personal y laboral.
        - Menor satisfacción ambiental y laboral.
        - Menor involucramiento o compromiso en el puesto.
        

### 🔍 Recomendaciones Específicas para Retener a Este Tipo de Empleado

        A. Planes de desarrollo profesional para perfiles jóvenes:

            - Implementar programas de mentoría.
            - Diseñar rutas de crecimiento claras para empleados nuevos.
            - Acceso a formación continua y certificaciones.

        B. Revisión y personalización de beneficios económicos:

            - Introducir planes de stock options o bonificaciones por desempeño.
            - Ofrecer incentivos a corto plazo para mantener la motivación.

        C. Reducción o compensación de horas extra:

            - Limitar las horas extras o compensarlas con días libres o tiempo flexible.
            - Automatizar tareas repetitivas para reducir la sobrecarga.

        D. Evitar viajes innecesarios:

            - Priorizar el trabajo remoto o híbrido frente a traslados constantes.
            - Cuando los viajes sean necesarios, ofrecer compensaciones justas.

        E. Programas de bienestar y balance vida-trabajo:

            - Promover pausas activas, días de actividades con los equipos fuera del entorno laboral, políticas de desconexión.
            - Flexibilizar horarios, especialmente en empleados con familia o estudios.

        F. Escuchar activamente al empleado (Recruiters):

            - Aplicar encuestas de satisfacción periódicas (especialmente en los primeros meses).
            - Canales abiertos de comunicación con RRHH o liderazgo.

        G. Alertas tempranas de fuga:

            - Monitorizar combinaciones de factores de riesgo (por ejemplo: baja satisfacción laboral, más de 2 compañías en las que trabajó, bajo compromiso laboral) para intervenir a tiempo.





