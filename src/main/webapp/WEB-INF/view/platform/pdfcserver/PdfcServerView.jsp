<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<title>查看pdfcServer信息</title>
</head>

<body>
	<div class="row recorded lookup">
		<div class="col-lg-12">
			<div class="well well-sm">
				<h5 class="panel-title">pdfcServer信息</h5>
			</div>
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<form id="form" class="form-horizontal" role="form" method="post">					
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne">基本信息</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="id" class="control-label">id:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.id}
											</div>
												
										</div>
									</div>
					
								
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="hostName" class="control-label">主机名:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.hostName}
											</div>
										</div>
									</div>
					
								</div>
								
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="os" class="control-label">操作系统:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.os}
											</div>
										</div>
									</div>
					
								
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="cpu" class="control-label">cup核数:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.cpu}
											</div>
										</div>
									</div>
					
								</div>
								
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="mem" class="control-label">内存(G):</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.mem}
											</div>
										</div>
									</div>
					
								
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="hd" class="control-label">硬盘(g):</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.hd}
											</div>
										</div>
									</div>
					
								</div>
								
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="hdInfo" class="control-label">硬盘信息:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.hdInfo}
											</div>
										</div>
									</div>
					
								
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="ip" class="control-label">IP地址:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.ip}
											</div>
										</div>
									</div>
					
								</div>
								
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="remark" class="control-label">备注:</label>
											</div>
											<div class="col-xs-6 form-control-static">
												${pdfcServer.remark}
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
											<button type="button" class="btn btn-default btn-return">返回</button>
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
<script language="javascript">
$(function() {
	//1.控件初始化
	
	//2.控件事件
	$("button.btn-return").click(function() {
		history.go(-1);
	});
});
</script>
</body>
</html>
