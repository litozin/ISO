# ISO1 (Ecom-82) — Resumen de estudio · Bloques 1 a 4

> Síntesis de todo el material de la carpeta (Clases 1 a 7). Es lo que entra en el Examen Parcial.
> Fuentes de la cátedra: Pressman (2010, 7ª ed.), Sommerville (2011), Alonso Amo et al. (2005), Orjuela Duarte & Rojas (2008), Tinoco Gómez et al. (2010), Winters & Manshreck (2022).

---

## Mapa del programa

| Bloque | Unidades | Contenido |
|---|---|---|
| 1 | U1–U2 | Fundamentos: naturaleza del software, proceso, modelos prescriptivos |
| 2 | U3–U4 | Agilidad y principios |
| 3 | U5–U6 | Ingeniería y análisis de requerimientos |
| 4 | U7 | Modelado de requerimientos (DFD y patrones) |
| 5 | U8–U9 | Diseño y arquitectura *(no entra en el Parcial)* |
| 6 | U10–U11 | Componentes, interfaz e integración *(no entra)* |

**Ponderación de la materia:** Parcial 20 · Trabajos en Clase 20 · TPI 20 · Final 40 = 100.

---

# BLOQUE 1 — Fundamentos

## U1 · La naturaleza del software

**El software NO es el código.** Es un producto compuesto por tres elementos:

1. **Programas ejecutables** — las instrucciones que la máquina corre.
2. **Estructuras de datos** — la información que esos programas crean, leen y transforman.
3. **Documentación asociada** — manuales, diagramas, decisiones de diseño registradas, guías de instalación y uso.

> Sin el tercer elemento el software se vuelve frágil: funciona hoy, pero nadie puede explicar por qué, ni modificarlo con seguridad mañana. **La documentación no es un accesorio: es parte constitutiva del producto.**

**Software heredado (legacy):** sistemas que siguen en producción —muchas veces sosteniendo procesos críticos— construidos con tecnologías, criterios o documentación de otra época. Mantenerlos y hacerlos evolucionar sin romper lo que funciona es una de las tareas más frecuentes y más subestimadas de la profesión.

**Dominios de aplicación:**
- Sistemas de información (gestión administrativa, académica, financiera)
- Sistemas embebidos (firmware, IoT)
- Aplicaciones web (**webapps**)
- Aplicaciones móviles
- Sistemas con inteligencia artificial — el de más rápido crecimiento

**Las webapps como dominio aparte** (4 rasgos propios):
- **Evolución continua:** se actualiza varias veces por semana sin que el usuario instale nada.
- **Distribuida y sin estado:** cada solicitud es independiente; sostener una sesión es una *decisión de diseño*, no algo automático.
- **Estética y usabilidad como requisito funcional:** la interfaz es, para buena parte del usuario, la totalidad de su experiencia.
- **Exposición y seguridad:** accesible públicamente por diseño ⇒ mayor superficie de ataque.

> **Idea clave:** el dominio de aplicación condiciona qué riesgos importan más. No hay una única "forma correcta" de hacer ingeniería de software.

## U2 · Ingeniería de Software, proceso y modelos

**Definición formal:** aplicación de un enfoque **sistemático, disciplinado y cuantificable** al desarrollo, la operación y el mantenimiento del software — y el estudio de esos enfoques.

> Programar = escribir instrucciones que funcionen una vez.
> Hacer ingeniería = que funcionen de manera sostenida, sean mantenibles, y que el conocimiento **no dependa de una sola persona**.

### Las 5 actividades genéricas (marco de trabajo / framework)

| Actividad | Qué es |
|---|---|
| **Comunicación** | Entender el problema real y a quién le pertenece, antes de tocar una línea de código |
| **Planeación** | Trazar el mapa del trabajo: tareas, riesgos, recursos, cronograma |
| **Modelado** | Construir representaciones (requisitos, diseño) para razonar antes de construir |
| **Construcción** | Generar el código y verificarlo con pruebas |
| **Despliegue** | Entregar, recoger retroalimentación real del usuario y ajustar |

