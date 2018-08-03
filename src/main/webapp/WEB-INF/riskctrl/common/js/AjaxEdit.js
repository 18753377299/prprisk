/**
 * Ajax模式Edit页面支持JS
 */
var submitInProgress = false;
function AjaxEdit(selector) {
	this.selector = selector;
	this.rules = {};
	this.messages = {};
	this.targetUrl = null;
	this.beforeSubmit = null;
	this.afterSuccess = null;
	this.afterFailure = null;
	this.method = "POST";
}
AjaxEdit.prototype.bindForm = function(temp) {
	alert("-------bindForm----------"+temp);
	var innerForm = $(this.selector);
	var innerFormTargetUrl = this.targetUrl;
	var innerFormValidRules = this.rules;
	var innerFormValidMessages = this.messages;
	var innerFormBeforeSubmit = this.beforeSubmit;
	var innerFormAfterSuccess = this.afterSuccess;
	var innerFormAfterFailure = this.afterFailure;
	var method = this.method;
	// 下面两个临时变量的值，用于callback中使用。
	var innerXMLHttpRequest = "";
	var innerTextStatus = "";
	requiredElements(innerFormValidRules);
	var validData = {
		rules : innerFormValidRules,
		messages : innerFormValidMessages,

		ignore : "",
		invalidHandler : function(e, validator) {
			var errors = validator.numberOfInvalids();
			if (errors) {
				var message = errors == 1 ? '您有1项未填写. 如下表单中已标注。' : '您有 '
						+ errors + ' 项未填写.  如下表单中已标注';
				$("div.error span").html(message);
				$("div.error").show();
			} else {
				$("div.error").hide();
			}
			;
		},
		errorPlacement : function(error, element) {
			error.css("color", "red").css("font-size", "12px");
			var elem = $(element);
			if (elem.parent().attr("class").indexOf("input-group") != -1
					|| elem.parent().attr("class").indexOf("form_date") != -1) {
				error.appendTo(elem.parent().parent());
			} else {
				error.appendTo(elem.parent());
			}
		},
		highlight : function(element, errorClass, validClass) { // element出错时触发
			$(element).addClass("alert-danger error");
		},
		unhighlight : function(element, errorClass) { // element通过验证时触发
			$(element).removeClass("alert-danger error");
		},
		success : $.noop,
		submitHandler : function() {
			if (submitInProgress) {
				return false;
			}
			if (innerFormBeforeSubmit != null) {
				innerFormBeforeSubmit();
			}
			submitInProgress = true;
			$("div.error").hide();

			$.ajax({
				// 提交数据的类型 POST GET
				type : "POST",
				// 提交的网址
				url : innerFormTargetUrl,
				// 提交的数据
				data : temp,
				// form表单提交：开始
				// innerForm.serialize()+"&_method="+method,
				// form表单提交：结束
				// json提交数据：开始
//				innerForm.serializeJSON(),
				// JSON.stringify(vm.$data),
				contentType : 'application/json;charset=utf-8',
				// json提交数据：结束
				// 返回数据的格式
				datatype : "json",
				// "xml", "html", "script", "json", "jsonp", "text".
				// 在请求之前调用的函数
				beforeSend : function() {
					var msgOption = {
						message : "操作进行中，请稍候...",
						closeButton : false,
						animate : false,
						buttons : {}
					};
					bootbox.dialog(msgOption);
				},
				// 成功返回之后调用的函数
				success : function(data) {
					var result = null;
					try {
						result = eval(data);
					} catch (exception) {
						history.go(0);
					}
					var messageText = "";
					var success = true;
					if (result.status == "200") {
						messageText = '操作成功';
					} else {
						success = false;
						messageText = data.datas['EX_MAIN'] + "<br/>"
								+ "详细信息如下:" + "<br/>"
								+ data.datas['EX_MESSAGE'];
						if (messageText == null || messageText == '') {
							messageText = "未知错误";
						}
					}
					var msgOption = {
						message : messageText,
						closeButton : false,
						animate : false,
						buttons : {
							close : {
								label : "确定",
								className : "btn-success",
								callback : function() {
									bootbox.hideAll();
									if (success) {
										if (innerFormAfterSuccess != null) {
											innerFormAfterSuccess(
													innerXMLHttpRequest,
													innerTextStatus);
										}
									} else {
										if (innerFormAfterFailure != null) {
											innerFormAfterFailure(
													innerXMLHttpRequest,
													innerTextStatus);
										}
									}
									// 重置complete设置的这两个变量
									innerXMLHttpRequest = null;
									innerTextStatus = null;
								}
							}
						}
					};
					bootbox.dialog(msgOption);
				},
				// 调用执行后调用的函数
				complete : function(XMLHttpRequest, textStatus) {
					// alert(XMLHttpRequest.responseText);
					// alert(textStatus);
					// HideLoading();
					submitInProgress = false;
					// 调用成功后设置这两个临时变量的值，用于callback中使用。
					innerXMLHttpRequest = XMLHttpRequest;
					innerTextStatus = textStatus;
				},
				// 调用出错执行的函数
				error : function() {
				},
				clearForm : true,
			});
			return false;
		},
	// Odd workaround for errorPlacement not firing!
	};
	innerForm.validate(validData);
};
$.extend($.validator.messages, {
	required : "这是必填字段",
	remote : "请修正此字段",
	email : "请输入有效的电子邮件地址",
	url : "请输入有效的网址",
	date : "请输入有效的日期",
	dateISO : "请输入有效的日期 (YYYY-MM-DD)",
	number : "请输入有效的数字",
	digits : "只能输入数字",
	creditcard : "请输入有效的信用卡号码",
	equalTo : "输入值必须 相同。",
	extension : "请输入有效的后缀",
	maxlength : $.validator.format("最多可以输入 {0} 个字符"),
	minlength : $.validator.format("最少要输入 {0} 个字符"),
	rangelength : $.validator.format("请输入长度在 {0} 到 {1} 之间的字符串"),
	range : $.validator.format("请输入范围在 {0} 到 {1} 之间的数值"),
	max : $.validator.format("请输入不大于 {0} 的数值"),
	min : $.validator.format("请输入不小于 {0} 的数值")
});
function requiredElements(rules) {
	if (rules != null) {
		var elementsRule = eval(rules);
		for ( var e in elementsRule) {
			var ele = elementsRule[e];
			if (typeof (ele) == 'string') {
				if (ele == 'required') {
					$("[for='" + e + "']")
							.prepend(
									'<font color="#FF0000" size="+1" style="vertical-align: middle">*</font>');
				}
			} else {
				for ( var i in ele) {
					if (typeof (ele[i]) == 'string') {
						if (ele[i] == 'required') {
							$("[for='" + e + "']")
									.prepend(
											'<font color="#FF0000" size="+1" style="vertical-align: middle">*</font>');
						}
					}
				}
			}
		}
	}

}
