<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>
<head>
<title>岗位代码表维护</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form name="fm1" id="fm1" action="${ctx}/excelTest/upload.dialog"
				method="post" enctype="multipart/form-data">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">Excel文件上传</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="file" class="control-label">Excel文件</label>
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
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<input disabled class="btn btn-info" type="submit" value="导入">
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-info" type="button">导出</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapseTwo"><fmt:message key="label.home.compicktreelist.Operationguide" /></a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body">

										<p>
											<br>点击“导出”，下载一张名为"ExcelTest.xlsx"的表；</br> 
											<br>连接数据库，删除"excel_test"表中的数据；</br>
											<br>点击“选择文件”，选择刚才下载的"ExcelTest.xlsx"表；</br> 
											<br>点击“导入”，会跳转到导入结果的页面</br>
											<br>连接数据库，查看"excel_test"表，验证导入结果是否准确。 </br> <br></br> <br></br>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
<script src="${ctx}/${app_version}/showcase/excel/js/Show.js"></script>
</body>
</html>