⚠️ **No son "pasos" que se hacen una sola vez y en ese orden estricto:** reaparecen, con distinta intensidad, en *cualquier* modelo de proceso, secuencial o iterativo.

### La esencia de la práctica

1. **Comprender el problema** antes de proponer una solución (¿quién lo tiene? ¿qué datos y funciones? ¿puede representarse más simple?)
2. **Planear una solución** — adaptar patrones conocidos en lugar de reinventar.
3. **Ejecutar el plan** — diseño y código deben poder **rastrearse hasta los requisitos** que les dieron origen.
4. **Examinar el resultado con sentido crítico** — probar cada incremento, estar dispuesto a revisar las propias decisiones.

> **Principio general:** *el software de calidad reduce el costo de mantenerlo.* Un sistema sin documentación o con decisiones no justificadas no es "más rápido de entregar hoy": es una deuda que alguien va a pagar mañana.

### Modelos de proceso prescriptivos

| Modelo | Cómo organiza las actividades | Cuándo conviene |
|---|---|---|
| **Cascada** | Lineal y secuencial; cada actividad se completa antes de iniciar la siguiente | Requisitos **estables y bien comprendidos** desde el inicio. Rígido frente al cambio |
| **Incremental** | Combina lo lineal y lo iterativo: un primer incremento funcional, luego incrementos sucesivos | Hace falta poner **algo funcional** en manos del usuario pronto |
| **Evolutivo** | Versiones cada vez más completas, incorporando retroalimentación del cliente en cada vuelta | **No es posible definir todos los requisitos** por adelantado |
| **Concurrente** | Las actividades son **estados en paralelo** (en desarrollo, en espera de cambios, en revisión, terminada) | Distintas partes del sistema avanzan a **ritmos diferentes** |

También: **patrones de proceso** (soluciones probadas a problemas recurrentes de organización del trabajo) y **evaluación y mejora del proceso** (revisar después de cada proyecto qué funcionó).

> Un equipo que nunca evalúa su propio proceso tiende a repetir los mismos errores proyecto tras proyecto.
> **Ningún modelo es "el correcto" en abstracto:** depende de la estabilidad de los requisitos, la criticidad del sistema y cuánto puede esperar el usuario.

### El rompecabezas (no confundir niveles)

| Nivel | Pregunta que responde | Ejemplo |
|---|---|---|
| Modelos de proceso | ¿Cómo organizamos el proyecto en el tiempo? | Cascada, Scrum |
| Paradigmas | ¿Cómo pensamos la lógica del código? | Orientado a objetos |
| Lenguajes | ¿Con qué herramienta lo escribimos? | Python, Java |

---

# BLOQUE 2 — Agilidad y principios

## U3 · La agilidad del proceso

**Qué NO es la agilidad:** ausencia de proceso, ni "trabajar más rápido sin documentar".
**Qué es:** la capacidad de un equipo de **responder eficazmente al cambio**, manteniendo el foco en la **entrega continua de valor** al cliente.

### El costo del cambio
- **Prescriptivo:** el costo de modificar un requerimiento **crece exponencialmente** cuanto más avanzado está el proyecto (un cambio en prueba es mucho más caro que en análisis).
- **Ágil:** iteraciones cortas + entregas frecuentes + retroalimentación constante **aplanan la curva**.
- ⚠️ No es que el cambio "no cueste" en ágil: es que el proceso está diseñado para que ese costo se mantenga **bajo y estable**.

### Manifiesto Ágil (2001) — los 4 valores

| Se valora más… | …que |
|---|---|
| Individuos e interacciones | procesos y herramientas |
| Software funcionando | documentación extensiva |
| Colaboración con el cliente | negociación contractual |
| Respuesta ante el cambio | seguir un plan |

⚠️ **El manifiesto NO descarta** los elementos de la derecha: reconoce que tienen valor, pero **prioriza los de la izquierda cuando hay que decidir**.

### Política del desarrollo ágil
Iteraciones cortas con entregables reales · participación constante del cliente · equipos pequeños y multidisciplinarios · simplicidad como estrategia de diseño · disposición a redefinir el rumbo entre iteraciones.

