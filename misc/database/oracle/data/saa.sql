insert into SAA_ROLE (role_code, role_c_name, role_t_name, role_e_name, comcode, creator_code, create_time, updater_code, update_time, valid_ind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('admin', '管理员', null, null, '11000000', null, null, null, null, '1', null, null, 1, to_date('17-04-2015 17:18:36', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE (role_code, role_c_name, role_t_name, role_e_name, comcode, creator_code, create_time, updater_code, update_time, valid_ind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('employee', '员工', null, null, '11110000', null, null, null, null, '1', null, null, 1, to_date('17-04-2015 17:18:36', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE (role_code, role_c_name, role_t_name, role_e_name, comcode, creator_code, create_time, updater_code, update_time, valid_ind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('manager', '项目经理', null, null, '12000000', null, null, null, null, '1', null, null, 1, to_date('17-04-2015 17:18:36', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_OTHER', '系统', '其它配置', null, null, '/**', null, null, null, to_date('16-02-2016 15:18:13', 'dd-mm-yyyy hh24:mi:ss'), '1', null, null, 2, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_SPC', '系统', '界面配置', null, null, '/spc**', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER', '用户', '用户管理', null, null, '/sysusers/**', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER_DELETE', '用户', '用户删除', null, null, '/sysusers/', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER_EDIT', '用户', '用户编辑', null, null, '/sysusers/**/edit', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER_LIST', '用户', '用户查询', null, null, '/sysusers/list', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER_SAVE', '用户', '用户保存', null, null, '/sysusers', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER_SEARCH', '用户', '用户查询', null, null, '/sysusers/index', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_TASK (task_code, group_name, task_c_name, task_t_name, task_e_name, url, creator_code, create_time, updater_code, update_time, validind, remark, flag, version, insert_time_for_his, operate_time_for_his)
values ('PLAT_USER_VIEW', '用户', '用户查看', null, null, '/sysusers/**/show', null, null, null, null, '1', null, null, 1, to_date('23-04-2015 16:20:46', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (10, 'manager', 'PLAT_USER', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (11, 'manager', 'PLAT_USER_LIST', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (12, 'manager', 'PLAT_USER_VIEW', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (13, 'manager', 'PLAT_USER_EDIT', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (14, 'manager', 'PLAT_USER_SAVE', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (15, 'manager', 'PLAT_USER_DELETE', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (16, 'employee', 'PLAT_USER_SEARCH', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (17, 'admin', 'PLAT_USER_SEARCH', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (18, 'manager', 'PLAT_USER_SEARCH', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (2, 'admin', 'PLAT_USER', null, null, 1, to_date('23-04-2015 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (3, 'admin', 'PLAT_USER_LIST', null, null, 1, to_date('23-04-2015 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (4, 'admin', 'PLAT_USER_VIEW', null, null, 1, to_date('23-04-2015 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (5, 'admin', 'PLAT_USER_EDIT', null, null, 1, to_date('23-04-2015 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (6, 'admin', 'PLAT_USER_SAVE', null, null, 1, to_date('23-04-2015 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (7, 'admin', 'PLAT_USER_DELETE', null, null, 1, to_date('23-04-2015 16:22:03', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (8, 'employee', 'PLAT_USER_VIEW', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (9, 'employee', 'PLAT_USER_LIST', null, null, 1, to_date('22-04-2015 17:11:23', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_ROLE_TASK (id, role_code, task_code, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (1014, 'admin', 'PLAT_OTHER', null, null, 0, to_date('16-02-2016 15:17:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-02-2016 15:17:52', 'dd-mm-yyyy hh24:mi:ss'));
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (18, 'manager1', 'manager', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 1, to_date('22-04-2015 17:12:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (19, 'manager2', 'manager', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 1, to_date('22-04-2015 17:12:49', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (20, 'employee1', 'employee', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 0, to_date('22-04-2015 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (21, 'employee2', 'employee', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 0, to_date('22-04-2015 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (22, 'employee3', 'employee', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 0, to_date('22-04-2015 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (23, 'employee4', 'employee', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 0, to_date('22-04-2015 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (24, 'employee5', 'employee', to_date('06-11-2014', 'dd-mm-yyyy'), to_date('06-11-2114', 'dd-mm-yyyy'), null, null, 0, to_date('22-04-2015 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (1027, 'admin', 'admin', to_date('16-02-2016', 'dd-mm-yyyy'), to_date('27-02-2016', 'dd-mm-yyyy'), null, null, 0, to_date('16-02-2016 16:18:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-02-2016 16:18:03', 'dd-mm-yyyy hh24:mi:ss'));
insert into SAA_USER_ROLE (id, user_code, role_code, start_date, end_date, updater_code, update_time, version, insert_time_for_his, operate_time_for_his)
values (1028, 'admin', 'employee', to_date('16-02-2016', 'dd-mm-yyyy'), to_date('27-02-2016', 'dd-mm-yyyy'), null, null, 0, to_date('16-02-2016 16:18:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-02-2016 16:18:03', 'dd-mm-yyyy hh24:mi:ss'));