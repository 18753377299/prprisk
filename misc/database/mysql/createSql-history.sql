CREATE TABLE utioperatehistory (
   Id bigint(18) not null AUTO_INCREMENT,
   OperateType          DECIMAL(6,0)        not null,
   OperateTime          timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   Entity               varchar(255)        not null,
   EntityKey1           varchar(255),
   EntityKey2           varchar(255),
   EntityKey3           varchar(255),
   EntityKey4           varchar(255),
   EntityKey5           varchar(255),
   EntityKey6           varchar(255),
   EntityKey7           varchar(255),
   EntityKey8           varchar(255),
   Flag                 CHAR(10),
   constraint PK_UtiOperateHistory primary key (Id)
);
CREATE TABLE uti_quartz_config (
  Id bigint(18) not null AUTO_INCREMENT,
  Job_Code varchar(80) NOT NULL,
  Job_Description varchar(255) ,
  User_Code varchar(64) ,
  `Second` varchar(80) ,
  `Minute` varchar(80) ,
  `Hour` varchar(80) ,
  `Day` varchar(80) ,
  `Month` varchar(80) ,
  `Week` varchar(80) ,
  `Year` varchar(80) ,
  Cron_Expression varchar(255) NOT NULL,
  Target_Object varchar(255) NOT NULL,
  Target_Method varchar(255) NOT NULL,
  Con_Current varchar(1) NOT NULL,
  Valid_Status varchar(2) NOT NULL,
  Version bigint(9) NOT NULL,
  Insert_Time_For_His timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  Operate_Time_For_His datetime,
  constraint PK_uti_quartz_config PRIMARY KEY (Id)
);
create index AK_Key_JobCode on uti_quartz_config(Job_Code);
