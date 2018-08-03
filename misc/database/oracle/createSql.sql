create sequence hibernate_sequence;
create sequence seq_ims_check_detail;
CREATE TABLE ims_check_detail (
  Id number(18) NOT NULL,
  User_Code varchar2(64),
  Work_Day date,
  check_type varchar2(30),
  Check_In_Address varchar2(32),
  Check_In_Time date ,
  Check_In_Reason varchar2(255),
  Check_Out_Address varchar2(32),
  Check_Out_Time date,
  Check_Out_Reason varchar2(255),
  Version number(9),
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE,
  constraint PK_ims_check_detail PRIMARY KEY (Id)
);
create sequence seq_msg_info;
CREATE TABLE msg_info (
  Id number(18) NOT NULL,
  Uuid varchar2(255) NOT NULL,
  Sender varchar2(40) NOT NULL,
  Receiver varchar2(1024) NOT NULL,
  Send_Time date NOT NULL,
  Repeat_Cycle decimal(10,0) ,
  Content clob,
  User_Code varchar2(40) ,
  Com_Code varchar2(40) ,
  System_Code varchar2(40) ,
  Additional_Code varchar2(80) ,
  Msg_Type varchar2(20) ,
  Error_Log clob,
  Business_Type varchar2(40) ,
  Status varchar2(20) NOT NULL,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_msg_info PRIMARY KEY (Id)
);
create sequence seq_msg_info_custom;
CREATE TABLE msg_info_custom (
  Id number(18) NOT NULL,
  User_Code varchar2(64) ,
  Email_Flag_Cla varchar2(64) ,
  Sta_Letter_Flag_Cla varchar2(64) ,
  Sms_Flag_Cla varchar2(64) ,
  Email_Flag_Reg varchar2(64) ,
  Sta_Letter_Flag_Reg varchar2(64) ,
  Sms_Flag_Reg varchar2(64) ,
  Email_Address varchar2(64) ,
  Phone_No varchar2(20) ,
  Msg_Type varchar2(20) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_msg_info_custom PRIMARY KEY (Id)
);
create sequence seq_msg_info_his;
CREATE TABLE msg_info_his (
  Id number(18) NOT NULL,
  U_U_Id varchar2(255) NOT NULL,
  Sender varchar2(40) NOT NULL,
  Receiver varchar2(1024) NOT NULL,
  Send_Time date NOT NULL,
  Repeat_Cycle decimal(10,0) ,
  Content clob,
  User_Code varchar2(40) ,
  Com_Code varchar2(40) ,
  System_Code varchar2(40) ,
  Additional_Code varchar2(80) ,
  Msg_Type varchar2(20) ,
  Error_Log clob,
  Business_Type varchar2(40) ,
  Status varchar2(20) NOT NULL,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_msg_info_his PRIMARY KEY (Id)
);
create sequence seq_sdd_type;
CREATE TABLE sdd_type (
  Type varchar2(250) not null,
  Type_Desc varchar2(250) ,
  New_Type varchar2(250),
  Valid_Status varchar2(1) ,
  Flag varchar2(45) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_sdd_type PRIMARY KEY (Type)
);
create sequence seq_sdd_code;
CREATE TABLE sdd_code (
  Id number(18) NOT NULL,
  Type varchar2(250) ,
  Code varchar2(250) ,
  Value varchar2(250),
  CN_Name varchar2(250) ,
  Full_Name varchar2(250),
  ENG_Name varchar2(250),
  New_Code varchar2(250),
  Code_Desc varchar2(250) ,
  SERIAL_NO number(4,0) DEFAULT NULL,
  Valid_Status varchar2(1) ,
  Flag varchar2(2) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_sdd_code PRIMARY KEY (Id),
  constraint FK_sdd_type FOREIGN KEY (Type) REFERENCES sdd_type (Type)
) ;
create sequence seq_smc_menu;
CREATE TABLE smc_menu (
  Id number(18) NOT NULL,
  Upper_Id number(18) NOT NULL,
  Menu_Level number(9) NOT NULL,
  System_Code varchar2(255) ,
  Menu_CName varchar2(255) ,
  Menu_TName varchar2(255) ,
  Menu_EName varchar2(255) ,
  Action_Url varchar2(255) ,
  Target varchar2(255) ,
  Display_No number(9) NOT NULL,
  Image varchar2(255) ,
  Image_Expand varchar2(255) ,
  Image_Collapse varchar2(255) ,
  Icon_Expand varchar2(255) ,
  Icon_Collapse varchar2(255) ,
  Task_Code varchar2(255) ,
  Creator_Code varchar2(10) ,
  Create_Time date ,
  Updater_Code varchar2(10) ,
  Update_Time date ,
  Valid_Ind varchar2(1) NOT NULL,
  Remark varchar2(255) ,
  Flag varchar2(255) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  style varchar2(250) ,
  CONSTRAINT PK_smc_menu PRIMARY KEY (Id),
  CONSTRAINT idx_utimenu_idcode unique(Id,Upper_Id,System_Code,Display_No,Valid_Ind)
);

