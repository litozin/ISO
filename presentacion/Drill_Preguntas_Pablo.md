# Drill de preguntas — Pablo Lacasa
### Para practicar en voz alta. Tapá la columna derecha.

Ordenado por probabilidad. Las ⚠️ son las que pueden doler.

---

## BLOQUE 1 · Las cinco más probables

| # | Pregunta | Respuesta (2 frases máximo) |
|---|---|---|
| 1 | ⚠️ **«¿Esto lo validaron con una docente real?»** | «No. El relevamiento se hizo con un **cliente simulado con IA**, y lo declaramos: el **P-03** de nuestros pendientes dice textualmente *“confirmar con una docente real que trabaje en más de un nivel”*. Está marcado como pendiente **antes de la defensa**.» *(Confirmá con Pamela si ya se hizo. Si se hizo, cambiá la respuesta y decí qué cambió.)* |
| 2 | **«¿Qué parte de su modelo es estable y cuál va a cambiar?»** | «Núcleo estable: procesos 1.0 a 4.0 con D1, D3 y D4. Volátil: **D2**, que guarda escalas, pesos y mínimos, y el **5.0**, que los aplica. Por eso D2 guarda **versiones de regla** y D5 guarda **con qué versión se calculó** cada resultado.» |
| 3 | **«¿Por qué explotaron sólo el 3.0?»** | «Por el lineamiento de mejorar **una burbuja a la vez**, y porque el 3.0 concentra la validación (RNF-03) y la auditoría (RNF-04).» |
| 4 | **«¿Cómo verificaron el balanceo?»** | «Con la tabla 5.5: cada flujo del nivel 0, su origen y destino, y en qué proceso del nivel 1 y del nivel 2 reaparece. Ningún flujo aparece de la nada ni se pierde.» |
| 5 | **«¿Para qué sirve la matriz de trazabilidad?»** | «Para que ninguna decisión de arquitectura quede sin requisito de origen. La columna *Componente F2-4* está visible y vacía: se llena en la próxima entrega.» |

---

## BLOQUE 2 · Sobre el cálculo y las reglas

| # | Pregunta | Respuesta |
|---|---|---|
| 6 | ⚠️ **«Para un alumno de escuela, ¿el sistema me dice si aprobó?»** | «No, y es deliberado. Devuelve **la nota calculada pero no el estado académico**, porque la nota mínima de aprobación es el **P-01**, pendiente de la dirección académica. Nuestro alcance dice que el sistema **aplica** reglas provistas por la institución, **no define políticas educativas**.» |
| 7 | **«¿Y en universidad sí?»** | «Sí: la RN-05 fija 60 puntos y 70 % de asistencia, que vinieron del relevamiento (H-04). Ahí la política existe.» |
| 8 | **«Demuéstrenme que el cálculo está bien pensado.»** | «Tenemos la tabla 3.4 con cuatro casos límite. El mejor: **59,99 puntos con 90 % de asistencia da No aprobado**, porque no se redondea antes de comparar. Y colegio con 78 % de asistencia da nota 4 pero requisito de asistencia no cumplido.» |
| 9 | **«¿Por qué redondean una sola vez al final?»** | «RN-04: dos decimales en los intermedios y un único redondeo final. Redondear en cada paso acumula error y cambia el resultado.» |
| 10 | **«¿Qué pasa si la institución no confirmó la regla?»** | «CU-02, alternativa 4a: el curso queda **pendiente de validación y no calcula resultados finales**. Preferimos no calcular antes que calcular con una regla no autorizada.» |

---

## BLOQUE 3 · Sobre el DFD

| # | Pregunta | Respuesta |
|---|---|---|
| 11 | **«¿Por qué una sola burbuja en el nivel 0?»** | «Es la definición del diagrama de contexto: el sistema como un todo. Sólo interesa qué cruza la frontera.» |
| 12 | **«¿Por qué el Docente es la única entidad externa?»** | «Es el único actor operativo del MVP. El portal de estudiantes y familias quedó fuera. Si entrara, aparecería **en el nivel 0 primero**.» |
| 13 | **«Repiten Docente y D5 en el nivel 1.»** | «Sí, y está aclarado al pie de la figura: misma entidad y mismo almacén, repetidos sólo para evitar cruces de líneas.» |
| 14 | **«En el nivel 2 hay un “Error de validación” que no está en el nivel 0.»** | «Es una parte constitutiva de *Confirmaciones y validaciones*, que en el nivel 0 agrupa el OK y el rechazo. La tabla 5.5 lo documenta.» |
| 15 | **«¿El DFD muestra el orden de ejecución?»** | «No: flujo de datos, no secuencia. Por eso tampoco lleva rombos. Para la secuencia iría un diagrama de actividades.» |
| 16 | **«¿Dónde está el respaldo diario del RNF-01 en el DFD?»** | «No está: es una política de operación, no una transformación de datos del negocio. Para F2-4 hay que decidir si se modela como componente.» |
| 17 | ⚠️ **«Los almacenes son cilindros.»** | «Tiene razón. La notación correcta es **dos líneas paralelas abiertas**; la figura del documento está bien y en la diapositiva quedó una versión vieja.» **(Mejor: cambialas antes.)** |

---

