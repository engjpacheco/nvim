
#  TODO [#A] How to add a new model to the laser markers in /Diecast/
In this document I'll explain how to add a model to the laser markers.
This pretended to be a "step by step guide to the new users.


All of this addings and modification requires a medium level of knowledge in /PLC/, more spesific in AllenBradley __/Micrologix1400/__ series,
because of the status of the actual plc memory, and the how those laser were programmed and the models that are already /programmed/ those
procesors dont have enough memory, so you need to be careful when you add /timers/, /strings/, etc.

# NOTE: this is not my method, is the method that AMM uses# 


#  Ladder: /MODELOS/
##  Add the program # number# .
# Rung 25
- That is going to be in the HMI and the lasermarker moudule, __this need to be consecutive of the last model.__
- This is going to be in the /MOV/ instruction.
# Set the Fixture Bit. 
- In the rung: /BINARY/ lives the bits for each fixture depends of the family of the fixture is the one that you should use, if there is not a bit to use you need to create one depending of the binary of the fixture. 
##  Set the /Bit/ model.
- Add the /OTE/ bit for set the current model (see picture below adress is: /B3:15/9/).
##  Set the /Bit/ for _incorrect_ fixture.
- Add the /OTE/ of /Incorrect fixture/ (see picture below adress is: /B3:66/10/)
##  Add the timers.
- Those are going to be necesary on the /STATELOGIC/ ladder to reset the laser module. 
- # note: Be carefull# with the addresing of those timers# 

#  Ladder: /FAULTS/
##  Set the Incorrect Model Alarm.
# Rung 12# 
- Add the /B3:61/13/ bit as /OR/ to set the: Alarma Modelo Incorrecto /OTL./ 



##  Set the Incorrect Fixture Alarm.
# Rung 13# 
- Add the /B3:66/10/ bit as /OR/ to set the: Alarma Fixture Incorrecto /OTL./ 



#  Ladder: /MANIT/
##  MANIT Response.
- Add the string of the /MANIT/ Response string to the /ST10/ varibles, this need to be consequtive to the last. # NOTE: This String is case sensitive to the response of MANIT, this need to _MATCH_.# 
- In this example the last modified string was /ST10:33/ so the next string to append is the /ST10:34/. 
##  Extract the MANIT String Serial.
# Rung 0# 
- Add the /B3:15/9/ bit as /OR/ to the /AEX/ instruction. 
#+attr_html: :width  90%
# Rung 1# 
- Add the /ASR/ instrucition to compare /ST10:3/ whit /ST10:34/. # /AND/#  the /XIC/ /RESPUESTA CORRECTA FIXTURE <MODEL>/ to set the /Setup Done From MANIT/ bit.
##  Set the length of the serial string data.
# Rung 4# 
- In this rung you need to set the length of the serial that correspond to the models, in the newest models the laser will print 22 digits and in the older versions only 16 digits.

##  Clean the MANIT Strings.
# Rung 7# 
- Add the /B3:15/9/ bit as /OR/ to clean all the /MANIT/ strings. 



#  Ladder: /STATLOGIC/
##  Set the /Correct Response & Incorrect code Alarm/ 
# Rung 57
- Add the next /OTL/ and /OTE/ and /TIMER/ as the structure showed in the below picture:
  - /OTL B3:61/7/: ALARMA CODIGO INCORRECTO /<MODELO>/.
  - /OTE B3:71/7/: RESPUESTA CORRECTA /<MODELO>/.
  - Add the timer. # NOTE: Be carefull with this timer adress# 
##  Reset logic.
# Rung 58# 
- Append the /OTU/ address /B3:61/7/ to this rung.



#  Ladder: /OUTPUTS/
##  Add the binary to /CALL/ the lasermarker program.
# This modification begins in the rung 10# 

This is the most confusing rung of the entire modification that you will do, because of the /lack/ of structure in the program, you'll see this in a moment.

Depending of the number of the model that you add in the first step in this guide ( in this example is the number 23), you need to conver it to a binary to set the output to the lasermarker module.

| O:2/4 | O:2/3 | O:2/2 | O:2/1 | O:2/0 | Decimal value                |
|-------+-------+-------+-------+-------+------------------------------|
|     0 |     0 |     0 |     0 |     1 | this is a 1 in decimal       |
|     0 |     0 |     0 |     1 |     0 | This is a 2 in decimal       |
|     0 |     0 |     0 |     1 |     1 | This is a 3 in decimal       |
|     0 |     0 |     1 |     0 |     0 | This is a 4 in decimal       |
|     1 |     0 |     1 |     1 |     1 | The 23 value in this example |

So as you see in the table above, you need to append the bit of the model selected, in this example was the bit: /B3:15/9/ in every rung that correxpond in the bynary convertion.
##  Add the timers to reset and set the /Laser READY/.
# Rung 20# 
- In this rung you need to append the /XIC & XIO/ of the timers that we have programmed in the first step [[Ladder: /MODELOS/][Modelos]].



#  HMI: /Delta DopSoft Software/
##  Add the model to the /Models list/.
- Here you need to add the number of the model in the [[Ladder: /MODELOS/][Modelos]] step.

##  Add the Model name to the Main screen.
 Here tou simply add the name of the model and number like the past [[Add the model to the /Models list/.][step]].




#  LaserMarker: /Panasonic/
##  Add the serial image to the laser module.
- In this step you need to add the logo and serial of the model that you are going to program, again, is the sa decimal number that you put in the /PLC/ program. You can copy from another file and modify the position to make it easy.
