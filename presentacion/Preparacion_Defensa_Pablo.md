# Preparación de defensa — Pablo Lacasa
### Qué es tuyo, qué te pueden preguntar y qué contestar

Fuente: `Grupo4-Aulax.docx` v1.4 (12/10/2026), guía de preguntas de la cátedra y la presentación del Grupo 4.

---

## 1 · Tu perímetro exacto

El documento define tu rol así:

> **Lacasa, Pablo — Modelado e integración documental.** Mantener **DFD, casos de uso y
> trazabilidad**; integrar la versión maestra; **exponer los modelos y su balanceo**.

Eso es más que los tres diagramas que presentás. **Te pueden preguntar por cuatro secciones:**

| Sección | Contenido | ¿La presentás? |
|---|---|---|
| **4. Escenarios y casos de uso** | 5 escenarios, diagrama UML, CU-01 a CU-06 formales | No (diapositiva 7), pero **respondés por ella** |
| **5. Modelo de flujo de datos** | Niveles 0, 1 y 2, diccionario, balanceo, estados | Sí (diapositivas 9–14) |
| **6. Matriz de trazabilidad** | RF → CU → proceso → almacén → componente F2-4 | Sí, en tu cierre |
| Integración de la versión maestra | Coherencia entre secciones | Si preguntan por contradicciones, son tuyas |

> **Esto es lo más importante de esta hoja:** aunque la diapositiva 7 la presente otro, **los casos
> de uso son tu responsabilidad documental**. Si el panel pregunta por un flujo alternativo de CU-03,
> te mira a vos.

---

## 2 · ⚠️ Arreglá esto ANTES de presentar

**Las figuras del PowerPoint no son las del documento.**

En el PPT los almacenes están dibujados como **cilindros**. En el documento v1.4, sección 5, ustedes
escribieron textualmente:

> «La notación utilizada es la indicada en clase: entidad externa como cuadro, proceso como círculo
> numerado, **almacén como dos líneas paralelas abiertas** y flujo como flecha rotulada.
> **No se utilizan rombos, cilindros ni rectángulos redondeados.**»

Y las figuras del documento **sí** usan la notación correcta. O sea: el PPT tiene una versión vieja
de los diagramas y contradice, a la vista, lo que afirma el documento entregado.

**Solución (5 minutos):** reemplazá las imágenes de las diapositivas 10, 12 y 14 por las del
documento. Te las dejé extraídas en `figuras_correctas/`:

| Diapositiva | Archivo |
|---|---|
| 10 | `DFD_Nivel0_CORRECTO.png` |
| 12 | `DFD_Nivel1_CORRECTO.png` |
| 14 | `DFD_Nivel2_CORRECTO.png` |

Son las mismas figuras que ya están en el documento, así que no hay riesgo de inconsistencia.
**Si no llegás a cambiarlas**, la respuesta es: *«Tiene razón, la notación correcta es dos líneas
paralelas abiertas; la figura del documento está bien y en la diapositiva quedó una versión vieja.»*
No lo defiendas.

---

## 3 · Preguntas sobre el DFD

| Pregunta | Respuesta |
|---|---|
| «¿Por qué el nivel 0 tiene una sola burbuja?» | Es la definición del diagrama de contexto: representa el sistema como un todo, y sólo interesa qué cruza la frontera. |
| «¿Por qué el Docente es la única entidad externa?» | Es el único actor operativo del MVP. El portal para estudiantes quedó fuera del alcance. Si entrara, aparecería **en el nivel 0 primero**. |
| «¿Por qué explotaron sólo el 3.0?» | Por el lineamiento de **mejorar una burbuja a la vez**, y porque el 3.0 concentra la validación (RNF-03) y la auditoría (RNF-04). |
| «¿El DFD muestra el orden de ejecución?» | No. Muestra flujo de datos, no secuencia; por eso tampoco tiene rombos. Para la secuencia iría un diagrama de actividades. |
| «En el nivel 1 repiten Docente y D5. ¿No es un error?» | No: la figura lo aclara al pie. Son **la misma entidad y el mismo almacén**, repetidos sólo para evitar cruces de líneas. Es práctica habitual en DFD. |
| «¿Por qué el 5.0 no recibe datos del docente?» | Porque el cálculo no consume datos nuevos: **los lee de los almacenes** (criterios de D2, calificaciones de D3, asistencias de D4). Lo único que recibe del docente es la solicitud. |
| «¿Dónde está el respaldo del RNF-01 en el DFD?» | No está modelado como proceso: es una política de operación, no una transformación de datos del negocio. Para F2-4 hay que decidir si se modela como componente. **Reconocelo, no lo inventes.** |

---

## 4 · Preguntas sobre casos de uso *(también tuyas)*

| Pregunta | Respuesta |
|---|---|
| «¿Por qué todos los CU tienen al Docente como actor principal y ningún actor secundario?» | Porque el MVP tiene un solo actor operativo. Está declarado en los seis: *«ninguno dentro del alcance actual»*. |
| «Muéstrenme un flujo alternativo que valga la pena.» | **CU-02, alternativa 4a**: si la regla institucional no está confirmada, el curso queda **pendiente de validación y no calcula resultados finales**. Es el que protege contra calcular con una regla no autorizada. |
| «¿Qué pasa si falta un dato al calcular?» | **CU-05, alternativa 4a**: identifica al estudiante y el dato faltante. Y la postcondición de fracaso es explícita: *«no se publica un resultado incompleto o inconsistente»*. |
| «¿Cómo se relacionan los CU con el DFD?» | Uno a uno: **CU-01↔1.0, CU-02↔2.0, CU-03↔3.0, CU-04↔4.0, CU-05↔5.0, CU-06↔6.0**. Está en la matriz de trazabilidad. |
| «¿Caso de uso y DFD no son lo mismo?» | No: son **dos vistas del mismo modelo de requerimientos**. El CU es el enfoque orientado a escenarios (cómo interactúa el actor); el DFD es el estructurado (qué pasa con los datos). |

