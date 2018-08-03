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
			<!--<div class="well well-sm">
				<h5 class="panel-title">回复信件</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>-->
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne">信件</a>
							</h4>
						</div>

						<!-- 上面是标题 下面是写信中3个部分 -->
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="receiver" class="control-label">收件人</label>
											</div>

											<div class="col-xs-4">
												<input id="receiver" onblur="checkReceiver(this.value)"
													class="required" style="width: 742px; height: 26px"
													name="receiver" value="${staLetter.sender}" /> <span
													id="errormsg"></span>
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
												<label for="theme" class="control-label">主 题</label>
											</div>

											<div class="col-xs-4">
												<input id="theme" class="required" name="theme"
													style="width: 742px; height: 26px"
													value="${staLetter.theme}" />
											</div>

											<!--<div class="col-xs-8 controls">
											<input id="theme" type="text" name="theme"
												class="form-control"
												value="${staLetter.theme }" />
										</div>-->
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
												<label for="content" class="control-label">内 容</label>
											</div>
											<!--<div class="col-xs-4" >
											<input id="content" name="content"
												class="form-control" type="text" 
												value="${staLetter.content}"  />
										</div>-->
											<div class="col-xs-4">
												<textarea id="content" name="content" class="required"
													style="width: 742px; height: 200px"
													value="${staLetter.content}"></textarea>
											</div>
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
												id="sendBtn">发送</button>
											<button type="button" class="btn btn-default btn-return">返回</button>
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
	<script src="${ctx}/staLetter/js/StaLetterList.js"></script>
	<script src="${ctx}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/staLetter/js/StaLetterEdit.js"></script>

	<script type="text/javascript">
		function checkSender(){
			<!--var receiverVal = $('#receiver').val();
			alert(receiverVal);-->
		}
	</script>
</body>
</html>