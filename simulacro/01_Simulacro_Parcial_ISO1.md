# SIMULACRO · Examen Parcial ISO1 (Ecom-82) — Bloques 1 a 4

**Ingeniería del Software 1 · Universidad Columbia del Paraguay**
Simulacro de práctica — Fila S1 · **Puntaje total: 20 puntos**

| | |
|---|---|
| **Modalidad** | Individual |
| **Tiempo sugerido** | 120 minutos (Partes I y II: 40 min · Parte III: 80 min) |
| **Material permitido** | Materiales de clase, Pressman y herramientas de inteligencia artificial |
| **Estructura** | Parte I (teoría, 6 pts) · Parte II (aplicación breve, 4 pts) · Parte III (caso práctico, 10 pts) |

> **Cómo usar este simulacro:** resolvelo **completo y cronometrado, sin mirar el solucionario**. Recién después abrí `02_Solucionario_y_Rubrica.md` y autocorregite con la rúbrica. Si mirás las respuestas mientras resolvés, el simulacro no mide nada.

---

# PARTE I — Teoría (6 puntos)

## I.A · Opción múltiple (1 punto c/u — 4 puntos)
*Marcá UNA sola opción. Sin justificación.*

**1.** Según el material de la cátedra, el software está compuesto por:
- a) Código fuente y código compilado.
- b) Programas ejecutables, estructuras de datos y documentación asociada.
- c) Programas, hardware de soporte y usuarios.
- d) Requerimientos, diseño y pruebas.

**2.** Un equipo debe construir el sistema de liquidación de haberes de un ministerio. La normativa que lo rige está publicada, no cambió en ocho años y hay auditoría externa que exige documentación formal de cada decisión. ¿Qué modelo de proceso es el más adecuado y por qué?
- a) Evolutivo, porque todo software cambia con el tiempo.
- b) Concurrente, porque hay varias áreas trabajando.
- c) Cascada, porque los requisitos son estables y bien comprendidos desde el inicio.
- d) XP, porque garantiza mayor calidad de código.

**3.** ¿Cuál de las siguientes afirmaciones sobre el Manifiesto Ágil es **correcta**?
- a) El Manifiesto descarta la documentación, los contratos y la planificación.
- b) El Manifiesto establece que en un proceso ágil el cambio no tiene costo.
- c) El Manifiesto reconoce que los elementos de la derecha tienen valor, pero prioriza los de la izquierda al momento de decidir.
- d) El Manifiesto define los roles, eventos y artefactos de Scrum.

**4.** En un DFD, el símbolo de **dos líneas paralelas sin cerrar los costados** representa:
- a) Una entidad externa.
- b) Un proceso o transformación.
- c) Un flujo de datos.
- d) Un almacén de datos.

## I.B · Verdadero o Falso **con justificación** (0,5 c/u — 2 puntos)
*Una V/F sin justificación correcta vale 0.*

**5.** «Un actor de un caso de uso es siempre una persona concreta del organigrama del cliente.» ( )
**6.** «El DFD de Nivel 0 puede tener varias burbujas si el sistema es grande.» ( )
**7.** «"El sistema debe responder en menos de 3 segundos" es un requisito funcional.» ( )
**8.** «Los principios de la Ingeniería de Software reemplazan a los modelos de proceso y a los frameworks ágiles.» ( )

---

# PARTE II — Aplicación breve (4 puntos)

**9. (1 punto)** Clasificá cada uno de estos requerimientos, usando el QFD, como **normal**, **esperado** o **exigente/emocionante**. Justificá en una línea cada uno.

| | Requerimiento |
|---|---|
| a | El cliente pide expresamente: "quiero exportar el listado de socios a Excel". |
| b | El sistema no pierde los datos cargados si se corta la conexión a mitad de un formulario. |
| c | El sistema sugiere automáticamente el horario con menos congestión al agendar un turno. |

**10. (1 punto)** Para cada situación, indicá **qué principio de actividad estructural** (comunicación, planeación, modelado, construcción o despliegue) se vulneró, y enunciá el principio.

| | Situación |
|---|---|
| a | El analista llega a la reunión con el cliente sin haber leído el acta de la reunión anterior ni preparado preguntas. |
| b | El equipo entrega el sistema al cliente sin manual de uso; lo redacta recién tres semanas después, cuando el cliente reclama. |
| c | El modelo de requerimientos tiene 48 diagramas que nadie del equipo consulta, pero "quedó completo para el expediente". |

