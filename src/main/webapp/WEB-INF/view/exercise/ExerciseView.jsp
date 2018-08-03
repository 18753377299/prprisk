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
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li class="active"><i class="fa fa-table"></i>
				<fmt:message key="label.home.showcase.Exercisetest" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">
					<fmt:message key="label.home.showcase.Exercisetest" />
					<fmt:message key="" />
				</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message
										key="label.home.info.basic" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="id" class="control-label">姓名</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${testExercise.testerName}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="testerAge" class="control-label">年龄</label>
											</div>
											<div class="col-xs-6 controls form-control-static">
												${testExercise.testerAge}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="testerSex" class="control-label">性别</label>
											</div>
											<div class="col-xs-6 form-control-static">
												<c:if test="${testExercise.testerSex=='1'}">男 </c:if>
												<c:if test="${testExercise.testerSex=='0'}">女 </c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- row 强制换行 -->
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseThree">测试内容</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-6">
												<label for="testerIp" class="control-label">IP地址</label>
											</div>
											<div class="col-xs-6 controls form-control-static">
												${testExercise.testerIp}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="testScore" class="control-label">测试分数</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${testExercise.testScore}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="testDate" class="control-label">测试日期</label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${testExercise.testDate }"
													pattern="yyyy-MM-dd" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-2">
												<label for="testerIp" class="control-label">测试总结</label>
											</div>
											<div class="col-xs-10 controls form-control-static">
												${testExercise.testSummary}</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseFour"><fmt:message
										key="label.home.info.others" /></a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="version" class="control-label">测试版本</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${testExercise.version}</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="insertTimeForHis" class="control-label">创建时间</label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${testExercise.insertTimeForHis }"
													pattern="yyyy-MM-dd HH:mm:ss" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="operateTimeForHis" class="control-label">更新时间</label>
											</div>
											<div class="col-xs-6 form-control-static">
												<fmt:formatDate value="${testExercise.operateTimeForHis }"
													pattern="yyyy-MM-dd HH:mm:ss" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
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
			</form>
		</div>
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/exercise/js/ExerciseEdit.js"></script>
</body>
</html>