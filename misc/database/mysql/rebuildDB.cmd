@echo off
set USER=root
set PASSWORD=admin
set SERVER_IP=localhost
set SCHEMA=platform
set TEMP_FILE=%TEMP%\tempsql.tmp

echo --------�ؽ����ݿ�%SCHEMA%��ʼ(������Ҫ�����ӣ������ĵȴ�)----------------  
echo drop database IF EXISTS %SCHEMA%;> %TEMP_FILE% 
echo create database %SCHEMA% DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;>> %TEMP_FILE%
echo use %SCHEMA%;>> %TEMP_FILE%
type dropSql-SAA.sql>> %TEMP_FILE%
type dropSql-history.sql>> %TEMP_FILE%
type dropSql.sql>> %TEMP_FILE%
type createSql.sql>> %TEMP_FILE%
type createSql-SAA.sql>> %TEMP_FILE%
type createSql-history.sql>> %TEMP_FILE%  
type data\main.sql>> %TEMP_FILE%
type data\saa.sql>> %TEMP_FILE%



mysql -h %SERVER_IP% -u %USER% -p%PASSWORD% --default-character=GBK < %TEMP_FILE% 

echo --------�������ݿ⣨�ṹ+���ݣ����--------
:Finish_Work
pause