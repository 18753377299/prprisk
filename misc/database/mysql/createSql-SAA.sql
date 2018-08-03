CREATE TABLE saa_factor (
  Factor_Code varchar(60) NOT NULL,
  Factor_Desc varchar(60) ,
  Data_Type varchar(60) NOT NULL,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime,
  constraint PK_SAA_FACTOR PRIMARY KEY (Factor_Code)
) ;
CREATE TABLE saa_factor_field (
  Id bigint(18) not null AUTO_INCREMENT,
  Factor_Code varchar(60) NOT NULL,
  Field_Code varchar(60) NOT NULL,
  Entity_Code varchar(60) ,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime ,
  constraint PK_SAA_FACTOR_FIELD PRIMARY KEY (Id),
  constraint FK_SAA_FACTOR_CODE FOREIGN KEY (Factor_Code) REFERENCES saa_factor (Factor_Code)
);
CREATE TABLE saa_role (
  Role_Code varchar(64) NOT NULL,
  Role_C_Name varchar(60) ,
  Role_T_Name varchar(60) ,
  Role_E_Name varchar(60) ,
  ComCode varchar(8) NOT NULL,
  Creator_Code varchar(10) ,
  Create_Time datetime ,
  Updater_Code varchar(10) ,
  Update_Time datetime ,
  Valid_Ind char(1) NOT NULL,
  Remark varchar(60) ,
  Flag char(2) ,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime ,
  constraint PK_SAA_ROLE PRIMARY KEY (Role_Code)
);

CREATE TABLE saa_task (
  Task_Code varchar(60) NOT NULL,
  Group_Name varchar(120) NOT NULL,
  Task_C_Name varchar(60) ,
  Task_T_Name varchar(60) ,
  Task_E_Name varchar(60) ,
  Url varchar(200) NOT NULL,
  Creator_Code varchar(60) ,
  Create_Time datetime ,
  Updater_Code varchar(60) ,
  Update_Time datetime ,
  ValidInd char(1) NOT NULL,
  Remark varchar(60) ,
  Flag char(2) ,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime ,
  constraint PK_SAA_TASK PRIMARY KEY (Task_Code)
) ;
CREATE TABLE saa_role_task (
  Id bigint(18) not null AUTO_INCREMENT,
  Role_Code varchar(60) NOT NULL,
  Task_Code varchar(60) NOT NULL,
  Updater_Code varchar(60) ,
  Update_Time datetime ,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime ,
  constraint PK_SAA_ROLE_TASK PRIMARY KEY (Id),
  constraint FK_SAA_ROLE_CODE FOREIGN KEY (Role_Code) REFERENCES saa_role (Role_Code),
  constraint FK_SAA_TASK_CODE FOREIGN KEY (Task_Code) REFERENCES saa_task (Task_Code)
) ;
CREATE TABLE saa_user_power (
  Id bigint(18) not null AUTO_INCREMENT,
  User_Code varchar(60) NOT NULL,
  Factor_Code varchar(60) NOT NULL,
  Data_Oper varchar(60) NOT NULL,
  Data_Value varchar(60) NOT NULL,
  System_Code varchar(60) NOT NULL,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime ,
  constraint PK_SAA_USER_POWER PRIMARY KEY (Id),
  constraint FK_SAA_USER_FACTOR_CODE FOREIGN KEY (Factor_Code) REFERENCES saa_factor (Factor_Code)
) ;
CREATE TABLE saa_user_role (
  Id bigint(18) not null AUTO_INCREMENT,
  User_Code varchar(64) NOT NULL,
  Role_Code varchar(64) NOT NULL,
  Start_Date datetime NOT NULL,
  End_Date datetime NOT NULL,
  Updater_Code varchar(64) ,
  Update_Time datetime ,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime ,
  constraint PK_SAA_USER_ROLE PRIMARY KEY (Id),
  constraint FK_SAA_USER_ROLE_CODE FOREIGN KEY (Role_Code) REFERENCES saa_role (Role_Code)
);
      

