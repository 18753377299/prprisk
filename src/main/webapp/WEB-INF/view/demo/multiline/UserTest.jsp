<!DOCTYPE html>
<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
<%@ include file="/common/taglibs.jsp"%>
<!-- 	<script type="text/javascript" src="${ctx}/pages/common/js/prpins_mulLine.js"></script>  -->
<script type="text/javascript" src="${ctx}/pages/common/js/HashMap.js"></script>
<script type="text/javascript"
	src="${ctx}/pages/common/js/endorse_common.js"></script>
<script type="text/javascript"
	src="${ctx}/pages/common/js/prpins_mulLine_iCheck.js"></script>
</head>
<body>
	<div class="row recorded lookup">
		<div class="col-lg-12">
			<div class="alert alert-danger error" style="display: none;">
				<span></span>.<br clear="all" />
			</div>
			<c:choose>
				<c:when test="${opreateType == 'edit'}">
					<c:set var="url" value="${ctx}/user/update.do"></c:set>
				</c:when>
				<c:when test="${opreateType == 'add'}">
					<c:set var="url" value="${ctx}/user/add.do"></c:set>
				</c:when>
			</c:choose>
			<form id="form" class="form-horizontal" role="form" action="${url}"
				namespace="/user" method="post">
				<div class="panel-group" id="accordion">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseTwo">用户配置</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<!-- input -->
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="userCode" class="control-label">用户代码</label>
											</div>
											<div class="col-xs-8">
												<input id="userCode" name="userCode" class="form-control"
													order="1" type="text" />
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="userName" class="control-label">用户名</label>
											</div>
											<div class="col-xs-8">
												<input id="userName" name="userName" class="form-control"
													order="2" type="text" />
											</div>
										</div>
									</div>
								</div>
								<!-- checkbox -->
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="role" class="control-label">角色</label>
											</div>
											<div class="col-xs-8">
												<label class="checkbox-inline"> <input
													type="checkbox" name="role" id="role1" value="1">总经理
												</label> <label class="checkbox-inline"> <input
													type="checkbox" name="role" id="role2" value="2">副总经理
												</label>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="role1" class="control-label">角色1</label>
											</div>
											<div class="col-xs-8">
												<label class="checkbox-inline"> <input
													type="checkbox" name="role1" id="role11" value="1">总经理1
												</label> <label class="checkbox-inline"> <input
													type="checkbox" name="role1" id="role12" value="2">副总经理1
												</label>
											</div>
										</div>
									</div>
								</div>
								<!-- select -->
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="sex" class="control-label">性别</label>
											</div>
											<div class="col-xs-8">
												<select name="sex" id="sex" class="form-control">
													<option value="1">男</option>
													<option value="2">女</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="sex1" class="control-label">性别1</label>
											</div>
											<div class="col-xs-8">
												<select name="sex1" id="sex1" class="form-control">
													<option value="1">男1</option>
													<option value="2">女1</option>
												</select>

											</div>
										</div>
									</div>
								</div>
								<!-- radio -->
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="MaritalStatus" class="control-label">婚姻状态</label>
											</div>
											<div class="col-xs-8">
												<label class="radio-inline"> <input type="radio"
													name="MaritalStatus" id="MaritalStatus1" value="1">已婚
												</label> <label class="radio-inline"> <input type="radio"
													name="MaritalStatus" id="MaritalStatus2" value="2">未婚
												</label>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="MaritalStatus1" class="control-label">婚姻状态1</label>
											</div>
											<div class="col-xs-8">
												<label class="radio-inline"> <input type="radio"
													name="MaritalStatus1" id="MaritalStatus11" value="1">已婚1
												</label> <label class="radio-inline"> <input type="radio"
													name="MaritalStatus1" id="MaritalStatus12" value="2">未婚1
												</label>
											</div>
										</div>
									</div>
								</div>
								<!-- textarea -->
								<div class="row">
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="remark" class="control-label">备注</label>
											</div>
											<div class="col-xs-8">
												<textarea id="remark" name="remark" class="form-control"
													rows="3"></textarea>
											</div>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-xs-12">
										<div class="row form-group control-group">
											<div class="col-xs-4">
												<label for="remark1" class="control-label">备注1</label>
											</div>
											<div class="col-xs-8">
												<textarea id="remark1" name="remark1" class="form-control"
													rows="3"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center">
									<button type="button" class="btn btn-info btn-insert"
										onclick="insertNewRow('condsTable');">确定</button>
									<button type="button" class="btn btn-info btn-update"
										onclick="preUpdate('condsTable','collapseTwo','prpDuser','selectIt');">修改</button>
									<button type="button" class="btn btn-info btn-delete"
										onclick="delRow('condsTable','selectIt');">删除</button>
								</div>
							</div>
						</div>
						<br>
					</div>

					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" href="#collapseFive">多行</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse in">
							<div class="panel-body">
								<table id="condsTable" description="MULLINE" class="display"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>单选</th>
											<th>序号</th>
											<th>userCode</th>
											<th>userName</th>
											<th>role</th>
											<th>role1</th>
											<th>sex</th>
											<th>sex1</th>
											<th>Marital status</th>
											<th>Marital status1</th>
											<th>remark</th>
											<th>remark1</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input id="selectIt" name="selectIt"
												class="radioBox" type="radio" value='0' /></td>
											<td><span class="num">1</span></td>
											<td><input id="prpDuser[0].userCode"
												name="prpDuser[0].userCode" value="000001"
												data-content="000000" class="form-control" type="text"
												readonly="readonly" /></td>
											<td><input id="prpDuser[0].userName"
												name="prpDuser[0].userName" value="张三" data-content="张三"
												class="form-control" type="text" readonly="readonly" /></td>
											<td><input id="prpDuser[0].role_show"
												name="prpDuser[0].role_show" value="总经理" data-content="总经理"
												class="form-control" type="text" readonly="readonly" /> <input
												id="prpDuser[0].role" name="prpDuser[0].role"
												class="form-control" type="hidden" value="1" /></td>
											<td><input id="prpDuser[0].role1_show"
												name="prpDuser[0].role1_show" value="总经理1"
												data-content="总经理1" class="form-control" type="text"
												readonly="readonly" /> <input id="prpDuser[0].role1"
												name="prpDuser[0].role1" class="form-control" type="hidden"
												value="1" /></td>
											<td><input id="prpDuser[0].sex_show"
												name="prpDuser[0].sex_show" value="男" data-content="男"
												class="form-control" type="text" readonly="readonly" /> <input
												id="prpDuser[0].sex" name="prpDuser[0].sex"
												class="form-control" type="hidden" value="1" /></td>
											<td><input id="prpDuser[0].sex1_show"
												name="prpDuser[0].sex1_show" value="男1" data-content="男1"
												class="form-control" type="text" readonly="readonly" /> <input
												id="prpDuser[0].sex1" name="prpDuser[0].sex1"
												class="form-control" type="hidden" value="1" /></td>
											<td><input id="prpDuser[0].MaritalStatus_show"
												name="prpDuser[0].MaritalStatus_show" value="已婚"
												data-content="已婚" class="form-control" type="text"
												readonly="readonly" /> <input
												id="prpDuser[0].MaritalStatus"
												name="prpDuser[0].MaritalStatus" class="form-control"
												type="hidden" value="1" /></td>
											<td><input id="prpDuser[0].MaritalStatus1_show"
												name="prpDuser[0].MaritalStatus1_show" value="已婚1"
												data-content="已婚1" class="form-control" type="text"
												readonly="readonly" /> <input
												id="prpDuser[0].MaritalStatus1"
												name="prpDuser[0].MaritalStatus1" class="form-control"
												type="hidden" value="1" /></td>
											<td><textarea id="prpDuser[0].remark"
													name="prpDuser[0].remark" data-content="231"
													class="form-control" readonly="readonly">231</textarea></td>
											<td><textarea id="prpDuser[0].remark1"
													name="prpDuser[0].remark1" data-content="131"
													class="form-control" readonly="readonly">131</textarea></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 必须隐藏域  -->
							<input type="hidden" id="updateNum" />
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
		var counter = $("#condsTable tbody tr").length;
		var condsTable;
		var columns;
		$(function() {
			condsTable = $('#condsTable').DataTable({
				"serverSide" : false,
				"paging" : false,
				"info" : false,
				"searching" : false,
				"scrollX" : true,
				"scrollY" : 400,
				"ordering" : false,
				"language" : {
					"emptyTable" : "没有数据",
				}
			
	//			"createdRow": function ( row, data, index ) {
		              //  $('td', row).eq(5).addClass('highlight');
//		              alert(index);
	//	        }
			}); 
			
			/**
				复选框、下拉框 有两个域 一个为隐藏真实值，一个为显示值  
				例：隐藏<input id="prpDuser_[0].role" name="prpDuser_[0].role" readonly class="form-control" type="hidden"/>
				显示值<input id="prpDuser_[0].role_show" name="prpDuser_[0].role_show" readonly class="form-control" type="text"	/>，
				序号 固定 class为 num
			**/
			columns = [
							'<input id="selectIt" name="selectIt" class="radioBox" type="radio" value="_[0]_"/>',
							'<span class="num"></span>',
							'<input id="prpDuser_[0].userCode" name="prpDuser_[0].userCode" readonly class="form-control" type="text"	/>',
							'<input id="prpDuser_[0].userName" name="prpDuser_[0].userName" readonly class="form-control" type="text"	/>',
							'<input id="prpDuser_[0].role_show" name="prpDuser_[0].role_show" readonly class="form-control" type="text"	/>'
						   +'<input id="prpDuser_[0].role" name="prpDuser_[0].role" readonly class="form-control" type="hidden"/>',
							'<input id="prpDuser_[0].role1_show" name="prpDuser_[0].role1_show" readonly class="form-control" type="text"	/>'
						   +'<input id="prpDuser_[0].role1" name="prpDuser_[0].role1" readonly class="form-control" type="hidden"/>',
							'<input id="prpDuser_[0].sex_show" name="prpDuser_[0].sex_show" readonly class="form-control" type="text"	/>'
						   +'<input id="prpDuser_[0].sex" name="prpDuser_[0].sex" readonly class="form-control" type="hidden"/>', 
							'<input id="prpDuser_[0].sex1_show" name="prpDuser_[0].sex1_show" readonly class="form-control" type="text"	/>'
						   +'<input id="prpDuser_[0].sex1" name="prpDuser_[0].sex1" readonly class="form-control" type="hidden"/>', 
							'<input id="prpDuser_[0].MaritalStatus_show" name="prpDuser_[0].MaritalStatus_show" readonly class="form-control" type="text"	/>'
						   +'<input id="prpDuser_[0].MaritalStatus" name="prpDuser_[0].MaritalStatus" readonly class="form-control" type="hidden"/>', 
							'<input id="prpDuser_[0].MaritalStatus1_show" name="prpDuser_[0].MaritalStatus1_show" readonly class="form-control" type="text"	/>'
						   +'<input id="prpDuser_[0].MaritalStatus1" name="prpDuser_[0].MaritalStatus1" readonly class="form-control" type="hidden"/>',
						   '<textarea id="prpDuser_[0].remark" name="prpDuser_[0].remark" readonly class="form-control"></textarea> ',
						   '<textarea id="prpDuser_[0].remark1" name="prpDuser_[0].remark1" readonly class="form-control"></textarea> '
						  ];
			
			//确定
			 
			
			//修改
			 
		}); 
		function insertNewRow(){
			counter = counter + 1;
			copyElements("collapseTwo",condsTable,columns,"prpDuser",counter,"selectIt");
		} 
		
	</script>


	<script type="text/javascript">
		$(function(){
			 EndorseMode.open();
		//	 $("input").each(function(index, element) {
		//		 $(this).attr("title",$(this).val());
		//	 });
			 initEndorseForTab();
			
		});
</script>
</body>
</html>