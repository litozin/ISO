# Guión 2 minutos — Pablo Lacasa · Los tres DFD de Aulax
### Alineado a las preguntas guía previas a la arquitectura

**Diapositivas 9 a 14 · ~280 palabras · 1 min 55 s**

> **Lo que cambió respecto de la versión anterior:** la profe pidió que la exposición sirva de
> **puente hacia la arquitectura (F2-4)**. Su **pregunta 2** es literalmente sobre tus diagramas:
> *«¿qué partes de su modelado cambian con frecuencia y cuáles se mantienen estables? Señalen en su
> DFD los procesos y almacenes que consideran núcleo… Esa distinción es la base para decidir qué
> componentes separar.»*
> Por eso tu parte ya no describe los tres niveles: **los usa para contestar esa pregunta**.
> Las diapositivas 9, 11 y 13 son carátulas: título y avanzá.

---

### Entrada · 8 s

> «Yo cierro con el modelo de flujo de datos, y lo voy a usar para responder una pregunta concreta:
> **qué parte de Aulax es núcleo estable y qué parte va a cambiar**. De eso depende la arquitectura.»

---

### Nivel 0 — diapositiva 10 · 25 s

> «**Nivel 0, o diagrama de contexto**: todo el sistema en **una sola burbuja**.
>
> Un único actor externo, el **Docente** — el portal para estudiantes quedó fuera del alcance.
> *[Señalá]* **Entran cinco flujos** y **salen dos**. Siete flechas: ése es **todo el contrato de
> Aulax con el mundo exterior**.»

---

### Nivel 1 — diapositiva 12 · 50 s  ← **tu diapositiva clave**

> «**Nivel 1**: la burbuja se abre en **seis procesos y cinco almacenes**. Y acá está la distinción
> que importa.
>
> *[Señalá la fila de arriba]* **Esto es núcleo estable**: los procesos 1.0 a 4.0, de gestión, con
> los almacenes de estudiantes, calificaciones y asistencias. Guardar una nota se hace igual en
> Escuela que en Universidad; esa estructura no cambia.
>
> *[Señalá D2 y el 5.0]* **Y esto es lo volátil**: el almacén **D2, Cursos y criterios**, que guarda
> las escalas, los pesos y los mínimos de asistencia, y el proceso **5.0, Calcular resultados**, que
> los consume. Cada vez que una institución ajusta su reglamento, cambia **acá** y en ningún otro lado.
>
> Por eso el cálculo está en **su propio proceso** y no adentro de la carga de notas: permite cambiar
> la regla de la Universidad sin tocar el registro de calificaciones. **Ésa es la frontera por donde
> vamos a separar componentes en la arquitectura**, y las reglas van como configuración, no como código.»

---

### Nivel 2 — diapositiva 14 · 25 s

> «**Nivel 2**: abrimos **sólo el 3.0**, calificaciones, porque es donde están las reglas y la
> trazabilidad.
>
> El **3.1 valida** contra la escala del nivel **antes de registrar** — ése es el **RNF-03**. El
> **3.2 registra** y el **3.3 confirma**, y ese último paso es lo que hace posible la **auditoría
> del RNF-04**: saber quién corrigió qué y cuándo.»

---

### Cierre · 12 s

> «En resumen: **núcleo estable arriba, reglas variables abajo**. Esa línea es la que nos va a
> ordenar la arquitectura en la próxima etapa.
>
> **Muchas gracias.**»

---

## Preparación por rol del auditorio

La profe asignó tres roles. Cada uno pregunta distinto — y los tres te pueden tocar a vos.

### 🧑‍💼 Cliente — *«¿esto responde a lo que pedí?»*

| Pregunta probable | Respuesta |
|---|---|
| «¿Por qué el docente es el único que entra al sistema?» | «Porque en la entrevista el pedido fue centralizar **su** gestión. El portal para estudiantes o apoderados lo dejamos explícitamente fuera del MVP; si entrara, aparecería como entidad externa nueva **en el nivel 0 primero**.» |
| «¿Dónde veo yo que el cálculo respeta mi reglamento?» | «En D2: las escalas, los pesos y los mínimos de asistencia son **datos cargados**, no código. Usted los configura.» |

### 🔒 Especialista en seguridad y datos — *«¿qué riesgos hay?»*

| Pregunta probable | Respuesta |
|---|---|
| «¿Cuáles de sus almacenes tienen datos personales?» | «Tres: **D1 Estudiantes** (identificatorios), **D3 Calificaciones** y **D4 Asistencias**. Los dos últimos son los más delicados: son el rendimiento y las ausencias de **menores de edad** en Escuela y Colegio.» |
| «¿Quién puede consultarlos y qué pasa si se filtran?» | «Hoy el único acceso es el docente. Una filtración expone el rendimiento académico de menores, que es el peor escenario del sistema. El marco es la **Ley N° 7593/2025 de Protección de Datos Personales**, que crea la Agencia Nacional dependiente del MITIC y está en período de adecuación hasta fines de 2027.» |
| «¿Qué mitigación ya tienen modelada?» | «El **RNF-04**: histórico inalterable con usuario y fecha. El proceso **3.3** existe justamente para que toda corrección quede trazada. Lo que **todavía no** modelamos es control de acceso por rol: es una deuda que reconocemos para la arquitectura.» |

### 🏗️ Arquitecto/a — *«¿qué consecuencias tiene para el diseño?»*

| Pregunta probable | Respuesta |
|---|---|
| «¿Qué componentes separarían?» | «**El motor de cálculo (5.0) como componente propio**, con las reglas en D2 como configuración. La gestión 1.0 a 4.0 puede ser un CRUD estable. Agregar un nivel educativo tiene que ser cargar datos, no recompilar.» |
| «¿Por qué explotaron sólo el 3.0?» | «Por el lineamiento de **mejorar una burbuja a la vez**, y porque el 3.0 concentra validación y trazabilidad.» |
| «¿El DFD muestra orden de ejecución?» | «No: muestra flujo de datos, no secuencia. Para la secuencia iría un diagrama de actividades.» |

### ⚠️ La que te pueden marcar de entrada

| «Los almacenes son cilindros, no dos líneas paralelas.» | «Tiene razón: en Pressman el almacén va con **dos líneas con los costados abiertos**; el cilindro es de base de datos. Lo corregimos.» **No lo defiendas.** |
|---|---|

---

## Ajustes en vivo

**Si te sobran 15 s**, agregá UNA: «Los procesos 1.0 a 6.0 se corresponden uno a uno con los casos de uso CU-01 a CU-06.»

**Si te falta tiempo**, cortá en este orden: ① el ejemplo de «guardar una nota se hace igual en Escuela que en Universidad» · ② la frase de configuración vs. código · ③ el detalle del 3.2/3.3, dejando sólo «valida antes de registrar y deja traza».

**Nunca cortes** la distinción núcleo / volátil del nivel 1: es la respuesta a la pregunta 2 de la guía.

---

> Nota sobre la cita legal: la Ley N° 7593/2025 la verifiqué en fuentes secundarias (estudios
> jurídicos), no en la Gaceta Oficial. Para la presentación oral alcanza; si la vas a poner por
> escrito en la entrega, confirmá número y fecha en el texto oficial.
