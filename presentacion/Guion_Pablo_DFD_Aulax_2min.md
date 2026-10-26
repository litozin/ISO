# Guión 2 minutos — Pablo Lacasa · Modelos de flujo de datos de Aulax
### Diapositivas 9 a 14 · ~290 palabras · 1 min 58 s

> Alineado a las **preguntas guía previas a la arquitectura** y al **documento Grupo4-Aulax v1.4**.
> Tu parte responde la **pregunta 2** de la guía (qué es núcleo y qué cambia) y cierra con el puente
> a F2-4. Las diapositivas 9, 11 y 13 son carátulas: título y avanzá.

---

### Entrada · 10 s

> «Yo cierro con los modelos de flujo de datos, y los voy a usar para responder una pregunta
> concreta: **qué parte de Aulax es núcleo estable y qué parte va a cambiar**. De eso depende la
> arquitectura que viene.»

---

### Nivel 0 — diapositiva 10 · 25 s

> «**Nivel 0, o diagrama de contexto**: todo el sistema en **una sola burbuja**.
>
> Un único actor externo, el **Docente** — el portal para estudiantes quedó fuera del alcance.
> *[Señalá]* **Entran cinco flujos** y **salen dos**. Siete flechas: ése es **todo el contrato de
> Aulax con el mundo exterior**.»

---

### Nivel 1 — diapositiva 12 · 55 s ← **tu diapositiva clave**

> «**Nivel 1**: seis procesos y cinco almacenes. Y acá está la distinción que importa.
>
> *[Señalá la fila de arriba]* **Esto es núcleo estable**: los procesos 1.0 a 4.0, de gestión, con
> estudiantes, calificaciones y asistencias. Guardar una nota se hace igual en Escuela que en
> Universidad.
>
> *[Señalá D2 y el 5.0]* **Y esto es lo volátil**: el almacén **D2**, que guarda escalas, pesos y
> mínimos, y el proceso **5.0**, que los aplica. Y no es una suposición nuestra: el conflicto
> **CF-02** del relevamiento dice que **cada institución puede exigir escalas distintas**, y que
> eso lo decide la dirección académica, no el equipo.
>
> Por eso lo modelamos así: **D2 guarda versiones de regla, y D5 guarda con qué versión se calculó
> cada resultado**. Un cambio de reglamento no reescribe el histórico: genera una versión nueva.
>
> **Ésa es la frontera por donde vamos a separar componentes en la arquitectura.**»

---

### Nivel 2 — diapositiva 14 · 25 s

> «**Nivel 2**: abrimos **sólo el 3.0**, porque es donde están las reglas y la trazabilidad.
>
> El **3.1 valida** contra la escala del nivel **antes de registrar** — el **RNF-03**. El **3.2
> registra** y el **3.3 confirma**, y ese paso es lo que sostiene el **RNF-04**: usuario, fecha,
> valor anterior y valor nuevo de cada corrección.»

---

### Cierre · 15 s ← **el puente que pidió la cátedra**

> «Y esto no queda suelto: en la **matriz de trazabilidad**, cada proceso del DFD ya tiene su fila
> con una columna **“Componente F2-4”** todavía vacía. La dejamos visible a propósito, para que
> **ninguna decisión de arquitectura quede sin un requisito de origen**.
>
> **Muchas gracias.**»

---

## Preparación por rol del auditorio

### 🏗️ Arquitecto/a — *«¿qué consecuencias tiene para el diseño?»*

| Pregunta | Respuesta |
|---|---|
| «¿Qué componentes separarían?» | «El **motor de cálculo (5.0)** como componente propio, con las reglas versionadas en D2. La gestión 1.0–4.0 puede ser un CRUD estable. Agregar un nivel educativo tiene que ser **cargar una versión de regla**, no recompilar.» |
| **«En 5.6 pusieron que no hay entidad con ciclo de vida. ¿Y la asistencia justificada?»** | ⚠️ **Es el punto más atacable del documento.** La RN-06 dice que una ausencia justificada *«se excluye sólo después de su aprobación; mientras tanto cuenta como ausencia»* — eso **es** una transición de estado. Respuesta honesta: «Tiene razón, la justificación tiene al menos dos estados, pendiente y aprobada. Lo tratamos como atributo y no como ciclo de vida del negocio, pero es una revisión que nos llevamos para F2-4.» **No lo niegues.** |
| «¿Por qué explotaron sólo el 3.0?» | «Por el lineamiento de **mejorar una burbuja a la vez**, y porque el 3.0 concentra validación y auditoría.» |
| «¿El DFD muestra orden de ejecución?» | «No: flujo de datos, no secuencia. Para la secuencia iría un diagrama de actividades.» |

### 🔒 Especialista en seguridad y datos

| Pregunta | Respuesta |
|---|---|
| «¿Qué almacenes tienen datos personales?» | «**D1** identificatorios, **D3** calificaciones y **D4** asistencias. Los dos últimos son rendimiento y ausencias de **menores** en Escuela y Colegio: es el peor escenario de filtración del sistema.» |
| **«¿Dónde está su RNF de seguridad?»** | ⚠️ **No tienen ninguno.** Los cuatro RNF son confiabilidad, rendimiento y auditoría. Respuesta: «No lo tenemos, y es un hueco. Hoy la única protección modelada es la trazabilidad del RNF-04. Para F2-4 hace falta un RNF de control de acceso por rol y uno de resguardo de los respaldos del RNF-01.» |
| «¿Marco normativo?» | «La **Ley N° 7593/2025 de Protección de Datos Personales**, que crea la Agencia Nacional bajo el MITIC y está en período de adecuación hasta fines de 2027.» |

### 🧑‍💼 Cliente

| Pregunta | Respuesta |
|---|---|
| «¿Por qué el docente es el único que entra?» | «Porque el pedido de la entrevista fue centralizar **su** gestión. El portal para estudiantes quedó fuera del MVP; si entrara, aparecería como entidad externa **en el nivel 0 primero**.» |
| «¿Dónde veo que el cálculo respeta mi reglamento?» | «En D2: escalas, pesos y mínimos son **datos versionados**, no código. Y D5 guarda con qué versión se calculó cada resultado, así que siempre se puede explicar un número viejo.» |

### ⚠️ La observación de notación

| «Los almacenes son cilindros, no dos líneas paralelas.» | «Tiene razón: en Pressman el almacén va con **dos líneas con los costados abiertos**; el cilindro es de base de datos. Lo corregimos.» **No lo defiendas.** |
|---|---|

---

## Ajustes en vivo

**Si te sobran 15 s:** «Los procesos 1.0 a 6.0 se corresponden uno a uno con los casos de uso CU-01 a CU-06.»

**Si te falta tiempo, cortá en este orden:** ① la cita de CF-02 · ② el ejemplo «guardar una nota se hace igual en Escuela que en Universidad» · ③ el detalle del 3.2 y 3.3, dejando sólo «valida antes de registrar y deja traza».

**Nunca cortes:** la distinción núcleo / volátil del nivel 1 (es la pregunta 2 de la guía) ni el cierre de la matriz de trazabilidad (es el puente a F2-4).

> La Ley 7593/2025 la verifiqué en fuentes secundarias, no en la Gaceta Oficial. Para decirla en voz
> alta alcanza; si va por escrito, confirmá número y fecha en el texto oficial.
