CREATE SEQUENCE seq_utioperatehistory;
CREATE TABLE utioperatehistory (
   Id                   number(18)        not null,
   OperateType          DECIMAL(6,0)        not null,
   OperateTime          DATE              default SYSDATE not null,
   Entity               VARCHAR2(255)        not null,
   EntityKey1           VARCHAR2(255),
   EntityKey2           VARCHAR2(255),
   EntityKey3           VARCHAR2(255),
   EntityKey4           VARCHAR2(255),
   EntityKey5           VARCHAR2(255),
   EntityKey6           VARCHAR2(255),
   EntityKey7           VARCHAR2(255),
   EntityKey8           VARCHAR2(255),
   Flag                 CHAR(10),
   constraint PK_UtiOperateHistory primary key (Id)
);
CREATE TABLE uti_quartz_config (
  Id number(18) NOT NULL,
  Job_Code varchar2(80) NOT NULL,
  Job_Description varchar2(255) ,
  User_Code varchar2(64) ,
  Second varchar2(80) ,
  Minute varchar2(80) ,
  Hour varchar2(80) ,
  Day varchar2(80) ,
  Month varchar2(80) ,
  Week varchar2(80) ,
  Year varchar2(80) ,
  Cron_Expression varchar2(255) NOT NULL,
  Target_Object varchar2(255) NOT NULL,
  Target_Method varchar2(255) NOT NULL,
  Con_Current varchar2(1) NOT NULL,
  Valid_Status varchar2(2) NOT NULL,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_uti_quartz_config PRIMARY KEY (Id)
);
create index AK_Key_JobCode on uti_quartz_config(Job_Code);