### Factores humanos (la agilidad depende más de las personas que de las herramientas)
Competencia técnica y de comunicación · **autoridad** para decidir sobre el propio trabajo · **confianza** mutua (equipo y cliente) · capacidad de **autoorganización**.

### XP — Programación Extrema

**5 valores:** Comunicación · Simplicidad · Retroalimentación · Coraje · Respeto.

**Prácticas del proceso XP** (⚠️ *un valor NO es una práctica* — pregunta típica de examen):
planning game · entregas pequeñas y frecuentes · diseño simple · pruebas continuas (test-first) · refactorización constante · **programación en pares** · integración continua · propiedad colectiva del código · ritmo sostenible · **cliente in situ**.

**XP industrial:** pocas organizaciones adoptan XP "puro"; combinan algunas prácticas (CI, pruebas automatizadas, pares) con otros marcos.
**Debate XP:** ¿viable a gran escala o con equipos distribuidos? ¿qué pasa si el cliente no puede estar disponible permanentemente?

**Caso real — Chrysler C3 (Kent Beck, 1996-1999):** proyecto de nómina atrasado años con enfoque tradicional; Beck reescribió el proceso con pares, pruebas continuas, integración frecuente y entregas cortas. Ese conjunto sistematizado **es el origen de XP**.

### DAS — Desarrollo Adaptativo de Software (Jim Highsmith)
Tres fases: **Especulación** (planificación adaptativa, no predictiva) → **Colaboración** (desarrollo concurrente con fuerte comunicación) → **Aprendizaje** (revisión de calidad, del proceso y del trabajo, para retroalimentar el ciclo siguiente).
Énfasis en la **colaboración humana y el aprendizaje**, más que en prácticas técnicas fijas.

### Scrum

| Categoría | Elementos |
|---|---|
| **Roles** | Product Owner · Scrum Master · Equipo de desarrollo |
| **Eventos** | Sprint · Sprint Planning · Daily Scrum · Sprint Review · Sprint Retrospective |
| **Artefactos** | Product Backlog · Sprint Backlog · Incremento |

| Elemento | Para qué sirve |
|---|---|
| Product Owner | Voz del cliente; define y **prioriza** el Product Backlog |
| Scrum Master | Facilita, elimina obstáculos, vela por el marco |
| Equipo de desarrollo | Autoorganizado y multidisciplinario; construye el incremento |
| Sprint | Ciclo de duración fija (2–4 semanas) que produce un incremento |
| Sprint Planning | Qué se hará y cómo, al inicio del sprint |
| Daily Scrum | Sincronización diaria breve (~15 min) |
| Sprint Review | Revisión del incremento con retroalimentación de los interesados |
| Sprint Retrospective | Reflexión sobre el **propio proceso**, para mejorar el siguiente sprint |
| Product Backlog | Lista priorizada y **viva** de todo lo que el producto podría necesitar |
| Sprint Backlog | Subconjunto seleccionado para el sprint en curso |

**Caso real — FBI Sentinel (2006-2012):** las primeras fases en cascada, tercerizadas, acumularon años de retraso y cientos de millones de sobrecosto. En 2010 el FBI internalizó el desarrollo y pasó a Scrum con sprints cortos; el resto se completó en ~1 año, a una fracción del costo restante estimado. Citado por GAO y el SEI de Carnegie Mellon.

### Cuadro comparativo (clave para justificar la elección de proceso)

| Criterio | Prescriptivo | Ágil |
|---|---|---|
| Fases | Secuenciales y predefinidas | Iterativas y superpuestas, ciclos cortos |
| Costos | Predecibles al inicio; cambios tardíos costosos | Costo del cambio bajo y estable en cualquier momento |
| Documentación | Extensa y formal | Mínima e imprescindible; prima el software funcionando |
| Comunicación | Formal, por documentos y revisiones planificadas | Informal, cara a cara, continua |
| Calendarización | Detallada y de largo plazo | Adaptativa, por iteraciones (sprints) |
| Seguridad / control | Alta previsibilidad, control por hitos | Alta respuesta al cambio; control por inspección y adaptación |

