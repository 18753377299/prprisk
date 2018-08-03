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
				<h5 class="panel-title">已收信件</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>-->
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input> <input
					type="hidden" id="id" name="id" value="${id}"></input>
				<!--重要-->
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
												<label for="receiver" class="control-label">发件人</label>
											</div>

											<div class="col-xs-4">
												${staLetter.sender}
												<!--<textarea onblur="checkSender();" id="sender" cols="120" rows="1" disabled="disabled" name="receiver">${staLetter.sender}</textarea>-->
											</div>
											<!--<div class="col-xs-8">
												<input id="receiver" type="text" name="receiver" disabled="disabled"
													 value="${staLetter.receiver }" />
												${staLetter.receiver }
											</div>-->
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
												<!--<textarea id="theme" cols="120" rows="1" disabled="disabled" name="theme">${staLetter.theme}</textarea>-->
												${staLetter.theme}
												<!--<div class="control-label">${staLetter.theme}</div>-->
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
											<div class="col-xs-8">
												${staLetter.content}
												<!--<textarea id="content" cols="120" rows="12" disabled="disabled" name="content">${staLetter.content}</textarea>-->
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
											<button type="button"
												class="btn btn-primary btn-sm btn-reply">回复</button>
											<button type="button"
												class="btn btn-primary btn-sm btn-forward">转发</button>
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
	<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/staLetter/js/StaLetterEdit.js"></script>
	<script
		src="${ctx}/${app_version}/staLetter/js/StaLetterReceiveList.js"></script>
	<script type="text/javascript">
		function checkSender(){
			var receiverVal = $('#receiver').val();
			alert(receiverVal);
		}
	</script>
</body>
</html>