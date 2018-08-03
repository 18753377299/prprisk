<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<%@ include file="/WEB-INF/layout/common/common-css.jspf"%>
<%@ include file="/WEB-INF/layout/common/common-js.jspf"%>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<div class="panel-group" id="accordion">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#collapseBase">结果</a>
						</h4>
					</div>
					<div id="collapseBase" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<div class="row form-group">
									<span>上传成功！</span>
									<span>文件地址：</span>
									<ul>
										<c:forEach var="path" items="${paths }">
											<li>${path }</li>	
										</c:forEach>
									</ul>
									</div>
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-lg-12">
									<div class="text-center">
										<button type="button" class="btn btn-info btn-close">返回</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(".btn-close").click(function(){
		location.href = contextPath + "/upload/preUpload";
	});
	</script>
</body>
</html>