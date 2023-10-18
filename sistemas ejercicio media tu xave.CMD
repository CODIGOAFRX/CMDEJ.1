@echo off

echo Con cuantos numeros vas a hacer la media?
set /p num=
set /a contador= 0 
set /a acumula= 0

if %num% lss 2 (goto error) else (goto continua)
:continua
set /a contador=%contador%+1
set /p n1= Dime el numero %contador% :
set /a acumula= %acumula%+%n1% 
if %contador% lss %num% (goto continua) else (goto calculo)
:calculo
cls

set /a resultado = %acumula%/%num%
echo ------------------------
echo  el resultado es %resultado%
echo ------------------------
pause
echo has terminado
exit
:error
 echo Tenias que introducir almenos 2 numeros

