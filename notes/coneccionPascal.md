---
title: Conexión interfase Pascal-Buhler.
author: Javier Pacheco.
date: 2022-10-10
tags: []
---

\tableofcontents

# Conexión Interfase pascal a Buhler:

Tabla 1:

| Pascal                               | Color de Cable   | Buhler                 | # cable pascal     | nota           |
|--------------------------------------|------------------|------------------------|--------------------|----------------|
| Y00 Mold Change. (selector de llave) | naranja/negro    | Tarjeta 5.1 DM272A DI6 | 19                 |                |
| Y01 Mold Close Possible.             | rojo/negro       | Tarjeta 5.3 DM272A DI1 | 20                 |                |
| Y02 Mold Open Possible.              | negro/blanco     | Tarjeta 5.3 DM272A DI0 | 21                 |                |
| Y01 Mold Close Possible.             | verde            | Tarjeta 5.1 DM272A DI4 | 20                 |                |
| Y02 Mold Open Possible.              | verde/negro      | Tarjeta 5.1 DM272A DI5 | 21                 |                |
| Y06 High Preassure Error.            | blanco/negro     | Tarjeta 5.3 DM272A DI2 | 25                 |                |
| Y07 Equipment Normal.                | azul/negro       | Tarjeta 5.3 DM272A DI3 | 26                 | no se usa aun. |
| Comm (+24vdc)                        | Cable de 4 hilos | 24 VDC de la buhler    | 11, 12, 13, 17, 18 |                |

---

# Conexión interfase buhler a pascal

Tabla 2:

| Buhler                                                           | Color de cable | Pascal | # cable pascal |
|------------------------------------------------------------------|----------------|--------|----------------|
| 5.3 DM272A DO0 Operation Mode Stting (setup).                    | Negro          | X20    | 13             |
| 5.3 DM272A DO1 Die Closed                                        | Rojo           | X22    | 16             |
| 5.3 DM272A DO2 Casting Plunger in rear position (pistón en HOME) | Blanco         | X23    | 15             |
| +24vdc from Buhler                                               | rojo           | P      | 1              |
| -24vdc from buhler                                               | negro          | N      | 2              |

---

# Procedimiento de cambió de moldé.
Breve explicación de como cambiar el molde y el uso del sistema de clampeo.

**NOTA:**  No usar esta "guia" como referencia, favor de usar el documento autorizado.

1. Cerrar molde.
2. poner el selector de buhler en modo *set-up*.
3. asegurar que el piston de infección este en posición de home.
4. asegurar el molde este ganchado a la grua y tensado.
5. girar la llave a ***mold change***.
6. oprimir el boton de ***off*** en el control del sistema de clampeo.
7. retirar los clamps.
8. ya colocado el siguiente molde, setear a 0 la posición de la platina movil.
(ya que si no tiene la señal de molde cerrado los clamps no funcionaran.)
8. colocar los clamps en el molde, y revizar que el led de ***fwd*** este encendido (no parpadeando.)
9. presionar el boton de ***on***  en el control de pascal y esperar a que clampee.
10. girar la llave a ***molding***
11. abrir el molde.

A partir de aqui se continua con el proceso normal de arranque de maquina.
