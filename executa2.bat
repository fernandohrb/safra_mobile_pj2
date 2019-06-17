cls
@echo off
echo .....................................................
echo :'######:::::'###::::'########:'########:::::'###::::
echo '##... ##:::'## ##::: ##.....:: ##.... ##:::'## ##:::
echo  ##:::..:::'##:. ##:: ##::::::: ##:::: ##::'##:. ##::
echo . ######::'##:::. ##: ######::: ########::'##:::. ##:
echo :..... ##: #########: ##...:::: ##.. ##::: #########:
echo '##::: ##: ##.... ##: ##::::::: ##::. ##:: ##.... ##:
echo . ######:: ##:::: ##: ##::::::: ##:::. ##: ##:::: ##:
echo :......:::..:::::..::..::::::::..:::::..::..:::::..::
echo .....................................................
echo  "Teste de cenario(s) de(s) teste(s) Safra Mobile."
timeout 2
call cucumber -t @login2 AMBIENTE=Homologacao --format html --out=report.html
timeout 2
echo "Envio do relatorio via email.”
python sendemail.py
echo "Processo de envio finalizado."
timeout 2
exit
