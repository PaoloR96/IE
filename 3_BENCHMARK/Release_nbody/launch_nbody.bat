

SETLOCAL EnableDelayedExpansion

:: Posiziona lo script nella stessa cartella di "NBODY.exe"
cd /d "%~dp0"
::cd C:\Users\pasch\Desktop\Release

SET SIMU=4
SET iterazioni= 30



:: Imposta il numero di ripetizioni
SET repetitions=4

:: Leggi il valore dei corpi da NBODIES.txt
for /F %%i in (NBODIES.txt) DO (
    set bodies=%%i
)

:: Leggi il valore di simulazione da SIM.txt
for /F %%i in (SIM.txt) DO (
    set simulazione=%%i
)

:: Controlla se i file di input esistono e se i valori sono numeri validi
if not defined bodies (
    echo Il file NBODIES.txt non contiene un valore numerico valido.
    goto :end
)

if not defined simulazione (
    echo Il file SIM.txt non contiene un valore numerico valido.
    goto :end
)

:: Ottieni il valore di conteggio da count.txt
for /F %%i in (count.txt) DO set count=%%i

IF %simulazione% LSS %SIMU% IF %count% LSS %iterazioni% GOTO uno
IF %simulazione% LSS %SIMU% IF %count% EQU %iterazioni% GOTO due
IF %simulazione% EQU %SIMU% GOTO tre




:uno
:: Loop per il numero di ripetizioni
for /L %%x in (1, 1, %repetitions%) do (
	NBODY.exe !bodies! >> .\Osservazioni\%simulazione%\output!count!.txt
)

:: Incrementa il valore di conteggio e sovrascrivi count.txt
SET /A count=count+1
echo !count! > count.txt

shutdown -t 5 -r -f

GOTO close

:due
:: Resetta il valore di conteggio a 0 e sovrascrivi count.txt
SET count=0
echo !count! > count.txt

:: Raddoppia il valore dei corpi e sovrascrivi NBODIES.txt
SET /A bodies=10*%bodies%
echo !bodies! > NBODIES.txt

SET /A simulazione=simulazione+1
echo !simulazione! > SIM.txt

shutdown -t 5 -r -f

GOTO close

:tre
:: Resetta il valore di conteggio a 0 e sovrascrivi count.txt
SET count=0
echo !count! > count.txt

SET bodies=50000
echo !bodies! > NBODIES.txt

SET simulazione=1
echo !simulazione! > SIM.txt

GOTO close


:end
echo errore
:close
ENDLOCAL




