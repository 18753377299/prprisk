@echo off
set USER=pdfb4test
set PASSWORD=pdfb4test
set ORACLE_TNS=orcl
set TEMP_FILE=.\tempsql.tmp
set SERVER_IP=11.137.136.6

echo --------�ؽ����ݿ�%DATABASE%��ʼ(������Ҫ�����ӣ������ĵȴ�)--------
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
echo --------�������ݿ⣨�ṹ+���ݣ����--------
:Finish_Work
pause