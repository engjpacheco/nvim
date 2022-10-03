---
title: Interface Pascal-Buhler
author: Javier Pacheco
---

# Interface Pascal - Buhler:
En esta seccion se muestra como esta establecida la conexion de señales que
interactuan entre pascal  y buhler:

# Conexion:
| Pascal                               | Color de Cable             | Buhler                 | # cable pascal     |
|--------------------------------------|----------------------------|------------------------|--------------------|
| Y00 Mold Change. (selector de llave) | Naranja                    | Tarjeta 5.1 DM272A DI6 | 19                 |
| Y01 Mold Close Possible.             | Negro/Blanco               | Tarjeta 5.3 DM272A DI1 | 20                 |
| Y02 Mold Open Possible.              | Rojo/Negro                 | Tarjeta 5.3 DM272A DI0 | 21                 |
| Y01 Mold Close Possible.             | Negro/Blanco               | Tarjeta 5.1 DM272A DI4 | 20                 |
| Y02 Mold Open Possible.              | Verde y Rojo/Negro         | Tarjeta 5.1 DM272A DI5 | 21                 |
| Y06 High Preassure Error.            | Verde/Negro y Blanco/Negro | Tarjeta 5.3 DM272A DI2 | 25                 |
| Y07 Equipment Normal.                |                            | Tarjeta 5.3 DM272A DI3 | 26                 |
| Comm (+24vdc)                        | Cable de 4 hilos           | 24 VDC de la buhler    | 11, 12, 13, 17, 18 |

---

| Buhler                                                           | Color de cable | Pascal | # cable pascal |
|------------------------------------------------------------------|----------------|--------|----------------|
| 5.3 DM272A DO0 Operation Mode Stting (setup).                    | Negro          | X20    | 13             |
| 5.3 DM272A DO1 Die Closed                                        | Rojo           | X22    | 15             |
| 5.3 DM272A DO2 Casting Plunger in rear position (piston en HOME) | Blanco         | X23    | 16             |

 