**11. (1 punto)** Una startup de 5 personas desarrolla una app de reservas para gimnasios. El dueño del gimnasio cambia de idea sobre las funcionalidades casi todas las semanas, está disponible a diario por WhatsApp, y necesita mostrar algo funcionando a sus socios en seis semanas.
Decidí entre enfoque **ágil** o **prescriptivo** y justificá con **al menos dos criterios técnicos** del cuadro comparativo de la cátedra. Nombrá además **una práctica concreta de XP o un elemento de Scrum** que ayudaría en este caso y por qué.

**12. (1 punto)** Identificá el error de relevamiento cometido en cada frase y nombralo según la clasificación de la clase (asumir en vez de preguntar / hablar solo con un participante / confundir solución con requisito / no dejar registro escrito).

| | Frase |
|---|---|
| a | "Hablé con el gerente, que me explicó todo lo que hacen los cajeros. Con eso alcanza." |
| b | "El cliente quiere un botón rojo arriba a la derecha." |
| c | "Lo charlamos en el pasillo y quedamos de acuerdo; no hizo falta minuta." |

---

# PARTE III — Caso práctico (10 puntos)

## Caso: Farmacia Social de la Municipalidad de Capiatá

La **Municipalidad de Capiatá** administra una **Farmacia Social** que entrega medicamentos gratuitos o subsidiados a personas inscriptas en el Padrón Social del municipio. Hoy las entregas se registran en un cuaderno y en un formulario de papel. La Dirección de Salud encargó el desarrollo de un **sistema de gestión de entregas de medicamentos**. En la reunión de relevamiento participaron cuatro personas.

### Lo que dijeron en la reunión

**Dra. Alicia Rojas, directora de Salud:**
> «Necesitamos trazabilidad. Toda entrega de un medicamento clasificado como *controlado* tiene que tener la autorización del médico que firmó la receta, sin excepción. Y a fin de cada mes quiero un reporte de qué medicamentos se entregaron, en qué cantidad y en qué barrios, para negociar la compra del semestre siguiente.»

**Q.F. Lorena Duarte, farmacéutica a cargo:**
> «Con todo respeto, si cada entrega tiene que esperar la confirmación de un médico, la cola se traba. Mucha gente viene a las once de la mañana con la receta en la mano y el médico está en consulta. Yo necesito poder entregar el medicamento en el momento. Lo que sí me preocupa es otra cosa: el año pasado detectamos que una misma persona retiraba el mismo tratamiento en dos sucursales dentro de la misma semana, porque nadie veía el historial del otro lado. Cuando entrego registro qué sale y a quién, y cuando la persona vuelve para el siguiente ciclo registro si completó el anterior.»

**Dr. Hugo Villalba, médico del centro de salud:**
> «A veces yo mismo retiro insumos para las jornadas de vacunación del barrio. Y cuando autorizo la entrega a un paciente, prefiero confirmarlo desde el celular y no tener que volver a firmar un papel.»

**Sra. Teresa Ayala, beneficiaria del Padrón Social:**
> «Lo peor es que nadie te avisa cuándo te toca el próximo retiro ni cuándo se te vence el carnet del padrón. Una se entera cuando llega a la ventanilla y le dicen que ya no figura.»

### Información adicional

- La condición de beneficiario debe verificarse contra el **Padrón Social Municipal**. Ese padrón lo administra la **Dirección de Acción Social**, y el nuevo sistema **solo puede consultarlo, no modificarlo**.
- La Farmacia Social recibe los medicamentos de un **proveedor mayorista contratado por licitación**, que envía cada remito en formato digital; el sistema debe poder registrar esos ingresos al stock.
- El nuevo sistema debe trabajar con la **misma información que hoy se registra en el formulario de papel FORM-FAR-04**, que se reproduce a continuación. **Leelo con atención: forma parte del caso.**

### Formulario FORM-FAR-04 (hoy se completa en papel)