create sequence seq_sta_letter;
CREATE TABLE sta_letter (
  Id number(18) NOT NULL,
  User_Code varchar2(64) ,
  Receiver varchar2(64) NOT NULL,
  Content varchar2(255) ,
  Theme varchar2(64) ,
  Send_Time date ,
  Receive_Time date ,
  Sender varchar2(64) ,
  Read_Flag varchar2(2) ,
  Valid_Flag_Rec varchar2(2) ,
  Valid_Flag_Send varchar2(2) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE,
  constraint PK_sta_letter PRIMARY KEY (Id)
);
create sequence seq_sys_application;
CREATE TABLE sys_application (
  Id number(18) NOT NULL,
  system_code varchar2(255) NOT NULL,
  cname varchar2(255) ,
  ename varchar2(255) ,
  description varchar2(255) ,
  deleted_flag RAW(1) ,
  home_Url varchar2(255) ,
  tech_architecture varchar2(255) ,
  developent_team varchar2(255) ,
  online_time date ,
  owner varchar2(255) ,
  backup_owner varchar2(255) ,
  database_name varchar2(255) ,
  database_type varchar2(255) ,
  dbserver_path varchar2(255) ,
  svn_path varchar2(255) ,
  created_user varchar2(255) ,
  created_date date ,
  updated_user varchar2(255) ,
  updated_date date ,
  validate_type varchar2(255) ,
  login_options varchar2(1000) ,
  add_role RAW(1) ,
  role_auth RAW(1) ,
  res_auth RAW(1) ,
  store_dept_auth RAW(1) ,
  group_auth RAW(1) ,
  store_owner RAW(1) ,
  app_lock RAW(1) ,
  constraint PK_sys_application PRIMARY KEY (Id),
  constraint sys_application_ix1 unique(system_code)
);

CREATE TABLE sys_area_dict (
  AREA_CODE varchar2(20) NOT NULL,
  AREA_NAME varchar2(3000) ,
  SHORT_CODE varchar2(20) ,
  FULL_NAME varchar2(3000) ,
  AREA_LEVEL decimal(3,1) ,
  SERIAL_NO decimal(4,0) ,
  UPPER_CODE varchar2(20) ,
  POST_CODE varchar2(20) ,
  IS_VALID varchar2(1) ,
  REMARK varchar2(1000) ,
  OFTEN_FLAG varchar2(2) ,
  PRIMARY KEY (AREA_CODE)
);
create index idx_sys_areadict_SHORT_CODE on sys_area_dict(SHORT_CODE);
create index idx_sys_areadict_UPPER_CODE on sys_area_dict(UPPER_CODE);
create sequence seq_sys_cas_login;
CREATE TABLE sys_cas_login (
  Id number(18) NOT NULL,
  created_date date DEFAULT NULL,
  updated_date date DEFAULT NULL,
  username varchar2(255) DEFAULT NULL,
  ticket varchar2(255) DEFAULT NULL,
  sticket varchar2(255) DEFAULT NULL,
  action varchar2(255) DEFAULT NULL,
  client_ip varchar2(255) DEFAULT NULL,
  server_ip varchar2(255) DEFAULT NULL,
  login_time date DEFAULT NULL,
  logout_time date DEFAULT NULL,
  constraint PK_sys_cas_login PRIMARY KEY (Id)
);
create sequence seq_sys_company;
create table SYS_COMPANY
(
  Id                number(18) NOT NULL,
  com_code          VARCHAR2(8) not null,
  com_path          VARCHAR2(500) not null,
  com_cname          VARCHAR2(250) not null,
  com_ename          VARCHAR2(250),
  address_cname      VARCHAR2(250),
  address_ename      VARCHAR2(250),
  post_code          VARCHAR2(6),
  phone_number       VARCHAR2(30),
  fax_number         VARCHAR2(20),
  upper_com_code      VARCHAR2(8),
  insurer_name       VARCHAR2(250),
  com_type           VARCHAR2(1),
  manager           VARCHAR2(40),
  accountant        VARCHAR2(40),
  remark            VARCHAR2(40),
  new_com_code        VARCHAR2(8) not null,
  valid_status       VARCHAR2(1) not null,
  acnt_unit          VARCHAR2(8),
  article_code       VARCHAR2(30),
  flag              VARCHAR2(10),
  insert_time_for_his  DATE default SYSDATE,
  operate_time_for_his DATE default SYSDATE,
  constraint PK_DCOMPANY primary key (ID)
);
CREATE TABLE sys_company_user (
  user_id number(18) NOT NULL,
  group_id number(18) NOT NULL,
  constraint GROUPS_USERS_UNIQUE Unique(group_id,user_id)
);
create index index_groups_users_on_user_id on sys_company_user(user_id);
create index index_groups_users_on_group_id on sys_company_user(group_id);

