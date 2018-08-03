<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse1">查找带回示例</a>
							</h4>
						</div>
						<div id="collapse1" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="userCode" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.usercode" /></label>
											<div class="col-xs-8">
												<div class="input-group">
													<input id="userCode" name="userCode" class="form-control"
														type="text" value="${sysUser.userCode}" /> <span
														class="radius input-group-addon"><a
														class="glyphicon glyphicon-search"
														href="javascript:void(0)" onclick="userLookupDialog('userCode','userName');"
														title="<fmt:message key="label.common.leadBack"/>"> </a></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="userName" class="col-xs-4 control-label"><fmt:message
													key="label.sysuser.username" /></label>
											<div class="col-xs-8">
												<input id="userName" name="userName" class="form-control"
													type="text" value="${sysUser.userName}" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-group">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapse2">下拉框、单选框、多选框示例</a>
							</h4>
						</div>
						<div id="collapse2" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="sex" class="col-xs-4 control-label">性别(下拉框)</label>
											<div class="col-xs-8">
												<app:codeSelect type="select" codeType="sex" name="sex"
													value="${sysUser.sex}" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="sex" class="col-xs-4 control-label">性别(单选框)</label>
											<div class="col-xs-8">
												<app:codeSelect type="radio" codeType="sex" name="sex"
													value="${sysUser.sex}" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="color" class="col-xs-4 control-label">颜色(多选框)</label>
											<div class="col-xs-8">
												<app:codeSelect type="checkbox" codeType="color"
													name="color" value="${sysUser.sex}" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="form-group">
											<label for="color" class="col-xs-4 control-label">代码翻译(显示admin的用户名)</label>
											<div class="col-xs-8">
												<!-- 显示中文 -->
												<app:codetrans codeType="UserCode" codeCode="admin"/>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo"><fmt:message
														key="label.home.compicktreelist.Operationguide" /></a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">

												<p>
													<br>1.查找带回示例请查看页面webapp/WEB-INF/view/showcase/forms/LookUp.jsp</br> 
													<br>2.下拉框，单选框，多选框均用标签模板生成，数据取自数据库配置，具体配置详见【系统管理】-【基础数据】-【数据字典】功能</br>
													<br>3.下拉框样式示例:&#60;app&#58;codeSelect type=&#34;select&#34; codeType=&#34;sex&#34; name=&#34;sex&#34; value=&#34;&#36;&#123;sysUser.sex&#125;&#34;&#47;&#62;</br>
													<br>4.多选框样式示例:&#60;app&#58;codeSelect type=&#34;chekbox&#34; codeType=&#34;sex&#34; name=&#34;sex&#34; value=&#34;&#36;&#123;sysUser.sex&#125;&#34;&#47;&#62;</br>
													<br>5.单选框样式示例:&#60;app&#58;codeSelect type=&#34;radio&#34; codeType=&#34;sex&#34; name=&#34;sex&#34; value=&#34;&#36;&#123;sysUser.sex&#125;&#34;&#47;&#62;</br>
													<br>6.代码翻译样式示例:&#60;app&#58;codeTrans codeType=&#34;UserCode&#34; codeCode=&#34;&#36;&#123;sysUser.userCode&#125;&#34;&#47;&#62;</br>
													<br>注意：代码翻译的标签也是从后台数据库根据codeType值获得配置的数据库表的代码和名称的对应值，详情请查看功能【系统管理】-【基础数据】-【翻译配置管理】</br>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<div class="panel panel-info">
				<div id="#collapseFour" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center">
									<button type="button" class="btn btn-default btn-return">
										<fmt:message key="label.button.return" />
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div id="ajax-sysUserModal" class="modal fade" tabindex="-1" role="dialog"
		style="display: none;"></div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/showcase/forms/js/LookUp.js"></script>
</body>
</html>