## BLOQUE 4 · Sobre casos de uso *(también tuyos)*

| # | Pregunta | Respuesta |
|---|---|---|
| 18 | **«¿Cómo se relacionan casos de uso y DFD?»** | «Uno a uno: CU-01↔1.0 hasta CU-06↔6.0. Son dos vistas del mismo modelo: el CU es orientado a escenarios, el DFD es estructurado.» |
| 19 | **«Denme un flujo alternativo que importe.»** | «CU-02 4a: curso con regla no confirmada no calcula. Y CU-05 4a: si falta un dato, identifica al estudiante y el dato faltante, y no publica resultado incompleto.» |
| 20 | **«¿Por qué ningún caso de uso tiene actores secundarios?»** | «Porque el MVP tiene un solo actor operativo. Está declarado en los seis: *ninguno dentro del alcance actual*.» |
| 21 | ⚠️ **«CU-06 dice que lee los cinco almacenes, pero el DFD sólo dibuja D5.»** | «Es una inconsistencia nuestra. El correcto es el caso de uso: la consulta consolidada necesita nombre, criterios y datos crudos. Al DFD le faltan los flujos de D1 a D4 hacia el 6.0.» |

---

## BLOQUE 5 · Las preguntas de la guía que te pueden tocar

| # | Pregunta | Respuesta |
|---|---|---|
| 22 | **«Si incorporaran IA hoy, ¿dónde encajaría en su modelo?»** | «En el producto, **en ningún lado**, porque no hay requisito documentado que la sostenga, y agregarla sería tecnología por moda. Donde sí la usamos es **en el proceso**: cliente simulado para el relevamiento y revisión de consistencia entre artefactos, y está registrado en la sección 7 con qué herramienta y cómo tratamos cada resultado.» |
| 23 | **«¿Cuál es la decisión que más les costaría defender?»** | *(Decisión de equipo — ver más abajo.)* |
| 24 | **«¿Dónde hay datos personales?»** | «D1 identificatorios, **D3 calificaciones y D4 asistencias**: rendimiento y ausencias de **menores** en escuela y colegio. Es el peor escenario de filtración del sistema.» |
| 25 | ⚠️ **«¿Y su RNF de seguridad?»** | «No lo tenemos, y es un hueco. Hoy la única protección modelada es la trazabilidad del RNF-04. Para F2-4 hace falta control de acceso por rol y resguardo de los respaldos. Marco: **Ley N° 7593/2025**.» |

---

## La pregunta 5 de la guía: elijan una antes de entrar

La profe avisó que **esa decisión es la que el panel va a cuestionar**. Tienen cuatro candidatas, y no
dan lo mismo:

| Candidata | ¿Conviene elegirla? |
|---|---|
| **No fijar la nota mínima de escuela y colegio (P-01)** | ✅ **La mejor.** Es defendible **por principio**: el alcance dice que el sistema aplica reglas provistas por la institución y no define políticas educativas; el CF-02 dice que **decide la dirección académica, no el equipo**. Y se apoya en bibliografía: separar hechos del dominio de preferencias, y no asumir en lugar de preguntar. Tiene costo visible —el sistema no da estado académico en 2 de 3 niveles— y aun así se sostiene. |
| Relevar con cliente simulado y no con docente real (P-03) | ⚠️ Es una limitación, no una decisión fundamentada. Si la elegís, estás ofreciendo tu punto más débil sin defensa. |
| Dejar fuera el portal de estudiantes | Débil: es una decisión de alcance obvia y nadie la va a discutir. No luce. |
| No tener RNF de seguridad | ❌ No es una decisión, es un olvido. No la presentes como elección. |

**Recomendación:** elijan **P-01** y preparen el argumento entre los tres. Que lo diga Pamela
(requisitos) y vos lo sostenés mostrando que el modelo ya está preparado: D2 guarda versiones de
regla, así que cuando la dirección fije el mínimo **se carga como una versión nueva, sin tocar código
ni perder el histórico**.

---

## Protocolo para cuando no sepas

1. **No inventes.** El documento tiene «pendiente» escrito en varios lugares a propósito; usarlo es válido.
2. **Fórmula de tres partes:** reconocer → explicar por qué quedó así → decir dónde se resuelve.
   *«No lo tenemos modelado. Quedó así porque X. Lo corregimos en F2-4 / está declarado como pendiente P-0n.»*
3. **Si es de otro, contestá el reflejo en el modelo y pasá la pelota:**
   *«Eso lo relevó Pamela; en el modelo se refleja en el proceso 2.0 y el almacén D2.»* Nunca sólo «no es mi parte».
4. **Si te corrigen y tienen razón, aceptá en una frase y seguí.** Discutir una corrección correcta cuesta más que el error.

---

## Un dato que te conviene usar a favor

En la sección 2.6 ustedes escribieron que **retiraron** decisiones como «estructura enlazada» o «base
local» del modelo de requisitos, porque Pressman distingue modelo de requisitos de modelo de diseño,
y las difirieron a la sección 8.

Eso es **exactamente** la regla de «no convertir el análisis en un diseño encubierto», y es tu
sección. Si el arquitecto pregunta por qué no hay decisiones técnicas en el modelado, esa es la
respuesta — y es un punto a favor, no una carencia.