CREATE TABLE sys_trans_config (
  TRANS_TYPE varchar2(30) NOT NULL,
  TRANS_NAME varchar2(50) ,
  SELECT_TABLE varchar2(30) ,
  SELECT_CODE varchar2(30) ,
  SELECT_NAME varchar2(50) ,
  SELECT_WHERE varchar2(100) ,
  PARARM_VALUE varchar2(255) ,
  ORDER_BY varchar2(30) ,
  REMARK varchar2(100) ,
  PRIMARY KEY (TRANS_TYPE)
);
create sequence seq_sys_user;
CREATE TABLE sys_user (
  Id number(18) NOT NULL,
  user_code varchar2(60) NOT NULL,
  user_name varchar2(60) ,
  email varchar2(60) ,
  mobile_phone varchar2(20) ,
  password varchar2(32) NOT NULL,
  salt varchar2(10)  DEFAULT '0' NOT NULL,
  second_validate varchar2(1) ,
  ga_code varchar2(60) ,
  question varchar2(255) ,
  answer varchar2(255) ,
  sex varchar2(1) ,
  birthday date ,
  reg_time date ,
  last_login_failed number(10) ,
  last_time date ,
  last_ip varchar2(15) ,
  msn varchar2(60) ,
  qq varchar2(20) ,
  office_phone varchar2(20) ,
  home_phone varchar2(20) ,
  checked varchar2(1) DEFAULT '0' NOT NULL,
  age varchar2(60) ,
  Operators varchar2(60) ,
  PASSWORD_SET_DATE date ,
  PASSWORD_EXPIRE_DATE date ,
  ADDRESS varchar2(60) ,
  POSTCODE varchar2(6) ,
  VALID_STATUS varchar2(1) ,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_sys_user PRIMARY KEY (Id),
  constraint user_code unique(user_code)
);
create index email on sys_user(email);
create index mobile_phone on sys_user(mobile_phone);
create sequence seq_sys_user_property;
CREATE TABLE sys_user_property (
  id number(18) NOT NULL,
  User_Code varchar2(60) NOT NULL,
  Code varchar2(22) NOT NULL,
  Value varchar2(8) NOT NULL,
  Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE ,
  constraint PK_sys_user_property PRIMARY KEY (id)
);
create sequence seq_sys_user_run_as;
CREATE TABLE sys_user_run_as (
  id number(18) NOT NULL,
  from_user_code varchar2(60) NOT NULL,
  to_user_code varchar2(60) NOT NULL,
   Version number(9) NOT NULL,
  Insert_Time_For_His date default SYSDATE NOT NULL,
  Operate_Time_For_His date default SYSDATE,
  constraint seq_sys_user_run_as PRIMARY KEY (id)
);

create sequence seq_excel_test;
create table EXCEL_TEST
(
  Id                number(18) NOT NULL,
  code              VARCHAR2(8) not null,
  name              VARCHAR2(250) not null,
  remark            VARCHAR2(40),
  valid_status       VARCHAR2(1) not null,
  insert_time_for_his  DATE default SYSDATE,
  operate_time_for_his DATE default SYSDATE,
  constraint PK_EXCEL_TEST primary key (id)
);
create sequence seq_excel_test_temp;
create table EXCEL_TEST_TEMP
(
  row_id            number(18)  NOT NULL,
  Id                number(18) NOT NULL,
  code              VARCHAR2(8) not null,
  name              VARCHAR2(250) not null,
  remark            VARCHAR2(40),
  valid_status       VARCHAR2(1) not null,
  insert_time_for_his  DATE default SYSDATE,
  operate_time_for_his DATE default SYSDATE,
  constraint PK_EXCEL_TEST_Temp primary key (row_id)
);

create table PDFC_SERVER
(
  id        VARCHAR2(18) not null,
  host_name VARCHAR2(255),
  os        VARCHAR2(255),
  cpu       number(3),
  mem       number(3),
  hd        number(6),
  hd_info   VARCHAR2(255),
  ip        VARCHAR2(255),
  remark    VARCHAR2(255)
);
-- Add comments to the columns 
comment on column PDFC_SERVER.id
  is 'id';
comment on column PDFC_SERVER.host_name
  is '主机名';
comment on column PDFC_SERVER.os
  is '操作系统';
comment on column PDFC_SERVER.cpu
  is 'cup核数';
comment on column PDFC_SERVER.mem
  is '内存（G）';
comment on column PDFC_SERVER.hd
  is '硬盘（G）';
comment on column PDFC_SERVER.hd_info
  is '硬盘信息';
comment on column PDFC_SERVER.ip
  is 'IP地址';
comment on column PDFC_SERVER.remark
  is '备注';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PDFC_SERVER 
add constraint PK_PDFC_SERVER primary key (ID);