**Criterios para elegir:** estabilidad de los requerimientos · disponibilidad del cliente para retroalimentación continua · tamaño y experiencia del equipo · criticidad y exigencia regulatoria de documentación formal.

## U4 · Conocimiento en Ingeniería del Software (principios)

> Los principios **no reemplazan** a los procesos ni a los frameworks: son el **criterio** que permite usarlos bien, adaptarlos o cuestionarlos cuando no encajan con la realidad del proyecto.

### Dos niveles

**4.2 Principios fundamentales**
- **Que guían el PROCESO** (cómo se organiza y conduce el trabajo a lo largo del ciclo de vida): ser ágil (el proceso se adapta a la gente y al proyecto, no al revés) · centrarse en la calidad en **cada paso**, no al final · ser flexible para decidir de forma **pragmática, no dogmática**, frente a un framework.
- **Que guían la PRÁCTICA** (decisiones técnicas y profesionales diarias): entender el problema antes de construir · planear un enfoque aunque el plan deba ajustarse · revisar el trabajo en busca de errores y **aprender de los propios errores**.

**4.3 Principios de cada actividad estructural**

| Actividad | Principios |
|---|---|
| **Comunicación** | Escuchar antes de hablar · prepararse antes de comunicarse · facilitar que el interlocutor **participe activamente** |
| **Planeación** | No apresurarse a definir solución sin comprender el alcance · planear es un proceso **continuo**, no un evento único · definir riesgos y planes de contingencia desde el inicio |
| **Modelado** | El modelo existe para **facilitar la comprensión**, no para producir documentación por sí misma · debe poder **evaluarse contra criterios de calidad** · no agregar complejidad innecesaria |
| **Construcción** | Elegir el lenguaje adecuado al problema y al equipo, no el que está de moda · aplicar buenas prácticas **antes** de probar · revisiones de código y pruebas **sistemáticas**, no solo cuando algo falla |
| **Despliegue** | **Gestionar las expectativas** del cliente · entregar un paquete de instrucciones completo **antes**, no tras un reclamo · soporte continuo: el proyecto no termina en la entrega |

Frases-gancho de la presentación: *"Escuchar antes de hablar" · "No huir de la planeación" · "El modelo no es la realidad; construirlo para entender, no para archivar" · "Adaptar el enfoque de construcción al producto y al equipo" · "Gestionar expectativas; proveer soporte antes y después de la entrega".*

---

# BLOQUE 3 — Ingeniería de Requerimientos

## U5 · Ingeniería de Requisitos

> Antes de preguntar **QUÉ** construir, hay que saber **A QUIÉN** escuchar y **CÓMO** escucharlo.

La IR establece una base sólida para el diseño y la construcción. Vive dentro de la actividad genérica **Comunicación** y alimenta todo lo que sigue.

### Las 6 etapas de la Ingeniería de Requisitos
1. **Inicio / Elicitación** — clientes e interesados
2. **Análisis y negociación** — resolver conflictos
3. **Especificación** — documentos y herramientas
4. **Modelado del sistema** — notación UML
5. **Validación** — ¿cumple lo que se necesita?
6. **Gestión** — administrar cambios en el tiempo

**Sinónimos de la etapa 1 (ojo en el examen):** Elicitación = Indagación / Recabación (Pressman) = Obtención de requisitos (Sommerville) = Relevamiento (práctica profesional).

### 5.1 · Identificación de los participantes (stakeholders)

**Definición:** cualquier persona o grupo que tiene un **interés directo o indirecto** en el éxito del sistema — y que por lo tanto tiene algo que **aportar o que perder** según cómo se lo construya.

**Los 6 tipos (hay que saberlos de memoria):**

