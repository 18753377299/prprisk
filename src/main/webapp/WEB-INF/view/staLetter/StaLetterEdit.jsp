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
<!-- 		<div class="col-lg-12"> -->
<!-- 			<br /> -->
<!-- 			<ol class="breadcrumb"> -->
<%-- 				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message --%>
<%-- 							key="label.home" /></a></li> --%>
<%-- 				<li class="active"><i class="fa fa-table"></i> <fmt:message --%>
<%-- 						key="label.home.sys.mail" /></li> --%>
<!-- 			</ol> -->
<!-- 		</div> -->

		<div class="col-lg-12">
			<!--<div class="well well-sm">
				<h5 class="panel-title">撰写信件</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>-->
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input> <input
					type="hidden" name="id" value="${staLetter.id}"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne"><fmt:message
										key="label.staletter.edit.Writeletter" /></a>
							</h4>
						</div>

						<!-- 上面是标题 下面是写信中3个部分 -->
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="receiver" class="control-label"><fmt:message
														key="label.staletter.sendlist.recipient" /></label>
											</div>

											<div class="col-xs-4">
												<input id="receiver" onblur="checkReceiver(this.value)"
													class="required" style="width: 742px; height: 26px"
													name="receiver" />${staLetter.receiver} <span
													id="errormsg"></span>
												<!--<textarea onblur="checkReceiver(this.value)" id="receiver" cols="120" rows="1" class="required" name="receiver" >${staLetter.receiver}</textarea>-->
											</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
							</div>


							<!-- 从panel-body开始分割 -->
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="theme" class="control-label"><fmt:message
														key="label.staletter.sendlist.theme" /></label>
											</div>

											<div class="col-xs-4">
												<input id="theme" class="required" name="theme"
													style="width: 742px; height: 26px" />${staLetter.theme}
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 从panel-body开始分割 -->
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="content" class="control-label"><fmt:message
														key="label.staletter.edit.content" /></label>
											</div>
											<!--<div class="col-xs-4" >
											<input id="content" name="content"
												class="form-control" type="text" 
												value="${staLetter.content}"  />
										</div>-->
											<div class="col-xs-4">
												<textarea id="content" name="content" class="required"
													style="width: 742px; height: 200px" />${staLetter.content}</textarea>
											</div>
											<!--<div class="col-xs-4" >
										<textarea id="content" cols="120" rows="12" class="required" name="content">${staLetter.content}</textarea>
										</div>-->
										</div>
									</div>
								</div>
							</div>
							<!-- 第三块“内容”结束 -->

							<!-- 以下是发送按钮部分 -->
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-submit"
												id="sendBtn">
												<fmt:message key="label.staletter.edit.sendbtn" />
											</button>
											<button type="button" class="btn btn-default btn-return">
												<fmt:message key="label.button.return" />
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 发送按钮部分结束 -->

						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/staLetter/js/StaLetterEdit.js"></script>
</body>
</html>