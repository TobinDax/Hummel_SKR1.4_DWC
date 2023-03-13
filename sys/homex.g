; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.4.0-LPC-STM32+6 on Mon Mar 13 2023 20:12:27 GMT+0300 (Москва, стандартное время)
G91               ; relative positioning
G1 H2 Z5 F7200    ; lift Z relative to current position
G1 H1 X-245 F3000 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F7200       ; go back a few mm
G1 H1 X-245 F1200 ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-5 F7200   ; lower Z again
G90               ; absolute positioning
