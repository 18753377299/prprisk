<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>身份切换</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/"><fmt:message
							key="label.home" /></a></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys" /></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys.identity" /></li>
				<li class="active"><i class="fa fa-table"></i> <fmt:message
						key="label.home.sys.identity.switch" /></li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="panel-group" id="accordion">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne"><fmt:message
									key="label.switchlist.switchlist" /></a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<a id="${ctx }/runas/switchBack" href=""><fmt:message
										key="label.switchlist.switchback" /></a>
							</div>
							<div class="row">
								<table
									class="table table-striped table-bordered table-hover jqueryDataTable"
									id="resultDataTable">
									<thead>
										<tr>
											<th>userCode</th>
											<th>userName</th>
											<th>email</th>
											<th>mobilePhone</th>
											<th>operation</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="vo" items="${sysUsers }">
											<tr>
												<td>${vo.userCode }</td>
												<td>${vo.userName }</td>
												<td>${vo.email }</td>
												<td>${vo.mobilePhone }</td>
												<td>
													<!-- 如果要更改"切换身份"四个字，需要同步修改该页面对应的js文件 --> <a
													id="${ctx }/runas/switchTo/${vo.userCode}" href=""><fmt:message
															key="label.switchlist.switch" /></a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- /.row -->
	<script src="${ctx}/${app_version}/runas/js/SwitchList.js"></script>
</body>
</html>