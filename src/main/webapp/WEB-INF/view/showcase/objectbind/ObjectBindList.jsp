<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<input type="hidden" id="bread" value='<%=request.getParameter("menu") %>'/>
				<c:set var="menu" value='<%=request.getParameter("menu") %>'/>
				<app:breadcrumb home="首页" menuId="${menu}"/>
			</ol>
		</div>
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/exercise/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.Demonstrationeffect" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">

									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-formModel"
												id="formModel" type="button">FormModel</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>

	</div>

	<!-- /.row -->
	<script
		src="${ctx}/${app_version}/showcase/objectbind/js/ObjectBindList.js"></script>

	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
</body>
</html>