---

## 5 · Preguntas sobre balanceo y trazabilidad

| Pregunta | Respuesta |
|---|---|
| «¿Cómo verificaron el balanceo?» | Con la tabla 5.5: cada flujo del nivel 0, su origen y destino, en qué proceso del nivel 1 reaparece y, si aplica, en cuál del nivel 2. **Ningún flujo aparece de la nada ni se pierde.** |
| «En el nivel 2 hay un flujo “Error de validación” que no está en el nivel 0.» | Es una **parte constitutiva** de «Confirmaciones y validaciones», que en el nivel 0 agrupa el OK y el rechazo. Una flecha puede representar un objeto de datos o una jerarquía de ellos. La tabla 5.5 lo documenta. |
| «¿Para qué sirve la matriz de trazabilidad?» | Para que **ninguna decisión de arquitectura quede sin requisito de origen**. Por eso la columna «Componente F2-4» está visible y vacía: se llena en la próxima entrega. |
| «¿De dónde sale el RF-03?» | De los hallazgos **H-02, H-03, H-07 y el conflicto CF-01**; se realiza en CU-03, proceso 3.0, almacén D3. *(Si te piden otro, leé la fila: la matriz tiene las cinco columnas.)* |

---

## 6 · Los tres puntos débiles reales

Conocelos **antes** de que los encuentre el panel. En los tres, la respuesta correcta es reconocer y
proponer, no defender.

### ⚠️ A · La sección 5.6 dice que no hay entidad con ciclo de vida — y la RN-06 describe una

El documento afirma: *«no se identificó una entidad principal con un ciclo de vida comparable al de
un pedido, ticket o préstamo»*. Pero la **RN-06** dice que una ausencia justificada *«se excluye sólo
después de su aprobación; mientras tanto cuenta como ausencia»*. Eso **es** una transición de estado:
`pendiente → aprobada`. Y el CU-02 agrega otra: un curso **pendiente de validación** que no calcula.

> **Respuesta:** «Tiene razón. La justificación de ausencia y la validación del curso tienen estados,
> y no los modelamos como ciclo de vida sino como atributos. Lo que sí descartamos es que exista una
> entidad transaccional central tipo pedido. Es una revisión que nos llevamos para F2-4.»

### ⚠️ B · El CU-06 y la matriz dicen que el 6.0 lee los cinco almacenes; el DFD dibuja sólo D5

CU-06 declara *«D1, D2, D3, D4 y D5»* y la matriz dice *«D1 a D5»*, pero en el DFD de nivel 1 el único
flujo que entra al 6.0 es `resultados` desde D5. **Los tres artefactos son tuyos, así que la
inconsistencia es tuya.**

> **Respuesta:** «Es una inconsistencia nuestra. El caso de uso describe la consulta consolidada
> —que necesita nombre del estudiante, criterios y datos crudos—, y el DFD quedó con el flujo
> resumido desde D5. Lo correcto es el caso de uso: faltan los flujos de D1 a D4 hacia el 6.0.
> Lo corregimos en la próxima versión.»

**Si llegás a tiempo, arreglá el diagrama** y el problema desaparece.

### ⚠️ C · No hay ningún RNF de seguridad

Los cuatro RNF son confiabilidad, rendimiento y auditoría. La pregunta 1 de la guía pide tres entre
rendimiento, **seguridad**, disponibilidad, usabilidad y escalabilidad, y hay un rol del auditorio
dedicado a seguridad y datos. **Esto es de Pamela**, pero te lo van a preguntar a vos porque los
almacenes están en tu diagrama.

> **Respuesta:** «No tenemos un RNF de seguridad y es un hueco. Hoy la única protección modelada es
> la trazabilidad del RNF-04. Los almacenes con datos personales son **D1, D3 y D4** — rendimiento y
> ausencias de menores en Escuela y Colegio—, así que para F2-4 hace falta un RNF de control de
> acceso por rol y otro de resguardo de los respaldos del RNF-01. El marco es la **Ley N° 7593/2025
> de Protección de Datos Personales**.»

---

## 7 · Lo que NO es tuyo, y cómo derivarlo sin quedar mal

| Tema | De quién | Cómo derivar |
|---|---|---|
| Entrevista, hallazgos, conflictos, RF y RNF | **Pamela** | «Eso lo relevó Pamela, pero en el modelo se refleja así: …» y mostrá el proceso o almacén. **Nunca** digas sólo «no es mi parte». |
| Incrementos, pruebas, prototipo, versionado del repositorio | **Mauricio** | Igual: contestá el reflejo en el modelo y pasá la pelota. |
| Estilos de arquitectura, diagrama de arquitectura, RDA | **Todos, en F2-4** | «Está pendiente de F2-4; lo que ya dejamos listo es la frontera por donde vamos a separar: el motor de cálculo del 5.0 con las reglas versionadas en D2.» |

---

## 8 · Las tres frases que tenés que poder decir sin pensar

1. **«Núcleo estable arriba, reglas variables abajo.»** Procesos 1.0 a 4.0 con D1, D3 y D4 son
   núcleo; D2 y el 5.0 son lo que cambia cuando cambia un reglamento.
2. **«D2 guarda versiones de regla y D5 guarda con qué versión se calculó cada resultado.»**
   Un cambio de reglamento no reescribe el histórico.
3. **«Ningún flujo aparece de la nada ni se pierde.»** Es el criterio de balanceo, y está verificado
   en la tabla 5.5.
