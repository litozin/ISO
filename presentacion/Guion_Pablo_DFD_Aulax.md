# Guión de presentación — Pablo Lacasa
## Parte final: los tres DFD de Aulax (diapositivas 9 a 14)

**Rol:** Modelado e Integración · **Duración objetivo:** 5 a 6 minutos · **Cierre de la presentación**

> Cómo usar este guión: lo que está en «comillas» es para decir casi literal. Lo que está entre
> corchetes son indicaciones tuyas (señalar, pausar, nombrar a un compañero). No leas el diagrama
> entero: el público lo está viendo. Tu trabajo es decir **lo que el diagrama no dice solo**.

---

## 0 · Transición de entrada (15 s)

*[Te pasan la palabra después de los Requisitos No Funcionales.]*

> «Gracias, [nombre]. Hasta acá vimos **qué** tiene que hacer Aulax y con qué nivel de calidad.
> Lo que falta es **cómo se mueven los datos adentro**.
>
> Para eso usamos diagramas de flujo de datos. Y conviene aclarar qué responde un DFD, porque no
> es lo mismo que un caso de uso: el caso de uso dice **cómo interactúa un actor con el sistema**;
> el DFD dice **qué pasa con los datos** — de dónde entran, cómo se transforman, dónde se guardan
> y hacia dónde salen. Son tres niveles, cada uno con más detalle que el anterior.»

---

## 1 · DFD Nivel 0 — Diagrama de contexto (diapositivas 9 y 10) · ~1 min

*[Diapositiva 9: la de los dos bullets. No te detengas, es la portada del bloque.]*
*[Diapositiva 10: el diagrama completo. Acá sí, pausá y señalá.]*

> «Este es el **nivel 0**, o diagrama de contexto, y tiene una sola regla: **todo el sistema se
> representa con una única burbuja**. Acá no nos interesa qué pasa adentro de Aulax. Nos interesa
> **dónde está la frontera y qué la cruza**.
>
> *[Señalá el cuadro de la izquierda]* A la izquierda, la única entidad externa: el **Docente**.
> Es el único actor operativo del MVP, y eso es coherente con el alcance que presentó [nombre]:
> el portal para estudiantes o apoderados quedó explícitamente **fuera**.
>
> *[Recorré las flechas con el puntero, de arriba hacia abajo, sin leerlas una por una]*
> **Entran cinco flujos**: datos de estudiantes, datos de cursos y criterios, datos de calificación,
> datos de asistencia, y solicitud de cálculo o consulta.
> **Salen dos**: confirmaciones y validaciones, y puntajes y seguimiento académico.
>
> Siete flechas, todas etiquetadas. Eso es **todo el contrato de Aulax con el mundo exterior**.
>
> Y quédense con esto, porque es lo que vamos a verificar después: **estos siete flujos son los que
> tienen que reaparecer, sin excepción, en los niveles siguientes**.»

---

## 2 · DFD Nivel 1 — Procesos principales (diapositivas 11 y 12) · ~2 min

*[Diapositiva 11: portada del bloque, pasá rápido.]*
*[Diapositiva 12: el diagrama grande. Es el momento más denso de tu parte — bajá la velocidad.]*