| # | Tipo | Quiénes son |
|---|---|---|
| 1 | **Clientes** | Quienes solicitan y pagan por el sistema |
| 2 | **Usuarios finales** | Quienes interactúan directamente con el software |
| 3 | **Gerentes / directivos** | Definen prioridades, presupuesto y alcance |
| 4 | **Ingenieros de software** | Traducen necesidades en soluciones técnicas |
| 5 | **Marketing / negocio** | Aportan visión de mercado y de producto |
| 6 | **Proveedores / terceros** | Sistemas, APIs o servicios con los que se integra |

> Un mismo proyecto puede tener participantes con intereses opuestos — **eso no es un problema a evitar, es el punto de partida real de todo relevamiento.**

### 5.2 · Múltiples puntos de vista

| Riesgo de NO gestionarlo | Trabajar hacia la colaboración |
|---|---|
| Requisitos contradictorios que nadie detecta a tiempo | Reconocer explícitamente los distintos puntos de vista, **no promediarlos** |
| Un participante domina la conversación y otros quedan afuera | Buscar puntos de acuerdo como base común **antes** de negociar diferencias |
| El sistema refleja a quien gritó más fuerte, no a quien lo necesita mejor | Separar **hechos del dominio** de **preferencias personales** |
| Retrabajo costoso en etapas avanzadas | **Documentar y priorizar el conflicto, no esconderlo** |

### Preguntas libres de contexto (Pressman — 3 familias)

| Sobre el problema | Sobre el negocio | Sobre la eficacia |
|---|---|---|
| ¿Quién solicita la solución? ¿Quién más se beneficia? ¿Cómo caracterizaría un buen resultado? | ¿De qué manera afecta al negocio? ¿Existe otro camino o solución alterna ya en uso? | ¿Está autorizado a establecer prioridades? ¿Cómo se usará día a día? ¿Hay algún requisito especial no mencionado aún? |

### 5.3 · Indagación: recabación colaborativa — 6 reglas de la reunión
1. Participan **tanto desarrolladores como clientes/usuarios**
2. Se preparan **reglas** antes de empezar
3. Agenda **flexible**, no rígida
4. Se nombra un **facilitador** que conduce **sin imponer soluciones**
5. Se usa un **mecanismo de definición** visible para todos (pizarra, tarjetas, notas)
6. El objetivo: identificar el problema, proponer elementos de solución, negociar enfoques y esbozar requisitos preliminares **en un clima de colaboración**

### QFD — Despliegue de la Función de Calidad
Traduce necesidades del cliente en requisitos técnicos. **Tres tipos de requerimientos:**

| Tipo | Qué es |
|---|---|
| **Normales** | Objetivos **declarados explícitamente** por el cliente |
| **Esperados** | **Implícitos** en el producto, aunque no se digan |
| **Exigentes / emocionantes** | Van **más allá de lo esperado** y generan satisfacción |

### Escenarios de uso
Describen en **lenguaje natural** cómo una persona concreta interactúa con el sistema para lograr un objetivo. Es el **primer borrador** de lo que luego será un caso de uso formal (Bloque 4).
Se analizan en 4 partes: **actor · objetivo · contexto · restricción implícita**.

*Ejemplo:* «Como docente coordinadora, quiero registrar la asistencia semanal desde el celular, en menos de dos minutos, para no perder tiempo de clase completando planillas en papel.»
→ Actor: docente coordinadora · Objetivo: registrar asistencia rápido · Contexto: durante la clase, desde el celular · Restricción implícita: tiempo < 2 minutos.

### Evidencia (productos de trabajo) de la indagación — los 6 artefactos
1. Enunciado de **necesidad y alcance**
2. Lista de **participantes** involucrados (quiénes y con qué rol)
3. Descripción del **entorno técnico** (restricciones tecnológicas)
4. Lista de **requerimientos**, agrupados **por afinidad**
5. **Escenarios de uso** preliminares
6. **Prototipos o bocetos**, si existen

### Requisitos funcionales vs. no funcionales

| Funcionales — **QUÉ hace** | No funcionales — **CÓMO debe ser** |
|---|---|
| Características, funciones e interacciones concretas | **Restricciones** sobre la solución |
| "El administrador puede crear cuentas" | Sistema operativo y plataforma objetivo |
| "El usuario puede consultar su historial" | Rendimiento / tiempo de respuesta |
| Servicios o tareas realizadas por usuarios | Lenguaje de programación, arquitectura cliente-servidor |
| **Reportes** que el sistema debe generar | **Seguridad**, e interfaz (mobile / PC) |

