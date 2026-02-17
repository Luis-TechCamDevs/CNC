# 🛠 ArtCAM CNC Example - Square & Center Drill

Este proyecto contiene un ejemplo de **archivo CNC (`.cnc`)** optimizado para ArtCAM, demostrando el uso de **posicionamiento absoluto** para cortes simples y perforaciones.  

El ejemplo principal es un **cuadrado de 50x50 mm** con una **perforación en el centro**, pensado para aprender cómo generar trayectorias CNC limpias y seguras.

---

## 📂 Contenido del repositorio

```
ArtCAM-CNC-Example/
│
├── README.md
├── ejemplo.cnc        # Archivo CNC de ejemplo
├── docs/
│   └── cnc_tips.md    # Consejos y explicaciones sobre código CNC
```

---

## 🔧 Archivo ejemplo.cnc

El archivo contiene:

- Corte de un **cuadrado de 50x50 mm**
- Perforación en el **centro del cuadrado (X25 Y25)**
- Movimientos seguros de la herramienta
- Uso de **posicionamiento absoluto (`G90`)**
- Comentarios explicativos para cada línea

---

## 📝 Código resumido del ejemplo

```text
G21                 ; Set units to mm
G90                 ; Absolute positioning
G0 Z5               ; Move to safe height
M3 S12000           ; Spindle on, 12000 rpm

(Start Cutting - Square 50x50)
G0 X0 Y0            ; Move to starting corner
G1 Z-2 F200         ; Plunge 2mm
G1 X50              ; Cut to X50 (Y stays 0)
G1 Y50              ; Cut to Y50 (X stays 50)
G1 X0               ; Cut to X0 (Y stays 50)
G1 Y0               ; Return to starting point
G0 Z5               ; Lift to safe height

(Drill Hole in Center)
G0 X25 Y25
G1 Z-5 F150
G0 Z5

M5                  ; Spindle off
G0 X0 Y0            ; Return home
M30                 ; Program end
```

---

## 🔲 Visualización del corte

Aquí un **dibujito ASCII** que representa el cuadrado y el agujero central:

```
+------------------+      <-- Cuadrado 50x50 mm
|                  |
|        •         |      <-- Agujero en el centro
|                  |
+------------------+
```

- `+` → Esquinas del cuadrado  
- `|` y `-` → Lados del cuadrado  
- `•` → Agujero central de la perforación

Esto ayuda a visualizar rápidamente el **recorrido de la herramienta**.

---

## ⚙ Explicación

- Este programa genera un **corte cuadrado** de 50x50 mm.  
- Luego hace una **perforación central** para simular un taladro o punto de referencia.  
- Se usa **posicionamiento absoluto (`G90`)** para que cada coordenada sea medida desde el origen.  
- Movimientos de corte solo indican el eje que cambia cuando el otro ya está en posición, haciendo el código más limpio.  

---

## 💡 Tip de optimización

- Con **G90 (absoluto)**, solo necesitas indicar la coordenada que cambia en cada movimiento si el otro eje permanece constante.  
- Para patrones repetitivos, puedes usar **G91 (relativo)** y simplificar cálculos de trayectoria.

---

## 🖥 Cómo usar

1. Abrir ArtCAM  
2. Importar `ejemplo.cnc` como proyecto de prueba  
3. Simular para verificar el recorrido del **cuadrado** y la **perforación**  
4. Ajustar velocidad, profundidad o herramienta según tu máquina CNC  
5. Exportar a tu CNC real si lo deseas

---

## 📌 Recomendaciones de seguridad

- Siempre simular antes de enviar a máquina real  
- Verificar altura de seguridad (`Z`)  
- Confirmar diámetro de herramienta y profundidad de corte  
- Mantener el área de trabajo limpia y sin obstrucciones  

---

## 📚 Referencias

- [Manual ArtCAM Post Processing](https://www.autodesk.com/education/free-software/artcam)  
- G-code Basics: G0, G1, G2, G3, M-codes  

---

## 👨‍💻 Autor

Proyecto creado como ejemplo educativo para aprender generación y optimización de código CNC para ArtCAM, **demostrando corte de un cuadrado con perforación central**.

---

## 📄 Licencia

MIT License — libre uso educativo y comercial.
