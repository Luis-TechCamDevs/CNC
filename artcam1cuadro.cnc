(ArtCAM CNC Post-processed Example - Optimized)
(Machine: Generic CNC)
(Units: mm)

G21                 ; Set units to mm
G90                 ; Absolute positioning
G0 Z5               ; Move to safe height
M3 S12000           ; Spindle on, 12000 rpm

(Start Cutting)
G0 X0 Y0            ; Move to start point
G1 Z-2 F200         ; Plunge 2mm at feedrate 200 mm/min
G1 X50              ; Linear cut to X50 (Y stays at 0)
G1 Y50              ; Linear cut to Y50 (X stays at 50)
G1 X0               ; Linear cut back to X0
G1 Y0               ; Return to start point
G0 Z5               ; Lift to safe height

(Drill Hole in Center)
G0 X25 Y25
G1 Z-5 F150
G0 Z5

M5                  ; Spindle off
G0 X0 Y0            ; Return home
M30                 ; Program end
