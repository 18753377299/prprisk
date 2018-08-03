create sequence seq_saa_factor_field;
create sequence seq_saa_role_task;
create sequence seq_saa_user_power;
create sequence seq_saa_user_role;
CREATE TABLE saa_factor (
  Factor_Code varchar2(60) NOT NULL,
  Factor_Desc varchar2(60) ,
  Data_Type varchar2(60) NOT NULL,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_FACTOR PRIMARY KEY (Factor_Code)
) ;
CREATE TABLE saa_factor_field (
  Id NUMBER(18) not null,
  Factor_Code varchar2(60) NOT NULL,
  Field_Code varchar2(60) NOT NULL,
  Entity_Code varchar2(60) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_FACTOR_FIELD PRIMARY KEY (Id),
  constraint FK_SAA_FACTOR_CODE FOREIGN KEY (Factor_Code) REFERENCES saa_factor (Factor_Code)
);
CREATE TABLE saa_role (
  Role_Code varchar2(64) NOT NULL,
  Role_C_Name varchar2(60) ,
  Role_T_Name varchar2(60) ,
  Role_E_Name varchar2(60) ,
  ComCode varchar2(8) NOT NULL,
  Creator_Code varchar2(10) ,
  Create_Time date ,
  Updater_Code varchar2(10) ,
  Update_Time date ,
  Valid_Ind char(1) NOT NULL,
  Remark varchar2(60) ,
  Flag char(2) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_ROLE PRIMARY KEY (Role_Code)
);

CREATE TABLE saa_task (
  Task_Code varchar2(60) NOT NULL,
  Group_Name varchar2(120) NOT NULL,
  Task_C_Name varchar2(60) ,
  Task_T_Name varchar2(60) ,
  Task_E_Name varchar2(60) ,
  Url varchar2(200) NOT NULL,
  Creator_Code varchar2(60) ,
  Create_Time date ,
  Updater_Code varchar2(60) ,
  Update_Time date ,
  ValidInd char(1) NOT NULL,
  Remark varchar2(60) ,
  Flag char(2) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_TASK PRIMARY KEY (Task_Code)
) ;
CREATE TABLE saa_role_task (
  Id NUMBER(18) not null,
  Role_Code varchar2(60) NOT NULL,
  Task_Code varchar2(60) NOT NULL,
  Updater_Code varchar2(60) ,
  Update_Time date ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_ROLE_TASK PRIMARY KEY (Id),
  constraint FK_SAA_ROLE_CODE FOREIGN KEY (Role_Code) REFERENCES saa_role (Role_Code),
  constraint FK_SAA_TASK_CODE FOREIGN KEY (Task_Code) REFERENCES saa_task (Task_Code)
) ;
CREATE TABLE saa_user_power (
  Id NUMBER(18) not null,
  User_Code varchar2(60) NOT NULL,
  Factor_Code varchar2(60) NOT NULL,
  Data_Oper varchar2(60) NOT NULL,
  Data_Value varchar2(60) NOT NULL,
  System_Code varchar2(60) NOT NULL,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_USER_POWER PRIMARY KEY (Id),
  constraint FK_SAA_USER_FACTOR_CODE FOREIGN KEY (Factor_Code) REFERENCES saa_factor (Factor_Code)
) ;
CREATE TABLE saa_user_role (
  Id NUMBER(18) not null,
  User_Code varchar2(64) NOT NULL,
  Role_Code varchar2(64) NOT NULL,
  Start_Date date NOT NULL,
  End_Date date NOT NULL,
  Updater_Code varchar2(64) ,
  Update_Time date ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_SAA_USER_ROLE PRIMARY KEY (Id),
  constraint FK_SAA_USER_ROLE_CODE FOREIGN KEY (Role_Code) REFERENCES saa_role (Role_Code)
);
      

