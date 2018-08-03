<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>
<head>
<title>文件上传</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form name="fm1" id="fm1" action="${ctx}/upload/upload.do"
				method="post" enctype="multipart/form-data">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">单个文件上传</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="file" class="control-label">单个文件</label>
											</div>
											<div class="col-xs-6">
												<input type="file" name="file" id="file" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6"></div>
											<div class="col-xs-6"></div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4"></div>
											<div class="col-xs-8"></div>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<input class="btn btn-info" type="submit" value="上传">
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</form>
			<form name="fm2" id="fm2" action="${ctx}/upload/uploadFiles.do"
				method="post" enctype="multipart/form-data">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">多个文件上传</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="file" class="control-label">多个文件</label>
											</div>
											<div class="col-xs-6">
												<input type="file" name="files" id="file1" multiple="multiple"/><br /> <input
													type="file" name="files" id="file2" multiple="multiple" />
											</div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6"></div>
											<div class="col-xs-6"></div>
										</div>
									</div>
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4"></div>
											<div class="col-xs-8"></div>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<input class="btn btn-info" type="submit" value="上传">
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

</body>
</html>