> «Acá **explotamos la burbuja 0.0** en seis procesos, y aparecen los cinco almacenes de datos.
>
> *[Señalá la fila de arriba]* Los cuatro de arriba son los procesos de **gestión**, uno por cada
> entrada del nivel 0: el **1.0** gestiona estudiantes contra el almacén D1, el **2.0** cursos y
> criterios contra D2, el **3.0** calificaciones contra D3 y el **4.0** asistencias contra D4.
> Los cuatro tienen exactamente la misma forma: reciben el dato del docente, lo registran o
> consultan en su almacén, y le devuelven confirmaciones y validaciones.
>
> *[Bajá el puntero al 5.0]* Abajo están los dos procesos que **dan el valor**.
> El **5.0, Calcular resultados**, es el corazón de Aulax. Fíjense que **no recibe datos del
> docente**: los **lee de los almacenes** — criterios de D2, calificaciones de D3 y asistencias de
> D4 —, aplica la regla del nivel educativo que explicó [nombre] y guarda el resultado en D5.
> Y el **6.0, Consultar seguimiento**, lee D5 y le devuelve al docente los puntajes.
>
> **Y acá está la decisión de modelado más importante de todo el trabajo.**
> Que el cálculo esté en un proceso separado, el 5.0, y no metido adentro del 3.0, no es casualidad.
> Es lo que permite que **cambiar la regla de la Universidad no obligue a tocar la carga de notas**.
> Y es lo que hace posible el plan de incrementos que mostró [nombre]: el motor de cálculo se puede
> construir aparte, en el incremento 3, sin romper lo anterior.
>
> *[Último punto, dicho con calma]* **Verificación de continuidad**: los cinco flujos que entraban
> en el nivel 0 entran acá en el 1.0, el 2.0, el 3.0 y el 4.0, y la solicitud de cálculo entra en el
> 5.0 y el 6.0. Los dos que salían, salen. **Ningún flujo aparece de la nada, ninguno se pierde.**»

---

## 3 · DFD Nivel 2 — Proceso 3.0 (diapositivas 13 y 14) · ~1 min 30

*[Diapositiva 13: portada. Diapositiva 14: el diagrama, que se lee de izquierda a derecha.]*

> «Para el nivel 2 explotamos **una sola burbuja**, la 3.0, Gestionar calificaciones. Y la elegimos
> por dos razones: es donde viven **las reglas de validación**, y es donde el sistema promete
> **trazabilidad**.
>
> Se abre en tres procesos: **3.1 valida, 3.2 registra, 3.3 confirma**.
>
> *[Señalá el 3.1]* El **3.1** recibe los datos de calificación del docente, pero **no los acepta
> de entrada**: primero consulta D2 para traer **la escala y el rango aplicable**. Y esto importa,
> porque un 4,5 es una nota válida en Escuela y no significa nada en Universidad, donde la escala
> es acumulativa sobre 100 puntos. Si el dato no pasa, devuelve un **error de validación** al
> docente y el flujo se corta ahí.
> Esto es, literalmente, el **RNF-03** que mostró [nombre]: 100% de rechazo a calificaciones fuera
> de rango.
>
> *[Seguí al 3.2]* Si pasa, la **calificación válida** va al **3.2**, que da de alta o modifica en D3.
>
> *[Seguí al 3.3]* Y el 3.2 no termina ahí: manda el **registro procesado** al **3.3**, que confirma
> la operación al docente. Ese paso puede parecer decorativo, y no lo es: **es lo que materializa el
> RNF-04**, el histórico inalterable de correcciones con usuario y fecha. Sin un proceso de
> confirmación explícito, no hay dónde colgar la auditoría.»

### Aclaración que conviene hacer vos antes de que te la pregunten *(10 s, opcional pero recomendado)*

> «Un detalle: acá aparece un flujo **“Error de validación”** hacia el docente, que en el nivel 0 no
> figura con ese nombre. No es una inconsistencia. Es una de las **partes constitutivas** de
> “Confirmaciones y validaciones”, que en el nivel 0 agrupa tanto el OK como el rechazo. Pressman lo
> habilita: una flecha puede representar un objeto de datos **o una jerarquía de ellos**.»

---

## 4 · Cierre de tu parte y de la presentación (20 s)

> «Para cerrar: los tres niveles cuentan **la misma historia con distinto zoom**. El nivel 0 define
> la frontera. El nivel 1 muestra los seis procesos y los cinco almacenes. El nivel 2 abre el proceso
> donde está la lógica crítica. Y el hilo que los une es la **continuidad del flujo**: lo que entra
> arriba, entra abajo.
>
> Con esto cerramos la presentación de Aulax. **Muchas gracias.**»