### Errores frecuentes al relevar (4)
- ❌ **Asumir en lugar de preguntar** ("seguro quiere algo parecido al sistema anterior")
- ❌ **Hablar solo con un participante** → el sistema refleja una sola mirada
- ❌ **Confundir solución con requisito** ("quiero un botón azul" es una solución; el requisito real puede ser "necesito distinguir la acción urgente")
- ❌ **No dejar registro escrito** → cada participante recuerda una versión distinta

## U6 · Análisis de Requerimientos

**Puente U5 → U6:** la U5 deja requerimientos en lenguaje natural, todavía dispersos. La U6 los **organiza y modela**: resultado = un **modelo de requerimientos** con base para diseñar.

### 6.1 · Reglas prácticas del análisis
- Centrarse en los requerimientos **visibles dentro del dominio del problema**; nivel de abstracción **relativamente alto**
- El nivel de abstracción se incrementa **gradualmente** para reducir complejidad
- Enfocarse en **lo que debe hacerse, no en cómo** — las consideraciones de implementación se **posponen**; el modelo **NO debe convertirse en un diseño encubierto**
- **Minimizar el acoplamiento** en todo el sistema
- Cada elemento debe **añadir a la comprensión colectiva** del requerimiento
- Los modelos deben ser útiles **a todos los interesados**, no solo al analista
- **Minimizar listas exhaustivas**; en su lugar mostrar **relaciones entre objetos**
- El modelo debe evolucionar con la **mínima cantidad de sorpresas**

### 6.1.1 · Análisis del dominio
Identificación, análisis y especificación de los **requerimientos (clases de objetos y operaciones) comunes a un dominio de aplicación**, para **reutilizarlos** en múltiples proyectos de ese dominio.

Dominio de estudio en clase: **mesa de ayuda IT**. Conceptos que se repiten en *cualquier* sistema de ese dominio:
**Ticket** (nº único, categoría, prioridad, estado) · **Actor técnico** (captura, valida, analiza, resuelve o escala) · **Actor usuario** (inicia por portal, chat, correo o teléfono) · **SLA** (reglas de negocio: tiempos de respuesta y resolución) · **Escalamiento** (L1 → L2 → L3).

> La mayoría de los sistemas de información empresarial (ERP, CRM, tickets, reservas) comparten la lógica **"entidad + estado + flujo + reglas de negocio"**.

### 6.1.2 · Dos enfoques de modelado

| Análisis estructurado | Análisis orientado a escenarios |
|---|---|
| Datos y procesos que los transforman como **entidades separadas** | Describe **cómo el actor interactúa** con el sistema |
| Se apoya en **DFD** (U7) | Se apoya en **casos de uso** (U6) |

### 6.2 · Casos de uso

> **"Un caso de uso es un contrato para el comportamiento."** — Alistair Cockburn

- Define cómo un **actor** (persona **o dispositivo**) usa el sistema para alcanzar un objetivo.
- ⚠️ Un **actor no es una persona específica, es el ROL** que desempeña. Una misma persona puede ser dos actores distintos.
- Se describe en lenguaje claro, desde el punto de vista de un actor definido.

**La evolución en 3 etapas (pregunta clásica):**

| Etapa | Qué contiene |
|---|---|
| **6.2.1 Preliminar** | Lista de funciones/actividades del actor **en el orden en que ocurren**. Sin excepciones ni atributos de datos. Se construye con lo recabado en U5 |
| **6.2.2 Mejorado** | Se **agrega detalle**: atributos de datos reales, condiciones de excepción, responsabilidades precisas. Ej.: "el técnico crea un ticket" → "crea un ticket **asignándole categoría, prioridad y estado inicial 'abierto'**" |
| **6.2.3 Formal** | El nivel más completo y estructurado (plantilla abajo) |

