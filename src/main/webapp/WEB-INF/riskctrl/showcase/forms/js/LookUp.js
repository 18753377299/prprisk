/**
 * 
 */
$(function() {
	$("button.btn-return").click(function() {
		history.go(-1);
	});
	$("#userCode").on("dblclick",function(){
		userLookupDialog("userCode","userName");
	});
	
});
//客户管理信息范围弹出对话框
function userLookupDialog(codeFieldId,nameFieldId){
		var $modal = $('#ajax-sysUserModal');
		$('body').modalmanager('loading');
		$modal.load(contextPath + "/lookup/userLookUp.dialog?codeFieldId="+codeFieldId+"&nameFieldId="+nameFieldId, '', function(){
		      $modal.modal();
		});
};