# 🔧 Soporte metálico multi-niveles CNC - Estilo Salvadoreño

Proyecto de ejemplo para fabricar un **soporte metálico para utensilios o televisores de varios niveles**, combinando **CNC para cortes precisos** y **soldadura manual tipo salvadoreña**.

---

## 📂 Contenido del repositorio

```
Soporte-Metalico-CNC/
│
├── README.md
├── cnc_cortes.cnc       # G-code de cortes de base, perfiles y repisas
├── docs/
│   └── welding_tips.md  # Técnicas de soldadura
```

---

## 🛠 Materiales sugeridos

| Componente             | Tipo de hierro / acero          | Dimensiones recomendadas |
|------------------------|-------------------------------|-------------------------|
| Base                   | Placa de hierro laminado       | 400x200 mm, 5 mm grosor |
| Perfiles verticales     | Tubo cuadrado 25x25 mm        | Altura 500 mm           |
| Repisas horizontales    | Ángulo 30x30 mm               | Largo 400 mm            |
| Refuerzos diagonales    | Placa 3 mm o tubo 20x20 mm    | Según altura            |
| Tornillería y unión     | Varilla roscada M8 o M10      | Según diseño            |
| Soldadura               | Electrodos E6013 / E7018      | Corriente 80–120 A      |

---

## 🔲 Diseño (ASCII)

Vista frontal con dos niveles:

```
╔════════════╗
║ Nivel 2    ║  ← Repisa superior
╚════════════╝
║ Nivel 1    ║  ← Repisa inferior
╚════════════╝
│          │  ← Perfiles verticales
│          │
└──────────┘
```

Vista lateral:

```
      ╔══════╗  ← Repisa superior
      ║      ║
      ║      ║
      ║      ║  ← Refuerzo diagonal opcional
      ║      ║
      ╚══════╝  ← Base
      │      │
      │      │
      └──────┘  ← Base
```

---

## 🔧 G-code de cortes CNC

Archivo `cnc_cortes.cnc` con cortes de:

- Base rectangular 400x200 mm  
- Perfiles verticales 25x25 mm  
- Repisas horizontales 400 mm  
- Posiciones exactas para soldadura posterior

```text
G21
G90
M3 S12000
G0 Z5
; Base, perfiles y repisas
...
M5
G0 X0 Y0
M30
```

---

## ⚙ Técnicas de soldadura

- **Electrodos E6013 o E7018**  
- **Puntos de soldadura en esquinas** cada 50 mm  
- **Cordón continuo** en repisas horizontales  
- **Refuerzos diagonales** para estabilidad  
- Limpiar escoria y aplicar anticorrosivo  

---

## 🖥 Uso

1. Cortar piezas con CNC siguiendo `cnc_cortes.cnc`  
2. Soldar manualmente siguiendo la estructura de niveles  
3. Limpiar y aplicar acabado anticorrosivo  
4. Instalar utensilios o TV  

---

## 📌 Recomendaciones de seguridad

- Usar careta y guantes de soldadura  
- Ventilación adecuada  
- Sujetar piezas antes de soldar  
- Evitar chispas sobre materiales inflamables  

---

## 👨‍💻 Autor

Ejemplo educativo de **soporte metálico multi-niveles**, combinando **CNC para cortes de precisión** y **soldadura estilo salvadoreña**.

---

## 📄 Licencia

MIT License — libre uso educativo y comercial.
