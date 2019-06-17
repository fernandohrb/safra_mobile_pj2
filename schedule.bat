cls
@echo off
set hora=%time:~0,2%:%time:~3,2%
set count=15:20
set /A "execu = 0"

:loop
if %hora% neq %count% (

echo :'######:::::'###::::'########:'########:::::'###::::
echo '##... ##:::'## ##::: ##.....:: ##.... ##:::'## ##:::
echo  ##:::..:::'##:. ##:: ##::::::: ##:::: ##::'##:. ##::
echo . ######::'##:::. ##: ######::: ########::'##:::. ##:
echo :..... ##: #########: ##...:::: ##.. ##::: #########:
echo '##::: ##: ##.... ##: ##::::::: ##::. ##:: ##.... ##:
echo . ######:: ##:::: ##: ##::::::: ##:::. ##: ##:::: ##:
echo :......:::..:::::..::..::::::::..:::::..::..:::::..::
echo :
echo :               Execucao numero: %execu%                                                               
echo :
echo  "Teste de cenario(s) de(s) teste(s) Safra Mobile."


	call cucumber -t @login2 AMBIENTE=producao --retry 2 --format html --out=report.html
	

set /A "execu = execu + 1"
set hora=%time:~0,2%:%time:~3,2%
goto :loop

timeout 10

)

call sendemail.py
