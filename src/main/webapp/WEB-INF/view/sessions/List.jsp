<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>在线人数列表</title>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel-group" id="accordion">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne">当前在线</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<table
									class="table table-striped table-bordered table-hover jqueryDataTable"
									id="resultDataTable">
									<thead>
										<tr>
											<th>用户代码</th>
											<th>用户名</th>
											<th>主机</th>
											<th>上次刷新时间</th>
											<th>登录时间</th>
											<th>超时时间</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="vo" items="${vos }">
											<tr>
												<td>${vo.sysUserVo.userCode }</td>
												<td>${vo.sysUserVo.userName }</td>
												<td>${vo.host }</td>
												<td><fmt:formatDate value="${vo.lastAccessTime }"
														pattern="yyyy-MM-dd HH:mm:ss" /></td>
												<td><fmt:formatDate value="${vo.startTimesStamp }"
														pattern="yyyy-MM-dd HH:mm:ss" /></td>
												<td>${vo.timeout }min</td>
												<td>
													<!-- 如果要更改"强制下线"四个字，需要同步修改该页面对应的js文件 --> <a
													id="${ctx }/sessions/forceLogout/${vo.id}" href="">强制下线</a>
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
	<script src="${ctx}/${app_version}/sessions/js/List.js"></script>
</body>
</html>