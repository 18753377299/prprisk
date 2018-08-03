@echo off
set USER=pdfb4test
set PASSWORD=pdfb4test
set ORACLE_TNS=orcl
set TEMP_FILE=.\tempsql.tmp
set SERVER_IP=11.137.136.6

echo --------重建数据库%DATABASE%开始(可能需要几分钟，请耐心等待)--------
echo SET FEED OFF;> %TEMP_FILE%
echo @dropSql-SAA.sql>> %TEMP_FILE%
echo @dropSql-history.sql>> %TEMP_FILE% 
echo @dropSql.sql>> %TEMP_FILE% 
echo @createSql.sql>> %TEMP_FILE%
echo @createSql-SAA.sql>> %TEMP_FILE%
echo @createSql-history.sql>> %TEMP_FILE% 
echo @data\saa.sql>> %TEMP_FILE%
echo @data\main.sql>> %TEMP_FILE%
echo exit;>> %TEMP_FILE%

sqlplus %USER%/%PASSWORD%@%SERVER_IP%/%ORACLE_TNS% @%TEMP_FILE%
del %TEMP_FILE%
echo --------重置数据库（结构+数据）完毕--------
:Finish_Work
pause