<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<title>编辑基础代码类型信息</title>
</head>
<body id="all_title">
<div class="row">
	<div class="col-lg-12">
		<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" name="editMode" value="${editMode}"></input>
				<input type="hidden" name="sddType.version" value="${sddType.version}"></input>
			<div class="panel-group" id="accordion">
				<div id="EditSddTypeMain" align="left"> 
						<%@include file="SddTypeMainEdit.jspf"%>
				</div>
				<div id="EditSddCode" align="left"> 
						<%@include file="SddCodeEdit.jspf"%>
				</div>
				<div class="panel panel-info">
						<div id="#collapseFour" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<input type="submit" class="btn btn-info btn-submit" value="保存">
											<input type="button" class="btn btn-default btn-return" value="关闭" />
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
<script src="${ctx}/${app_version}/sdd/js/SddTypeEdit.js"></script>
</body>

</html>

