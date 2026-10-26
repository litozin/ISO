# Guión 2 minutos — Pablo Lacasa · Los tres DFD de Aulax

**Diapositivas 9 a 14 · ~285 palabras · 1 min 55 s a ritmo tranquilo**

> Las diapositivas 9, 11 y 13 (las de bullets) son **carátulas**: decí el título y avanzá enseguida.
> Hablás sobre las diapositivas 10, 12 y 14, que son los diagramas.

---

### Entrada · 8 s

> «Yo cierro con el modelo de flujo de datos: **cómo se mueven los datos adentro de Aulax**, en tres niveles.»

---

### Nivel 0 — diapositiva 10 · 30 s

> «**Nivel 0, o diagrama de contexto**: todo el sistema en **una sola burbuja**.
>
> Un único actor externo, el **Docente** — porque el portal para estudiantes quedó fuera del alcance.
>
> *[Señalá las flechas]* **Entran cinco flujos**: estudiantes, cursos y criterios, calificaciones,
> asistencias y solicitudes de cálculo. **Salen dos**: confirmaciones y puntajes.
>
> Siete flechas. Ése es **todo el contrato de Aulax con el mundo exterior**.»

---

### Nivel 1 — diapositiva 12 · 45 s

> «**Nivel 1**: la burbuja se abre en **seis procesos y cinco almacenes**.
>
> *[Señalá la fila de arriba]* Los cuatro de arriba son de **gestión**, uno por cada entrada:
> registran o consultan en su almacén y devuelven confirmaciones.
>
> *[Bajá al 5.0]* Abajo está lo importante. El **5.0, Calcular resultados**, no recibe datos del
> docente: **los lee de los almacenes** y aplica la regla del nivel educativo. Y el **6.0** devuelve
> el seguimiento.
>
> Que el cálculo esté **separado**, y no adentro de la carga de notas, es **la decisión clave**:
> permite cambiar la regla de la Universidad sin tocar el registro de calificaciones.
>
> Y los siete flujos del nivel 0 están todos acá: **se mantiene la continuidad**.»

---

### Nivel 2 — diapositiva 14 · 30 s

> «**Nivel 2**: abrimos **sólo el proceso 3.0**, calificaciones, porque es donde están las reglas.
>
> El **3.1 valida** contra la escala del nivel **antes de registrar**: un 4,5 sirve en Escuela y no
> en Universidad. Si no pasa, lo rechaza. Ése es el **RNF-03**.
>
> El **3.2 registra** y el **3.3 confirma**. Ese último paso es lo que hace posible la **auditoría
> del RNF-04**.»

---

### Cierre · 10 s

> «Los tres niveles son **la misma historia con distinto zoom**: la frontera, los procesos, y el
> detalle donde está la lógica crítica.
>
> **Muchas gracias.**»

---

## Si te sobran 15 segundos, agregá UNA sola de estas

- «Los procesos 1.0 a 6.0 se corresponden uno a uno con los casos de uso CU-01 a CU-06.»
- «Separar el cálculo es lo que permite construirlo aparte en el incremento 3.»

## Si te falta tiempo, cortá en este orden

1. La frase de continuidad del nivel 1.
2. El ejemplo del 4,5 en el nivel 2.
3. La enumeración de los cinco flujos del nivel 0 → reemplazá por «entran cinco flujos y salen dos».

---

## Preguntas probables (respuestas de una línea)

| Pregunta | Respuesta |
|---|---|
| **«Los almacenes son cilindros, no dos líneas paralelas.»** | «Tiene razón: la notación de Pressman es dos líneas con los costados abiertos, el cilindro es de base de datos. Lo corregimos.» **No lo defiendas.** |
| **«¿Por qué explotaron sólo el 3.0?»** | «Por el lineamiento de mejorar una burbuja a la vez, y porque el 3.0 es donde están las validaciones y la trazabilidad.» |
| **«En el nivel 2 aparece "Error de validación" y en el nivel 0 no está.»** | «Es una parte constitutiva de "Confirmaciones y validaciones": en el nivel 0 ese flujo agrupa el OK y el rechazo.» |
| **«¿El DFD muestra el orden de ejecución?»** | «No: muestra flujo de datos, no secuencia. Para la secuencia iría un diagrama de actividades.» |
| **«El 5.0 no lee D1 Estudiantes.»** | «Llega al estudiante vía D3 y D4, que ya lo referencian. Si el cálculo necesitara un atributo propio, agregaríamos ese flujo.» |

> El guión largo, con el recorrido completo y más preguntas preparadas, quedó en
> `Guion_Pablo_DFD_Aulax_EXTENDIDO.md` — sirve para estudiar, no para presentar.
