<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
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
			<form id="form" class="form-horizontal" role="form" action="${url}"
				namespace="/user" method="post">
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne">菜单</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<a href="${ctx}/barcode/prepareForm.do?actionType=gen1D"
													target="form">生成一维码</a> | <a
													href="${ctx}/barcode/prepareForm.do?actionType=gen2D"
													target="form">生成二维条码（无加密）</a> | <a
													href="${ctx}/barcode/prepareForm.do?actionType=gen2DWithEncrypt"
													target="form">生成二维条码（有加密）</a>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-12">依赖包： picc-barcode-1.0-jdk15.jar
												zxing-core-2.1-jdk15.jar zxing-javase-2.1-jdk15.jar</div>
										</div>
									</div>
								</div>
								<!-- row 强制换行 -->
							</div>
						</div>
					</div>

					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseTwo">生成码</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<iframe id="form" name="form" width="100%" height="400px"
										frameborder="0"></iframe>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseFive">识别码</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse in">
							<div class="panel-body">
								<div id="collapse2" class="panel-collapse collapse in">
									<div class="panel-body">
										<iframe id="result2" name="result2" width="100%"
											height="300px" frameborder="0"></iframe>
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>