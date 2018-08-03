/**
 * 
 */

$(function() {

	//1.�ؼ���ʼ��
	
	//2.�ؼ��¼�
	$("button.btn-return").click(function() {
		history.go(-1);
	});
		
	//3.ҳ��У��
	//У�����?
	var rules = {

	};
	//У����ʾ
	var messages = {
		
	};

	//4.Ajax���������?
	var ajaxEdit = new AjaxEdit("#form");
	ajaxEdit.rules = rules;
	ajaxEdit.messages = messages;
	var editMode=$("#editMode").val();
	if(editMode=='create'){
		ajaxEdit.targetUrl = contextPath + "/pdfcserver";
	}
	else if(editMode=='update'){
		ajaxEdit.targetUrl = contextPath + "/pdfcserver/"+$("#id").val();
		ajaxEdit.method="PUT";
		
	}
	ajaxEdit.afterSuccess=function(){
		history.go(-1); 
	}; 
	//绑定表单
	
	ajaxEdit.bindForm();
	
});