*[Pasá a la diapositiva 15 y quedate parado para las preguntas.]*

---

# Preparación de preguntas

| Si te preguntan | Qué responder |
|---|---|
| **«¿Por qué los almacenes están dibujados como cilindros y no con dos líneas paralelas?»** | Es la pregunta más probable y es una observación correcta. **No inventes una justificación.** Decí: «Tiene razón. En la notación de Pressman el almacén va con **dos líneas paralelas con los costados abiertos**; el cilindro es convención de diagramas de base de datos. Lo usamos por la herramienta, pero la notación correcta es la otra y lo corregimos para la entrega.» Reconocerlo cuesta mucho menos que defenderlo. |
| **«¿Por qué explotaron solo el proceso 3.0 y no todos?»** | Por el **lineamiento 6** de Pressman: *mejorar una burbuja a la vez*, para no meter demasiado detalle demasiado pronto. Y elegimos el 3.0 porque es donde están las reglas de validación (RNF-03) y la trazabilidad (RNF-04). |
| **«¿El DFD muestra el orden en que ocurren las cosas?»** | No. El DFD **no representa secuencia temporal**: dice qué datos entran, cómo se transforman y hacia dónde salen. Por eso tampoco tiene rombos de decisión. Para la secuencia usaríamos un **diagrama de actividades**, o uno **de canal** si hubiera varios roles. |
| **«¿Por qué el Docente es la única entidad externa?»** | Porque es el único actor operativo del MVP. El portal para estudiantes o apoderados y los envíos automáticos quedaron **fuera del alcance** (diapositiva 4). Si entraran, aparecerían como entidades externas nuevas **en el nivel 0 primero**, no directamente abajo. |
| **«El 5.0 lee D2, D3 y D4, pero no D1 Estudiantes. ¿No le falta?»** | Pregunta justa. Hoy llega al estudiante **indirectamente**, porque las calificaciones y asistencias de D3 y D4 ya lo referencian. Si el cálculo necesitara un atributo propio del estudiante —por ejemplo, una condición de regularidad—, habría que agregar ese flujo desde D1. Lo dejamos anotado. |
| **«¿Qué pasa si una institución cambia su regla de cálculo?»** | Se toca **la configuración en D2 y el proceso 5.0**, nada más. Ni la carga de notas ni la de asistencias se enteran. Ésa fue justamente la razón de separar el cálculo en su propio proceso. |
| **«¿Cómo se relaciona esto con los casos de uso?»** | Son **dos vistas del mismo modelo de requerimientos**: el caso de uso es el enfoque orientado a escenarios (cómo interactúa el actor), el DFD es el enfoque estructurado (qué pasa con los datos). Los procesos 1.0 a 6.0 se corresponden con los casos de uso CU-01 a CU-06. |

---

# Recordatorios de entrega oral

- **No leas las etiquetas una por una.** Agrupá: «entran cinco flujos, salen dos». El público lee solo.
- **Señalá siempre lo que estás nombrando.** En el nivel 1 hay 6 burbujas y 5 almacenes; sin puntero se pierden.
- **El nivel 1 es el que más se te va a acelerar.** Es tu diapositiva más densa: respirá antes de empezarla.
- **Decí al menos una vez «continuidad del flujo».** Es el criterio con el que se corrige un DFD y demuestra que sabés por qué los tres niveles van juntos.
- **Enganchá con tus compañeros por nombre** («como mostró Pamela», «el incremento 3 que presentó Mauricio»). Convierte tres partes sueltas en un solo trabajo.
- **Si te quedás en blanco**, volvé a la pregunta base de cada nivel: *nivel 0, ¿qué cruza la frontera? · nivel 1, ¿qué procesos y qué almacenes? · nivel 2, ¿cómo se valida una nota?*
