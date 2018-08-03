<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<title>编辑pdfcServer信息</title>
</head>

<body>
	<div class="row recorded lookup">
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			
			<form id="form" class="form-horizontal" role="form"  method="post">
				<input type="hidden" id="editMode" name="editMode" value="${editMode}" />
										
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
											<c:choose>
											 <c:when test="${editMode == 'update'}">
											 		<input type="hidden" id="id" name="id" value="${pdfcServer.id}" />
													<div class="col-xs-6 form-control-static">${pdfcServer.id}</div>
											</c:when>
											<c:when test="${editMode == 'create'}">
											  <div class="col-xs-6">
											    <input type="text" name="id" id="id" value="${pdfcServer.id}"  class="form-control " placeholder="输入 id" />
											  </div>
											</c:when>						
											</c:choose>
												
										</div>
									</div>
					
								
									
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="hostName" class="control-label">主机名:</label>
											</div>
											<div class="col-xs-6">
											   <input type="text" name="hostName" id="hostName" value="${pdfcServer.hostName}"  class="form-control " placeholder="输入主机名" />
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
											<div class="col-xs-6">
											   <input type="text" name="os" id="os" value="${pdfcServer.os}"  class="form-control " placeholder="输入操作系统" />
											</div>
										</div>
									</div>
					
								
									
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="cpu" class="control-label">cup核数:</label>
											</div>
											<div class="col-xs-6">
											   <input type="text" name="cpu" id="cpu" value="${pdfcServer.cpu}"  class="form-control " placeholder="输入cup核数" />
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
											<div class="col-xs-6">
											   <input type="text" name="mem" id="mem" value="${pdfcServer.mem}"  class="form-control " placeholder="输入内存(G)" />
											</div>
										</div>
									</div>
					
								
									
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="hd" class="control-label">硬盘(G):</label>
											</div>
											<div class="col-xs-6">
											   <input type="text" name="hd" id="hd" value="${pdfcServer.hd}"  class="form-control " placeholder="输入硬盘(G)" />
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
											<div class="col-xs-6">
											   <input type="text" name="hdInfo" id="hdInfo" value="${pdfcServer.hdInfo}"  class="form-control " placeholder="输入硬盘信息" />
											</div>
										</div>
									</div>
					
								
									
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="ip" class="control-label">IP地址:</label>
											</div>
											<div class="col-xs-6">
											   <input type="text" name="ip" id="ip" value="${pdfcServer.ip}"  class="form-control " placeholder="输入 IP地址" />
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
											<div class="col-xs-6">
											   <input type="text" name="remark" id="remark" value="${pdfcServer.remark}"  class="form-control " placeholder="输入备注" />
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
											<button type="submit" class="btn btn-info btn-submit">提交</button>
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
	
<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
<script language="javascript" src="${ctx}/${app_version}/platform/pdfcserver/js/PdfcServerEdit.js"></script>
</body>
</html>
