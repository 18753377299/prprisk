<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message key="label.home.Demonstrationeffect" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">


									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="name" class=" control-label "><fmt:message key="label.home.compicktreelist.ComCName" /></label>
											</div>
											<div class="col-xs-6">

												<input id="name" name="[form][name][form]"
													class="form-control"
													type="text" placeholder="Search name"><input
													name="[form][name][dataType]" type="hidden"
													value="String" /> <input
													name="[form][name][queryType]" type="hidden"
													value="begin with" />
											</div>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo"><fmt:message key="label.home.compicktreelist.Operationguide" /></a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">

												<p>
													<br>点击输入框，会列出所有的一级部门，并且展开可以看到其下级部门；</br> <br>输入“广”，会列出所有带广字的部门以及其上级部门
													； </br> <br>输入“广东”，会列出所有带广东两字的部门以及其上级部门，进行进一步的缩小范围 ； </br> <br>输入机构编码，也会列出带有该数字的部门；</br>
													<br>如果输入机构名称不存在匹配，会提示用户重新输入或选择；</br> <br></br> <br></br>
												</p>
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
	<div id="comTree" class="menuContent"></div>
	<!-- /.row -->
	<script src="${ctx}/${app_version}/showcase/compicktree/js/ComPickTreeList.js"></script>
	<%--  <script src="${ctx}/js/showcase/compicktree/ComPickTreeList.js"></script>  --%>
	<%@include file="/WEB-INF/view/common/ZTreeCode.jspf"%>
</body>
</html>