<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<link
	href="${ctx}/static/adminlte/${adminlte_version}/plugins/datatables/dataTables.bootstrap.css?v=${adminlte_version} rel="stylesheet">
<title>pdfcServer</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12" > <!-- style="position:absolute;" -->
			<form name="form" id="form" class="form-horizontal" role="form">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">请输入查询条:</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">id:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][id][value]" id="id" value="${id}"  class="form-control" placeholder="输入 id" />
											    	<input name="[form][id][dataType]" type="hidden" value="String" />
												   	<input name="[form][id][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">主机名:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][hostName][value]" id="hostName" value="${hostName}"  class="form-control" placeholder="输入主机名" />
											    	<input name="[form][hostName][dataType]" type="hidden" value="String" />
												   	<input name="[form][hostName][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">操作系统:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][os][value]" id="os" value="${os}"  class="form-control" placeholder="输入操作系统" />
											    	<input name="[form][os][dataType]" type="hidden" value="String" />
												   	<input name="[form][os][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
								</div>
									
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">cup核数:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][cpu][value]" id="cpu" value="${cpu}"  class="form-control" placeholder="输入cup核数" />
											    	<input name="[form][cpu][dataType]" type="hidden" value="String" />
												   	<input name="[form][cpu][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">内存(G):</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][mem][value]" id="mem" value="${mem}"  class="form-control" placeholder="输入内存(G)" />
											    	<input name="[form][mem][dataType]" type="hidden" value="String" />
												   	<input name="[form][mem][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">硬盘(G):</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][hd][value]" id="hd" value="${hd}"  class="form-control" placeholder="输入硬盘(G)" />
											    	<input name="[form][hd][dataType]" type="hidden" value="String" />
												   	<input name="[form][hd][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
								</div>
									
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">硬盘信息:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][hdInfo][value]" id="hdInfo" value="${hdInfo}"  class="form-control" placeholder="输入硬盘信息" />
											    	<input name="[form][hdInfo][dataType]" type="hidden" value="String" />
												   	<input name="[form][hdInfo][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">IP地址:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][ip][value]" id="ip" value="${ip}"  class="form-control" placeholder="输入IP地址" />
											    	<input name="[form][ip][dataType]" type="hidden" value="String" />
												   	<input name="[form][ip][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
									
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="userCode" class="control-label">备注:</label>
											</div>
											<div class="col-xs-6">
											    	<input type="text" name="[form][remark][value]" id="remark" value="${remark}"  class="form-control" placeholder="输入备注" />
											    	<input name="[form][remark][dataType]" type="hidden" value="String" />
												   	<input name="[form][remark][queryType]" type="hidden" value="begin with" />
												 
											</div>
										</div>
									</div>
								</div>
									
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-search" id="search"
												type="button">查询</button>
										</div>
									</div>
								
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<button type="button" class="btn btn-primary btn-sm btn-create">增加</button>
						<button type="button" class="btn btn-primary btn-sm btn-deleteAll">批量删除</button>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<div class="table-responsive">
						<!-- 	<table 	class="table table-striped table-bordered table-hover jqueryDataTable" 	id="resultDataTable">  -->
						<table id="resultDataTable" class="display" cellspacing="0" width="100%">
								<thead>
									<tr>
									    <th>id</th>
									    <th>主机名</th>
									    <th>操作系统</th>
									    <th>cup核数</th>
									    <th>内存(G)</th>
									    <th>硬盘(G)</th>
									    <th>硬盘信息</th>
									    <th>IP地址</th>
									    <th>备注</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
<script language="javascript" src="${ctx}/${app_version}/platform/pdfcserver/js/PdfcServerList.js"></script>
<!-- <%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%> -->
</body>
</html>
