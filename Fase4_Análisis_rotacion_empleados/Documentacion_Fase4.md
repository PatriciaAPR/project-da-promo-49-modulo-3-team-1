
## 📌 Información para el análisis en Fase 4

1. **Factores objetivos**

- **Variables relacionadas con el abandono**

   En esta fase hemos comenzado a buscar relaciones estadísticas entre las variables, quisimos analizar las gráficas de la fase anterior para llegar a unas conclusiones.

    Se analizaron las columnas que contienen la información de la tasa de abandono ('employee_turnover'), el número de empresas en las que se ha trabajado antes ("num_companies_worked"), los años en la empresa ("years_at_company"), los años totales de experiencia laboral ("total_years_worked"), los años desde la última promoción ("years_since_last_promotion) y  los años con el manager actual ("years_with_current_manager").

    Hemos seleccionado estas variables porque los consideramos factores clave a la hora de tomar decisiones ya que conocemos así como la estabilidad en el rol y la frecuencia de abandono en otras empresas pueden, por ejemplo, crear una tendencia de "burn out" o desmotivación laboral. También la información sobre los jefes o "managers" nos aportaría claridad respecto a la gestión eficiente o no del liderazgo de equipos.

- **Variables sobre la jornada de trabajo**

    Encontramos información sobre el puesto de trabajo ("job_role"), el nivel jerárquico del mismo ("job_level"),si realizaban horas extras
    ("overtime_hour"), si realizaron formación en el último año ("training_sessions_last_year"), los viajes de empresa ("business_travel_frequency"), el tipo de jornada laboral ("standard_work_hours") y si el trabajo era remoto ("remote_work").

    Analizando estas variables pudimos conocer la carga laboral y las oportunidades de crecimiento en la empresa, vital para determinar la satisfacción y, por tanto, la posible necesidad de mejoras o toma de decisión de abandono.

    Cabe destacar la importancia de la retribución salarial y otros potenciales económicos internos. Analizamos el salario total anual ("annual_salary"), el ingreso mensual ("monthly_income"), tarifa por hora ("hourly_rate"), el incremento porcentual de salario por año ("percent_salary_hike") y las oportunidades de desarrollo como accionistas de la empresa ("stock_option_level").

    Queríamos investigar:
        -> ¿Afectan los viajes frecuentes por trabajo a la satisfacción?
        -> ¿Ayudan las formaciones curriculares a mantenerse en el puesto?
        -> ¿Hay relación entre el nivel jerarquico y la satisfacción?
        -> ¿Cuáles son los puestos de trabajo con mayor estabilidad?
        -> ¿Ganan más los empleados que se quedan?
        -> ¿Los aumentos de sueldo afectan la rotación? ¿Y las oportunidades de desarrollo?
        -> ¿Las personas con mucha carga laboral (jornada completa full_time y horas extras) se van antes?
        -> ¿El trabajo en remoto es óptimo para algún rol concreto?
        -> ¿Los empleados con más formación tienen mejor satisfacción?
    

- **Variables personales**

    Valoramos los datos personales de los empleados para observar si hay relaciones entre rangos de edad ("age") o años de nacimiento ("birth_year"), género ("gender"), estados civiles ("marital_status"), nivel educativo ("education_level") y distancia al trabajo ("distance_from_home_km") que influyen en la satisfacción laboral y por tanto en la tendencia a abandonar y cambiar de empresa.

    Queríamos investigar:
        -> ¿Los empleados más jóvenes cambian de trabajo más seguido?
        -> ¿Afecta el género o el estado civil a la satisfacción laboral?
        -> ¿A mayor nivel educativo mayor será la rotación?
        -> ¿El tiempo de traslado al trabajo afecta la rotación?


2. **Factores subjetivos**

Por otro lado, deseamos conocer la satisfacción de los trabajadores, desde diferentes perspectivas pues creemos que la emocionabilidad negativa en el ámbito laboral y personal es un cofactor que determina la motivación personal y rendimiento laboral, afectando a su vez a su propio entorno de trabajo.

Para ello, se analizaron las columnas que contienen la información del nivel de satisfacción con el trabajo en general ("job_satisfaction_level"), en el ambiente laboral ("environmental_satisfaction_level"), las relaciones en el trabajo ("relationship_satisfaction_level"), la conciliación de trabajo y vida personal ("work_life_balance"), el nivel de compromiso en el trabajo ("job_involvement_level").

Esta valoración es esencial para saber la baja satisfacción y analizar las variables objetivas en base a ello.

Queríamos investigar:
    -> Si los empleados con baja satisfacción son los que más se van.
    -> Identificar qué empresa tiene mejor ambiente y bienestar.
    -> ¿Influye el estado civil en la satisfacción al equilibrar trabajo y vida personal?




3. Análisis de Resultados


    1. Factores Clave en la Rotación de Empleados:

    - Horas extras y viajes frecuentes están fuertemente asociados con una mayor rotación, indicando una posible sobrecarga laboral.

    - Estado civil también influye: los empleados solteros presentan una mayor tasa de abandono.

    - Edad y antigüedad: los empleados más jóvenes y con menos tiempo en la empresa tienden a rotar más, incluso si están satisfechos.

    2. Satisfacción Laboral y Retención:

    - Los niveles de satisfacción en áreas como el entorno laboral, el compromiso, la satisfacción general y el equilibrio vida-trabajo están relacionados con una menor rotación.

    - El trabajo remoto y a tiempo parcial se asocia con mayores niveles de satisfacción.

    3. Variables Demográficas y Jerárquicas:

    - Género: las mujeres reportan mayor satisfacción, aunque esto no se traduce directamente en menor rotación.

    - Jerarquía y salario: niveles más altos implican mayor satisfacción, pero también más estré y menor equilibrio vida personal-laboral, lo que puede aumentar el riesgo de rotación si no se gestiona bien.

    4. Calidad de los Datos:

    - Existen valores “unknown” en variables importantes como frecuencia de viajes y estado civil, lo que limita la precisión de algunos análisis.

    - Es fundamental mejorar los procesos de recolección de datos para futuras evaluaciones.

    ✅ Recomendaciones Clave

    - Fomentar el equilibrio vida-trabajo: reducir horas extras, promover trabajo remoto y políticas de bienestar.

    - Retener talento joven: ofrecer planes de desarrollo, crecimiento profesional e incentivos personalizados.

    - Apoyar a niveles jerárquicos altos: brindar recursos contra el estrés y promover el equilibrio personal.

    - Revisar la política salarial: ajustar sueldos bajos para reducir rotación por insatisfacción económica.

    - Mejorar la calidad de datos: eliminar valores desconocidos en variables críticas para una mejor toma de decisiones.


**Perfil del trabajador con mayor rotación voluntaria**

    El perfil más propenso al abandono presenta estas características:

        - Joven (años de nacimiento recientes).
        - Poca antigüedad (bajos years_at_company, total_years_worked).
        - Nivel bajo o medio en jerarquía (job_level 1 o 2).
        - Sueldo bajo o medio (annual_salary).
        - No tiene oportunidades de desarrollo (stock_option_level bajo o 0).
        - Realiza horas extra y viaja frecuentemente por trabajo.
        - Tiene baja conciliación vida personal y laboral.
        - Menor satisfacción ambiental y laboral.
        - Menor involucramiento o compromiso en el puesto.

    🔍 Recomendaciones Específicas para Retener a Este Tipo de Empleado

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


    🧠 Idea clave:

     Muchos abandonos no se deben solo al salario, sino a una combinación de sentimiento de estancamiento, sobrecarga, y desconexión emocional con la empresa. 
    Si trabajamos estos puntos, es posible retener más talento joven.



NEXT STEPS


🧾 Optimizar la recolección de datos
Existen variables importantes que presentan valores inconsistentes. Sugerimos mejorar la imputación de dichos datos.
📚 Formación en recogida y gestión de datos
Proponemos ofrecer formación a la empresa ABC Corporation sobre procesos de recogida de datos y el uso de herramientas que faciliten la accesibilidad, integridad y enriquecimiento de la información.
💡 Aplicar estrategias basadas en el análisis realizado
Recomendamos a la empresa implementar medidas orientadas a reducir la rotación y mejorar la satisfacción de los empleados, como por ejemplo:
Políticas de conciliación y bienestar laboral
Programas de desarrollo para empleados jóvenes
Apoyo específico a perfiles con alta carga de trabajo
Revisión de la estructura salarial en niveles más bajos


