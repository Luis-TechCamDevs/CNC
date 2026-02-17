# 🔥 Laser Cut CNC Example - Door Plate (Circle Slot)

Este proyecto contiene un ejemplo de **archivo CNC para corte láser** de una chapa de puerta de metal, incluyendo:

- Contorno exterior de la chapa (200x400 mm)  
- Agujero para cerradura circular (radio 10 mm)  
- Agujero circular para manija (reemplaza el slot rectangular)  

El archivo está optimizado para **posicionamiento absoluto (`G90`)** y cortes de seguridad.

---

## 📂 Contenido del repositorio

```
Laser-Door-Plate-CNC/
│
├── README.md
├── door_plate_circle.cnc      # Archivo CNC de ejemplo
├── docs/
│   └── cnc_tips.md            # Consejos para corte láser de metal
```

---

## 🔲 Visualización del corte

```
Chapa de puerta 200x400 mm
+------------------------+
|                        |
|        (O)             |  <-- Agujero para cerradura
|                        |
|                        |
|                        |
|                        |
|                        |
|                      (•)  <-- Agujero circular para manija
+------------------------+
```

- `(O)` → Agujero de cerradura  
- `(•)` → Agujero circular para manija (parte derecha central)  
- Dimensiones: chapa 200x400 mm  

---

## 🔧 Archivo door_plate_circle.cnc

```text
(Laser Cut CNC Example - Door Plate)
(Machine: Generic Laser Cutter)
G21                 ; Units in mm
G90                 ; Absolute positioning
M3 S1000            ; Laser ON
G0 Z5               ; Safe height

(Start Cutting Rectangle - Door Plate)
G0 X0 Y0
G1 Z0 F100
G1 X200 F400
G1 Y400
G1 X0
G1 Y0
G0 Z5

(Cut Keyhole)
G0 X100 Y100
G1 Z0 F100
G2 X100 Y100 I0 J10  ; Circular keyhole radius 10 mm
G0 Z5

(Cut Handle Circle)
G0 X180 Y200    ; Center of circle
G1 Z0 F100
G2 X180 Y200 I0 J20  ; Circular cut, radius 20 mm
G0 Z5

M5
G0 X0 Y0
M30
```

---

## ⚙ Explicación

- **Contorno:** Corte del rectángulo principal de la chapa  
- **Keyhole:** Círculo de 10 mm de radio en X100 Y100  
- **Círculo manija:** Círculo de 20 mm de radio en X180 Y200  
- **G21:** unidades en mm  
- **G90:** posicionamiento absoluto  
- **M3 S1000:** encender láser  
- **G0 / G1 / G2:** movimientos de corte  
- **Z5:** altura de seguridad  
- **M5:** apagar láser  
- **M30:** fin del programa  

---

## 🖥 Cómo usar

1. Abrir ArtCAM o tu software CNC para corte láser  
2. Importar `door_plate_circle.cnc`  
3. Simular para verificar recorrido y posiciones  
4. Ajustar potencia y velocidad del láser según el metal  
5. Ejecutar corte real con todas las medidas de seguridad

---

## 📌 Recomendaciones de seguridad

- Usar gafas protectoras de láser  
- Mantener ventilación adecuada  
- Revisar la altura de enfoqu
