cls
echo off
chcp 65001

SET /A "index = 1"
SET /A "count = 3"
:while
if %index% leq %count% (

echo :'######:::::'###::::'########:'########:::::'###::::
echo '##... ##:::'## ##::: ##.....:: ##.... ##:::'## ##:::
echo  ##:::..:::'##:. ##:: ##::::::: ##:::: ##::'##:. ##::
echo . ######::'##:::. ##: ######::: ########::'##:::. ##:
echo :..... ##: #########: ##...:::: ##.. ##::: #########:
echo '##::: ##: ##.... ##: ##::::::: ##::. ##:: ##.... ##:
echo . ######:: ##:::: ##: ##::::::: ##:::. ##: ##:::: ##:
echo :......:::..:::::..::..::::::::..:::::..::..:::::..::
echo :
echo :               Execucao numero: %index%                                                               
echo :
echo  "Teste de cenario(s) de(s) teste(s) Safra Mobile."


	call cucumber -t @login2 AMBIENTE=producao --retry 2 --format html --out=report.html
	call sendemail.py
	
	#call cucumber -t @login2 AMBIENTE=Homologacao --format AllureCucumber::Formatter --out=report
	#call allure serve report

	SET /A "index = index + 1"

	timeout 10   

	goto :while
)