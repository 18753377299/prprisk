<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<div class="row" id="approw">
		<form id="form" class="form-horizontal" role="form" method="post"
			action="">
			<div class="panel-group">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapse5">HeadButton</a>
						</h4>
					</div>
					<div class="panel panel-info">
						<div id="collapse5" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button id="mysubmit" class="btn btn-primary">
												<fmt:message key="label.button.submit" />
											</button>
											<button type="button" class="btn btn-default btn-return"
												v-on:click="readonlyset">
												<fmt:message key="label.button.edit" />
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 页面只读标签：将需要只读的组件放到该标签下  开始 -->
			<fieldset id="readonlyset">
				<div class="col-lg-12">
					<div class="alert alert-danger error" style="display: none;">
						<span></span><br clear="all" />
					</div>
					<div class="panel-group" id="app">
						<!-- 编辑模式：隐藏域      begin-->
						<input type="hidden" v-model="editModel">
						<!-- 编辑模式：隐藏域      end-->
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse1"><fmt:message
											key="label.home.info.basic.component" /></a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="row">
										<!-- 文本域1：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.name" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.text" /></label>
												<!-- 挂载事件  input -->
												<div class="col-xs-8">
													<input type="text" class="form-control" v-model="book.name"
														v-bind:value="book.name"
														name="book[name]" placeholder="edit me" v-on:change="" />
												</div>
											</div>
										</div>
										<!-- 编辑域1：结束 -->
										<!-- 显示域1：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.name" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.text" /></label>
												<div class="col-xs-8">
													<input type="text" class="form-control" v-model="book.name"
														readonly="readonly" />
												</div>
											</div>
										</div>
										<!-- 文本1：结束 -->

										<!-- textarea：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.message" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.textarea" /></label>
												<div class="col-xs-8">
													<textarea class="form-control" v-model="book.message"
														v-bind:value="book.message" name="book[message]"
														placeholder="add multiple lines" v-on:change=""></textarea>
												</div>
											</div>
										</div>
										<!-- 编辑域2：结束 -->
										<!-- 显示域2：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.message" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.textarea" /></label>
												<div class="col-xs-8">
													<textarea class="form-control" v-model="book.message"
														readonly="readonly"></textarea>
												</div>
											</div>
										</div>
										<!-- textarea：结束 -->

										<!-- checkbox：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.checkedNames"
													class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.checkbox" /></label>
												<div class="col-xs-8">
													<input class="minimal" type="checkbox"
														name="book[checkedNames][]" value="a"
														v-model="book.checkedNames"> <label for="jack">Jack</label>
													<input class="minimal" type="checkbox"
														name="book[checkedNames][]" value="b"
														v-model="book.checkedNames"> <label for="john">John</label>
													<input class="minimal" type="checkbox"
														name="book[checkedNames][]" value="c"
														v-model="book.checkedNames"> <label for="mike">Mike</label>
												</div>
											</div>
										</div>
										<!-- 编辑域3：结束 -->
										<!-- 显示域3：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.checkedNames"
													class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.checkbox" /></label>
												<div class="col-xs-8">
													<input class="form-control" type="text"
														v-model="book.checkedNames" readonly="readonly">
												</div>
											</div>
										</div>
										<!-- checkbox：结束 -->

										<!-- radio：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.sell" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.radio" /></label>
												<div class="col-xs-8">
													<label class="radio-inline" for="radios-0"> <input
														type="radio" name="book[sell]" v-model="book.sell"
														value="0"> <fmt:message
															key="label.sysuser.sex.male" />
													</label> <label class="radio-inline" for="radios-1"> <input
														type="radio" name="book[sell]" v-model="book.sell"
														value="1"> <fmt:message
															key="label.sysuser.sex.female" />
													</label>
												</div>
											</div>
										</div>
										<!-- 编辑域4：结束 -->
										<!-- 显示域4：开始 -->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.radio" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.radio" /></label>
												<div class="col-xs-8">
													<input type="text" class="form-control" v-model="book.sell"
														readonly="readonly">
												</div>
											</div>
										</div>
										<!-- radio：结束 -->

										<!-- 单选列表：开始-->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.single" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.radiolist" /></label>
												<div class="col-xs-8">
													<div class="input-group input-append">
														<select name="book[single]" v-model="book.single">
															<option value='A'>A</option>
															<option value='B'>B</option>
															<option value='C'>C</option>
														</select>
													</div>
												</div>
											</div>
										</div>
										<!-- 编辑域5：结束-->
										<!-- 显示域5：开始-->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.single" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.radiolist" /></label>
												<div class="col-xs-8">
													<input type="text" class="form-control"
														v-model="book.single" readonly="readonly">
												</div>
											</div>
										</div>
										<!-- 单选列表：结束-->

										<!-- 复选列表：开始-->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.id" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.checkboxlist" /></label>
												<div class="col-xs-8">
													<select multiple class="form-control" name="book[id][]"
														v-model="book.id">
														<option value="111">option 1</option>
														<option value="222">option 2</option>
														<option value="333">option 3</option>
														<option value="444">option 4</option>
														<option value="555">option 5</option>
													</select>
												</div>
											</div>
										</div>
										<!-- 编辑域8：结束-->
										<!-- 显示域8：开始-->
										<div class="col-md-6 col-xs-12">
											<div class="form-group">
												<label for="book.id" class="col-xs-4 control-label"><fmt:message
														key="label.home.info.basic.component.checkboxlist" /></label>
												<div class="col-xs-8">
													<input type="text" class="form-control" v-model="book.id"
														readonly="readonly">
												</div>
											</div>
										</div>
										<!-- 复选列表：结束-->
									</div>
								</div>
							</div>

							<!-- 个性控件：开始 -->
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse6">个性控件</a>
									</h4>
								</div>
								<div id="collapse6" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<!-- 打分控件：开始-->
											<div class="col-md-6 col-xs-12">
												<div class="form-group">
													<label for="book.single" class="col-xs-4 control-label"><fmt:message
															key="label.risk.score" /></label>
													<div class="col-xs-8">
														<div class="form-group">
															<myscore v-bind:score='book.score' compvar="book.score"
																datamin=0 datamax=4 datastep=1 datasize="xs"
																@on-result-change="onResultChange"></myscore>
														</div>
													</div>
												</div>
											</div>
											<!-- 打分控件：结束-->
											<!-- 日期控件：开始-->
											<div class="col-md-6 col-xs-12">
												<div class="form-group">
													<label for="book.single" class="col-xs-4 control-label"><fmt:message
															key="label.risk.date" /></label>
													<div class="col-xs-8">
														<div class="input-group input-append">
															<picker v-bind:date="book.date" compvar="book.date"
																dataformat="yyyy-mm-dd hh:mm:ss"
																@on-result-change="onResultChange"></picker>
														</div>
													</div>
												</div>
											</div>
											<!-- 日期控件：结束-->
											<div class="col-md-6 col-xs-12">
												<div class="form-group">
													<label for="book.single" class="col-xs-4 control-label"></label>
													<div class="col-xs-8">
														<div class="input-group input-append">
															<span>score：{{book.score}} ======= 日期：{{book.date}}</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 个性控件：结束 -->

							<!-- 查询带回：开始 -->
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse3">查找带回示例</a>
									</h4>
								</div>
								<div id="collapse3" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6 col-xs-12">
												<div class="form-group">
													<label for="userCode" class="col-xs-4 control-label"><fmt:message
															key="label.sysuser.usercode" /></label>
													<div class="col-xs-8">
														<div class="input-group">
															<input id="userCode" name="book.eName"
																class="form-control" type="text"
																v-on:dblclick="userLookupDialog('userCode','userName');" />
															<span class="radius input-group-addon"><a
																class="glyphicon glyphicon-search"
																href="javascript:void(0)"
																v-on:click="userLookupDialog('userCode','userName');"
																title="<fmt:message key="label.common.leadBack"/>">
															</a></span>
														</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 col-xs-12">
												<div class="form-group">
													<label for="userName" class="col-xs-4 control-label"><fmt:message
															key="label.sysuser.username" /></label>
													<div class="col-xs-8">
														<input id="userName" name="book.cName"
															class="form-control" type="text" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 查询带回：结束 -->
							<!-- 多行域：开始 -->
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse4"><fmt:message
												key="label.home.info.basic.component.mulline" /></a>
									</h4>
								</div>
								<div id="collapse4" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="table-responsive">
											<table
												class="table table-striped table-bordered table-hover jqueryDataTable"
												id="resultDataTable">
												<thead>
													<tr>
														<th><fmt:message key="label.riskinfoaddress.serialNo" /></th>
														<th>地址编号222</th>
														<th><fmt:message
																key="label.riskinfoaddress.riskFileNo" /></th>
														<th><fmt:message
																key="label.riskinfoaddress.riskDetailedAddress" /></th>
														<th>日期</th>
														<th>分数</th>
														<th><fmt:message key="label.common.operation" /></th>
													</tr>
												</thead>
												<tbody>
													<tr v-for="(todo,index) in todos">
														<td><input type="text" class="form-control"
															v-bind:value="index+1"></td>
														<td><input type="text" class="form-control"
															:name="'todos['+index+'][id]'" v-model="todo.id"></td>
														<td><input type="text" class="form-control"
															:name="'todos['+index+'][name]'" v-model="todo.name"></td>
														<td><input type="text" class="form-control"
															:name="'todos['+index+'][text]'" v-model="todo.text">
														</td>

														<td><div class="form-group">
																<picker v-bind:date="todo.date"
																	:compvar="'todos.'+index+'.date'"
																	@on-result-change="onResultChange"></picker>
																<span>{{todo.date}}</span>
															</div></td>
														<td>
															<div class="form-group">
																<myscore v-bind:score='todo.score' datamin=0 datamax=3
																	datastep=1 datasize="xs"
																	:compvar="'todos.'+index+'.score'"
																	@on-result-change="onResultChange"></myscore>
																<span>{{todo.score}}</span>
															</div>
														</td>
														<td>
															<button type="button" id="todo.delete"
																class="btn btn-primary btn-sm btn-delete"
																v-on:click="myvuedeleteTest(index)">
																<fmt:message key="label.button.delete" />
															</button>
														</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td><button id="vue" type="button"
																class="btn btn-primary btn-sm btn-delete"
																v-on:click="myvueaddTest">
																<fmt:message key="label.button.add"></fmt:message>
															</button></td>
													</tr>
												</tfoot>
											</table>
										</div>
									</div>
								</div>
							</div>
							<!-- 多行域：结束 -->
						</div>
					</div>
				</div>
			</fieldset>
			<!-- 页面只读标签：将需要只读的组件放到该标签下  结束 -->
		</form>
	</div>
	<!-- ECharts组件：开始 -->
	<div id="container" style="height: 400%"></div>
	<!-- ECharts组件：结束 -->
	<div id="ajax-sysUserModal" class="modal fade" tabindex="-1"
		role="dialog" style="display: none;"></div>
	<script src="${ctx}/${app_version}/instance/js/ComponentsModel.js"></script>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
</body>
</html>