**Plantilla del caso de uso FORMAL:**
1. **Nombre** del caso de uso
2. **Actor(es) principal(es) y secundario(s)**
3. **Objetivo en contexto**
4. **Precondiciones** (qué debe cumplirse antes de iniciar)
5. **Disparador** (qué lo dispara)
6. **Flujo básico** (secuencia normal, numerada)
7. **Flujos alternos / excepciones**
8. **Postcondiciones** (estado del sistema al finalizar con éxito)

**Ejemplo de referencia — CasaSegura AVC-MVC (Pressman, p. 136):** "Acceder a la vigilancia con cámaras por internet, mostrar vistas de cámaras". Actor principal: Propietario. Objetivo en contexto: ver la salida de las cámaras desde una ubicación remota. Precondiciones: sistema configurado por completo, identificación y claves válidas. Disparador: el propietario decide ver el interior mientras está fuera. Escenario: 11 pasos numerados. Excepciones: ej. cámara no disponible.
⚠️ **A ese ejemplo del libro le FALTA un campo que la cátedra sí pide: las postcondiciones explícitas.**

### 6.3 · Modelos UML que acompañan el caso de uso

| Diagrama | Qué representa |
|---|---|
| **De casos de uso** | Notación UML ya vista en Análisis de Sistemas (3er curso) |
| **De actividades** | Flujo de trabajo de una función: secuencia de acciones y decisiones. Un flujograma es, en esencia, un diagrama de actividades |
| **De canal (swimlane)** | Variante del de actividades que **separa el flujo en carriles por actor/rol**. Útil cuando participan varios roles (usuario, técnico L1, técnico L2) |

### La IA en el análisis — mirada crítica
- ¿La IA **reemplaza** un paso del caso de uso o solo lo **asiste**? (la categorización automática no elimina la validación humana: la acelera)
- ¿Qué **nuevas excepciones** aparecen? (¿y si la IA clasifica mal un ticket crítico?)
- **La IA es una herramienta configurada dentro del flujo, nunca un actor autónomo que sustituye el criterio profesional.**

---

# BLOQUE 4 — Modelado de Requerimientos (U7)

## 7.1 · Modelado orientado al flujo: el DFD

> **"El propósito de los diagramas de flujo de datos es proveer un puente semántico entre los usuarios y los desarrolladores de sistemas."** — Kenneth Kozar

**Punto de vista entrada–proceso–salida:** los objetos de datos **entran**, son **transformados** por elementos de procesamiento, y los objetos resultantes **salen**.

⚠️ **DFD ≠ diagrama de flujo de algoritmo.** El DFD **no** dice "primero esto, después aquello" — dice "estos datos entran, se transforman y salen". **No hay rombos de decisión ni secuencia temporal explícita.**
⚠️ El DFD **no es parte formal de UML**, pero lo complementa y amplía la perspectiva del flujo.

### Los 4 elementos de la notación (Pressman / Yourdon-DeMarco)

| Elemento | Símbolo | Qué es |
|---|---|---|
| **Entidad externa** | **Cuadro / rectángulo** | Produce o consume datos; está **fuera de la frontera del sistema** |
| **Proceso** | **Círculo o burbuja** — ⚠️ **nunca un rectángulo** | Transforma datos de entrada en datos de salida |
| **Almacén de datos** | **Dos líneas paralelas, sin cerrar los costados** | Guarda datos entre procesos |
| **Flujo de datos** | **Flecha etiquetada** | Qué dato se mueve y hacia dónde |

### Jerarquía por niveles
- **Nivel 0 = diagrama de contexto:** el sistema entero como **UNA sola burbuja**. Solo interesa qué cruza la frontera.
- **Nivel 1:** esa burbuja se descompone en varios procesos; aparecen los almacenes.
- **Nivel 2+:** una burbuja del nivel anterior **"explosiona"** en burbujas más específicas.

