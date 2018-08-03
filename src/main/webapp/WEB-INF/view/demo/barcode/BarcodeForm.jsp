<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<html>
<head>
<style>
</style>
</head>
<body>
	<div class="row recorded lookup">
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<c:choose>
				<c:when test="${opreateType == 'edit'}">
					<c:set var="url" value="${ctx}/user/update.do"></c:set>
				</c:when>
				<c:when test="${opreateType == 'add'}">
					<c:set var="url" value="${ctx}/user/add.do"></c:set>
				</c:when>
			</c:choose>
			<form name="fm" method="post" action="${ctx}/barcode/encoder.do"
				target="result1">
				<input type="hidden" name="actionType" value="${actionType}" />
				<div class="panel-group col-lg-6 col-md-6 col-xs-6" id="accordion">
					<div class="panel panel-info">
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="userCode" class="control-label required">条码内容</label>
											</div>
											<div class="col-xs-8">
												<c:choose>
													<c:when test="${actionType == 'gen2DWithEncrypt'}">
														<font color='red'>对内通信类二维码必须使用JSON格式信息，且进行加密处理</font>
														<br />
														<textarea class="form-control" name="content">{"ClaimNo":"XXX100001120991231078","PartsNo":"X796000000","FrameNo":"LSGPC52U7AB123456"}</textarea>
														<br />
											                              条码登记号
											            <input type="text" class="form-control"
															name="barcodeNumber" value="01117bc93302" readonly="true" />
													</c:when>
													<c:when test="${actionType == 'gen2D'}">
														<textarea class="form-control" name="content">髣髴兮若轻云之蔽月，飘飖兮若流风之回雪。</textarea>
														<input type="hidden" name="barcodeNumber" value="" />
													</c:when>
													<c:when test="${actionType == 'gen1D'}">
														<textarea class="form-control" name="content">1234567890A Z</textarea>
														<input type="hidden" name="barcodeNumber" value="" />
													</c:when>
												</c:choose>
											</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="userName" class="control-label">生成图像的宽度</label>
											</div>
											<div class="col-xs-8">
												<input type="text" class="form-control" name="width"
													value="300" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="userName" class="control-label">生成图像的高度</label>
											</div>
											<div class="col-xs-8">
												<input type="text" class="form-control" name="height"
													value="300" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-info">
						<div id="#collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<button type="submit" class="btn btn-info btn-submit">提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-group col-lg-6 col-md-6 col-xs-6" id="accordion2">
					<div class="panel panel-info">
						<div id="collapseOne2" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<iframe id="result1" name="result1" width="100%"
												height="300px" frameborder="0"></iframe>
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
	<script type="text/javascript">
	$("#btn-submit").click(function(){
		fm.submit();
		$("#arcodeimg").attr("src","${ctx}/barcode.jpg");
	});
	</script>
</body>
</html>