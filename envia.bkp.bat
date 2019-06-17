echo off                                                   
chcp 65001                                                 
                                                           
SET /A "index = 1"                                         
SET /A "count = 99999"                                     
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
                                                           
        rem START cucumber -t @login2 AMBIENTE=Homologacao --format html --out=report.html
		rem START python sendemail.py
        rem call cucumber -t @heatmap AMBIENTE=producao    
        rem call cucumber -t @login2 AMBIENTE=homologacao   
                                                           
        rem call cucumber -t @heatmap AMBIENTE=producao    
                                                           
        call cucumber -t @teste2 AMBIENTE=homologacao       
                                                           
        SET /A "index = index + 1"                         
                                                           
        timeout 60 