### Los 6 lineamientos de Pressman para elaborar un DFD
1. El **Nivel 0 debe ilustrar el sistema como una sola burbuja**
2. Anotar con cuidado las **entradas y salidas principales**
3. La mejora comienza **aislando procesos candidatos, objetos de datos y almacenamientos** para el siguiente nivel
4. **Todas las flechas y burbujas deben etiquetarse** con nombres significativos
5. Debe mantenerse la **CONTINUIDAD DEL FLUJO DE INFORMACIÓN entre niveles**
6. Debe mejorarse **una burbuja a la vez** — evitar demasiado detalle demasiado pronto

### 7.2.1 · Técnica del análisis gramatical
Aislar, en la **narración de requerimientos**:
- **VERBOS → burbujas / procesos** (configurar, vigilar, interactuar, registrar, validar…)
- **SUSTANTIVOS → entidades externas, flujos de datos o almacenes**, *según el rol que cumplan en la oración*

### Continuidad del flujo (ejemplo CasaSegura, Figs. 7.1 a 7.3)
- Nivel 0: "Estado del sensor" entra desde la entidad *Sensores* a la única burbuja.
- Nivel 1: ese **mismo flujo** es la entrada de la burbuja "Vigilar sensores" — **no aparece de la nada**.
- Nivel 2: "Vigilar sensores" explosiona en 5 burbujas y "Estado del sensor" vuelve a aparecer como entrada de "Leer sensores".
> **Esa trazabilidad de nivel a nivel es lo que se evalúa.**

## 7.3 · Patrones para el modelado de requerimientos

**Patrón de análisis:** describe una característica o función específica del software, representable con un conjunto coherente de casos de uso, colaboraciones o modelos de flujo.
**Estructura típica:** nombre · intento (qué problema resuelve) · motivación · restricciones · aplicabilidad · estructura general.
Reconocer patrones **acelera el análisis**: no se parte de cero, se adapta una solución probada. Conecta directo con el análisis del dominio (U6).

| Patrón | En qué consiste |
|---|---|
| **Rol / Actor** | El mismo dato de una persona cumple **distintos roles** según un atributo (nivel, jerarquía, permiso). Evita modelar un actor nuevo por cada rol: se modela **UNO con un atributo de nivel**. Frecuente en sistemas con **escalamiento o niveles de aprobación** (soporte, trámites, compras) |
| **Transacción / Ciclo de vida** | Una **entidad central atraviesa estados** (creado → en curso → cerrado): una orden, un pedido, un expediente. Sugiere modelar el almacén con un campo **ESTADO** y las **transiciones válidas**. Se repite en e-commerce, logística, mesas de ayuda, trámites |

---

## Checklist de 20 cosas que hay que poder decir de memoria

1. Los 3 componentes del software.
2. Qué es software heredado y por qué importa.
3. Los 5 dominios de aplicación + los 4 rasgos de las webapps.
4. La definición formal de Ingeniería de Software (sistemático, disciplinado, cuantificable).
5. Las 5 actividades genéricas, en orden, y que NO son pasos fijos.
6. Los 4 modelos prescriptivos y **cuándo** conviene cada uno.
7. Que la agilidad no es ausencia de proceso, y cómo se comporta el costo del cambio.
8. Los 4 valores del Manifiesto Ágil y que **no descarta** la derecha.
9. Los 5 valores de XP vs. las prácticas de XP (¡no confundir!).
10. Las 3 fases del DAS.
11. Roles / eventos / artefactos de Scrum y qué problema resuelve cada uno.
12. Principios de proceso vs. principios de práctica (U4).
13. Un principio de cada actividad estructural (comunicación, planeación, modelado, construcción, despliegue).
14. Las 6 etapas de la Ingeniería de Requisitos.
15. Los 6 tipos de participantes.
16. Los 3 tipos de requerimiento del QFD (normal / esperado / exigente).
17. Funcional vs. no funcional, con ejemplos.
18. La plantilla completa del caso de uso formal (8 campos).
19. Los 4 símbolos del DFD y los 6 lineamientos (sobre todo: 1 burbuja en nivel 0 + continuidad del flujo).
20. Los 2 patrones de modelado: Rol/Actor y Transacción/Ciclo de vida.