```
┌──────────────────────────────────────────────────────────────────────────────┐
│ Municipalidad de Capiatá — Farmacia Social          FORM-FAR-04 · rev. 3     │
│ FORMULARIO DE ENTREGA DE MEDICAMENTOS                                        │
├──────────────────────────────────────────────────────────────────────────────┤
│ 1. DATOS DEL SOLICITANTE                                                     │
│    N.º de entrega: (lo asigna el sistema)     Nombre y apellido: __________  │
│    Tipo de solicitante:  [ ] Beneficiario   [ ] Personal de salud            │
│    N.º de cédula / legajo: ____________                                      │
│    (La condición de beneficiario se verifica en línea contra el Padrón        │
│     Social Municipal antes de registrar la entrega.)                         │
├──────────────────────────────────────────────────────────────────────────────┤
│ 2. MEDICAMENTO SOLICITADO                                                    │
│    Categoría: [ ] Crónico  [ ] Antibiótico  [ ] Insumo  [ ] Otro: ________   │
│    Clasificación: [ ] Controlado (requiere autorización médica)  [ ] Libre   │
│    Código de lote: _______  Cantidad: _______                                │
│    Fecha y hora de entrega: _______   Próximo retiro previsto: _______       │
├──────────────────────────────────────────────────────────────────────────────┤
│ 3. AUTORIZACIÓN MÉDICA  (obligatoria solo para medicamentos Controlados)     │
│    Médico autorizante: ____________   Firma / confirmación en el sistema: __ │
│    (Si el solicitante es personal de salud, no se requiere autorización.)    │
├──────────────────────────────────────────────────────────────────────────────┤
│ 4. ESTADO DE LA SOLICITUD  (lo actualiza el sistema)                         │
│    [ ] Solicitada  [ ] Autorizada  [ ] Entregada  [ ] Ciclo completado       │
│    [ ] Retiro vencido  [ ] Rechazada                                         │
│    Retiro vencido: pasó la fecha de próximo retiro sin registrarse el retiro.│
│    Rechazada: indicar el motivo en observaciones.                            │
├──────────────────────────────────────────────────────────────────────────────┤
│ 5. CONTROL DE CICLO  (completa la farmacéutica)                              │
│    Fecha y hora del retiro anterior: _______                                 │
│    Observaciones (adherencia, faltante de stock, motivo de rechazo): _______ │
│    (Si se detecta un retiro duplicado, se informa a la Dirección de Salud.)  │
└──────────────────────────────────────────────────────────────────────────────┘
```

---

## Consignas

### 1. Participantes y conflicto de requisitos (2 puntos)
- Identificá **al menos cuatro participantes** del sistema. Para cada uno indicá **de qué tipo es**, según la clasificación trabajada en clase, y **cuál es su interés principal**.
- Identificá **el conflicto de requisitos** que aparece entre los participantes. Explicá **cómo debe proceder el ingeniero de requisitos** frente a ese conflicto y **cómo lo reflejás en tu modelo mientras no esté resuelto**.

### 2. Caso de uso formal (3 puntos)
Redactá el caso de uso formal **«Registrar la entrega de un medicamento»** con la plantilla trabajada en clase: nombre, actor principal y actores secundarios, objetivo en contexto, precondiciones, disparador, flujo básico, **al menos dos flujos alternos** y postcondiciones. Usá los **estados y atributos reales** de la solicitud (los del FORM-FAR-04).

### 3. Diagrama de flujo de datos (3 puntos)
Elaborá el **DFD de Nivel 0** y el **DFD de Nivel 1** de **todo el sistema** de la Farmacia Social (no solo del registro de la entrega), con la notación trabajada en clase. Podés usar diagrams.net (draw.io), otra herramienta, o dibujar a mano y escanear con claridad.

### 4. Registro crítico del uso de IA (2 puntos)
Completá la tabla con **al menos tres decisiones**. Incluí **al menos una** en la que hayas **corregido o descartado** algo.

| N.º | Herramienta de IA utilizada | Prompt o consulta | Qué propuso la IA | Tu decisión | Fundamento |
|---|---|---|---|---|---|
| 1 | | | | Aceptada / Corregida / Descartada | Con referencia al material de clase, a Pressman o al caso |
| 2 | | | | | |
| 3 | | | | | |

*Si no usaste IA, describí tres decisiones de modelado que tomaste y por qué, con referencia al material de clase.*

---

## Autochequeo antes de "entregar"

- [ ] ¿Clasifiqué a cada participante con uno de los **6 tipos** vistos en clase (no inventé categorías)?
- [ ] ¿Expliqué qué hacer con el conflicto **sin promediarlo** y dije cómo queda **documentado y priorizado** en el modelo?
- [ ] ¿Mi caso de uso formal tiene los **8 campos** de la plantilla, incluidas las **postcondiciones**?
- [ ] ¿Mis flujos alternos son **excepciones reales del caso**, no inventos genéricos?
- [ ] ¿Mi DFD Nivel 0 tiene **una sola burbuja**?
- [ ] ¿Usé **círculos** para procesos (no rectángulos) y **dos líneas paralelas** para almacenes?
- [ ] ¿**Todas** las flechas y burbujas están **etiquetadas**?
- [ ] ¿Se mantiene la **continuidad del flujo** entre Nivel 0 y Nivel 1 (ningún dato aparece de la nada)?
- [ ] ¿Mi DFD no tiene **rombos de decisión** ni secuencia temporal (eso sería un diagrama de flujo de algoritmo)?
- [ ] ¿En el punto 4 hay al menos una decisión **Corregida o Descartada**, con fundamento citado?
