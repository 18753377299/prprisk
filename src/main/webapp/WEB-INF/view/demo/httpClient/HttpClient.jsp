<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>
<head>
<style>
</style>
</head>
<body>
	<div class="row recorded lookup">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form" namespace="/user"
				method="post">
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseOne">HttpClient演示相关说明</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="./readme-httpclient.txt">readme-httpclient.txt</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-4">
												<label for="userCode" class="control-label required">用户代码</label>
											</div>
											<div class="col-xs-8">
												<input id="userCode" name="prpDuser.userCode"
													class="form-control" type="text" />
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-12">
												<div class="text-center">
													<button type="button" class="btn btn-info" id="doGet">get请求</button>
													<button type="button" class="btn btn-info" id="doPost">post请求</button>
													<button type="button" class="btn btn-info" id="xmlDemo">xmlDemo请求</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseTwo">结果</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-2">
												<label for="result" class="control-label">结果</label>
											</div>
											<div class="row col-xs-10">
												<textarea id="result" class="form-control" rows="10"
													cols="80"></textarea>
											</div>
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

	<script type="text/javascript">
		$(function() { 
			$("#doGet").click(function(){
				if($("#userCode").val() == ""){
					alert("用户代码不能为空");
					return false;
				}
				$.ajax({
					type : "GET",
					url : "${ctx}/httpClient/user?userCode=" + $("#userCode").val(),
					data : "",
					async : false,
					success : function(obj) {
						$("#result").val(JSON.stringify(obj));
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert(textStatus + errorThrown);
					}
				});
			});
			
			$("#doPost").click(function(){
				if($("#userCode").val() == ""){
					alert("用户代码不能为空");
					return false;
				}
				$.ajax({
					type : "POST",
					url : "${ctx}/httpClient/user?userCode=" + $("#userCode").val(),
					data : "",
					async : false,
					success : function(obj) {
						$("#result").val(JSON.stringify(obj));
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert(textStatus + errorThrown);
					}
				});
			});
			$("#xmlDemo").click(function(){
				if($("#userCode").val() == ""){
					alert("用户代码不能为空");
					return false;
				}
				$.ajax({
					type : "POST",
					url : "${ctx}/httpClient/xmlTest/" + $("#userCode").val(),
					data : "",
					async : false,
					success : function(obj) {
						$("#result").val(obj.data);
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert(textStatus + errorThrown);
					}
				});
			});
		});

	</script>

</body>
</html>