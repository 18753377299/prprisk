/**框架JS文件，所有系统通用，仅在arch5-framework项目中修改**/

jQuery.extend(jQuery.validator.messages, {
	required: "必填字段",
	remote: "请修正该字段",
	email: "请输入正确格式的电子邮件",
	url: "请输入合法的网址",
	date: "请输入合法的日期",
	dateISO: "请输入合法的日期 (ISO).",
	number: "请输入合法的数字",
	digits: "只能输入整数",
	creditcard: "请输入合法的信用卡号",
	equalTo: "请再次输入相同的值",
	accept: "请输入拥有合法后缀名的字符串",
	maxlength: jQuery.validator.format("请输入一个长度最多是 {0} 的字符串"),
	minlength: jQuery.validator.format("请输入一个长度最少是 {0} 的字符串"),
	rangelength: jQuery.validator.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
	range: jQuery.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
	max: jQuery.validator.format("请输入一个最大为 {0} 的值"),
	min: jQuery.validator.format("请输入一个最小为 {0} 的值"),
	stringEN: "只能输入数字及字母",
	decimal: "只能输入数字(两位小数)",
	byteRangeLength: jQuery.validator.format("请确保输入的值在{0}-{1}个字节之间(一个中文字算2个字节)")
});


/**
 * 多个元素必填其中一个校验
 * @param fmElement form表单jquery对象 $(form)
 * @param name 元素 name 属性 可以为多个 
 * @returns {Boolean} 全为空 返回 false， 其中一个不为空 返回 true
 */
function notNullOne(fmElement){
	 
	var t = arguments.length;
	for(var i = 1 ; i < t  ; i++){
		var val = $(fmElement).find("[name='" + arguments[i] + "']").val();
		if(val != null && val.trim() != '') {
			return true;
		}
	}
	return false;
}


/**
 * 日期格式化
 * @param format
 */
Date.prototype.format = function(format){ 
	var o = { 
	"M+" : this.getMonth()+1, //month 
	"d+" : this.getDate(), //day 
	"h+" : this.getHours(), //hour 
	"m+" : this.getMinutes(), //minute 
	"s+" : this.getSeconds(), //second 
	"q+" : Math.floor((this.getMonth()+3)/3), //quarter 
	"S" : this.getMilliseconds() //millisecond 
	};

	if(/(y+)/.test(format)) { 
		format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
	} 

	for(var k in o) { 
		if(new RegExp("("+ k +")").test(format)) { 
			format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length)); 
		} 
	} 
	if(format == 'NaN-aN-aN'){
		format = '';
	}
	return format; 
};


/** 日期转为字符串 */
function getDateToStr(date) {
	var y = date.getYear();
	var m = date.getMonth() + 1;// 获取当前月份的日期
	var d = date.getDate();
	if (m < 10)
		m = "0" + m;
	if (d < 10)
		d = "0" + d;
	return y + "-" + m + "-" + d;
}
/** 字符串转为日期 */
function getStrToDate(dateStr){
	dateStr=dateStr.replace("-",",");
	dateStr=new Date(dateStr);
	return dateStr;
}
/**增加几天后日期字符串*/
function getAddDayDateStr(date,addDayCount) {
	var y = date.getYear();
	var m = date.getMonth() + 1;// 获取当前月份的日期
	var d = date.getDate()+addDayCount;
	if(m<10)m="0"+m;
	if(d<10)d="0"+d;
	return y + "-" + m + "-" + d;
}
/**增加几年后日期字符串*/
function getAddYearDateStr(date,addYearCount) {
	var y = date.getYear()+addYearCount;
	var m = date.getMonth() + 1;// 获取当前月份的日期
	var d = date.getDate();
	if(m<10)m="0"+m;
	if(d<10)d="0"+d;
	return y + "-" + m + "-" + d;
}


