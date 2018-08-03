<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />

<div class="modal-dialog modal-lg">
	<div class="modal-content">
		<div class="modal-header">
			 <button type="button" class="close glyphicon glyphicon-remove-circle" data-dismiss="modal" aria-hidden="true" id="closeDialog2"></button>
			<h4 class="modal-title">修改密码</h4>
		</div>
		<div class="modal-body">
			<form id="form" class="form-horizontal" role="form" method="post">
				<input type="hidden" id="editMode" name="editMode" value="update"></input>
				<input type="hidden" name="checked" value="${sysUser.checked}"></input>
				<input type="hidden" name="salt" value="${sysUser.salt}"></input> <input
					type="hidden" name="validStatus" value="${sysUser.validStatus}"></input>
				<input id="id" name="id" class="form-control" type="hidden"
					value="${sysUser.id}" /> <input id="version" name="version"
					class="form-control" type="hidden" value="${sysUser.version}" />
					
<!-- 					usercode -->
					<div class="row">
						<div class="col-lg-10">
							<div class="row form-group">
								<div class="col-xs-4">
									<label class="control-label">员工代码<font color=red>*</font></label>
								</div>
								<div class="col-xs-8">
									<input id="userCode" name="userCode" type="text" class="form-control" readonly="true" value="${userCode}"/>
								</div>
							</div>
						</div>
						<div class="col-lg-2">
						</div>
					</div>
					
<!-- 					password -->
					<div class="row">
						<div class="col-lg-10">
							<div class="row form-group">
								<div class="col-xs-4">
									<label class="control-label">请输入密码<font color=red>*</font></label>
								</div>
								<div class="col-xs-8">
									<input id="password" name="sysUser.password" type="password" class="form-control" placeholder="请输入原始密码" />
								</div>
							</div>
						</div>
						<div id="forPassword" class="col-lg-2">
						</div>
					</div>
<!--                   newpassword -->
					<div class="row">
						<div class="col-lg-10">
							<div class="row form-group">
								<div class="col-xs-4">
									<label class="control-label">请输入新密码<font color=red>*</font></label>
								</div>
								<div class="col-xs-8">
									<input id="newPassword" name="newPassword" type="password" class="form-control" onblur="check(this.value)"  placeholder="密码位数为8-20且包含 大小写字母小写字母，数字 ，特殊字符中的 两种或以上"/>
									<span id="span1" name="span1"></span>
								</div>
								</div>
							</div>
						<div id="forNewPassword" class="col-lg-2">
						</div>
					</div>
						
<!-- 					passwordconfirm -->
					<div class="row">
						<div class="col-lg-10">
							<div class="row form-group">
								<div class="col-xs-4">
									<label class="control-label">新密码确认<font color=red>*</font></label>
								</div>
								<div class="col-xs-8">
									<input id="passwordConfirm" name="retypeNewPassword" type="password" class="form-control" placeholder="两次输入的密码必须相同"/>
								</div>
							</div>
						</div>
						<div id="forPasswordConfirm" class="col-lg-2">
						</div>
					</div>
					
<!-- 		           提示语 -->
					<div class="row" >
                 		<div class="col-lg-4">
						</div >
					 <div class="col-lg-6">
			         <font color=red ><i>*</i>&nbsp为必填项</font>
					</div>
					</div>
<!-- 					按钮 -->
					<div class="row">
						<div class="col-lg-4">
						</div>
						<div class="col-lg-6">
							<button class="btn btn-primary btn-submit" type="submit">保存</button>
							<button type="button" class="btn btn-default btn-return">关闭</button>
						</div>
                     </div>		

				</form>
		</div>
	</div>
<script src="${ctx}/${app_version}/common/js/AjaxEdit.js"></script>
	<script src="${ctx}/${app_version}/sysUser/js/ModifyPassword.js"></script>