@echo off

:: Criando arquivo de log
set LOGFILE=resultado_da_busca.log
echo Resultados da Busca > %LOGFILE%

:: Procurando arquivos TI.exe e Anydesk.exe em todas as unidades
echo Procurando arquivos TI.exe e Anydesk.exe... >> %LOGFILE%
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\ (
        dir /s /b %%d:\TI.exe >> %LOGFILE%
        dir /s /b %%d:\Anydesk.exe >> %LOGFILE%
    )
)

:: Procurando processos TI-WORKER.exe, Anydesk.exe e TI.exe
echo Procurando processos TI-WORKER.exe, Anydesk.exe e TI.exe... >> %LOGFILE%
tasklist | find "TiWorker.exe" >> %LOGFILE%
tasklist | find "Anydesk.exe" >> %LOGFILE%
tasklist | find "TI.exe" >> %LOGFILE%

echo Busca concluída. Verifique o arquivo %LOGFILE% para os resultados.
