<!DOCTYPE HTML>
<%@ page contentType="text/html; charset=GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/common/i18njs.jsp"%>
<%@ include file="/common/meta_css.jsp"%>

<HTML>
<HEAD>
<link rel="stylesheet" href="${ctx}/widgets/zTree_v3/css/demo.css"
	type="text/css">
<link rel="stylesheet"
	href="${ctx}/widgets/zTree_v3/css/zTreeStyle/zTreeStyle.css"
	type="text/css">
<script type="text/javascript" src="${ctx}/widgets/jquery/jquery.js"></script>
<script type="text/javascript"
	src="${ctx}/widgets/zTree_v3/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript"
	src="${ctx}/widgets/zTree_v3/js/jquery.ztree.excheck-3.5.js"></script>
</HEAD>

<body>
	<div>
		<div id="treeDemo" class="ztree"></div>
	</div>
</body>
</HTML>
<script type="text/javascript">
var setting = {
		data: {
			simpleData: {
				enable: true
			}
		}
	};

	var zNodes =[
		{ id:0, pId:-1, name:"º¯Êýdemo", open:true},
			{ id:1, pId:0, name:"Application.js"},
				{ id:11, pId:1, name:"formatFloat",url:"${ctx}/pages/demo/function/application.js/FormatFloat.jsp", target:"function"},
				{ id:11, pId:1, name:"pointTwo",url:"${ctx}/pages/demo/function/application.js/pointTwo.jsp", target:"function"},
				{ id:11, pId:1, name:"pointFour",url:"${ctx}/pages/demo/function/application.js/PointFour.jsp", target:"function"},
				{ id:11, pId:1, name:"isDate",url:"${ctx}/pages/demo/function/application.js/IsDate.jsp", target:"function"},
				{ id:14, pId:1, name:"dateDiff",url:"${ctx}/pages/demo/function/application.js/DateDiff.jsp", target:"function"},
				{ id:14, pId:1, name:"isLeapYear",url:"${ctx}/pages/demo/function/application.js/IsLeapYear.jsp", target:"function"},
				{ id:14, pId:1, name:"getNextDateFullDate",url:"${ctx}/pages/demo/function/application.js/GetNextDateFullDate.jsp", target:"function"},
				{ id:14, pId:1, name:"getNextMonthFullDate",url:"${ctx}/pages/demo/function/application.js/GetNextMonthFullDate.jsp", target:"function"},
				{ id:14, pId:1, name:"getNextYearFullDate",url:"${ctx}/pages/demo/function/application.js/GetNextYearFullDate.jsp", target:"function"},
				{ id:14, pId:1, name:"isNumeric",url:"${ctx}/pages/demo/function/application.js/IsNumeric.jsp", target:"function"},
				{ id:14, pId:1, name:"isInteger",url:"${ctx}/pages/demo/function/application.js/IsInteger.jsp", target:"function"},
				{ id:14, pId:1, name:"checkFullDate",url:"${ctx}/pages/demo/function/application.js/CheckFullDate.jsp", target:"function"},
				{ id:14, pId:1, name:"compareFullDate",url:"${ctx}/pages/demo/function/application.js/CompareFullDate.jsp", target:"function"},
			{ id:2, pId:0, name:"Common.js"},
				{ id:21, pId:2, name:"getElementOrder",url:"${ctx}/pages/demo/function/common.js/GetElementOrder.jsp", target:"function"},
				{ id:21, pId:2, name:"isFirstElement",url:"${ctx}/pages/demo/function/common.js/IsFirstElement.jsp", target:"function"},
				{ id:22, pId:2, name:"getElementCount",url:"${ctx}/pages/demo/function/common.js/GetElementCount.jsp", target:"function"},
				{ id:22, pId:2, name:"getByteLength",url:"${ctx}/pages/demo/function/common.js/GetByteLength.jsp", target:"function"},
				{ id:22, pId:2, name:"getTableElements",url:"${ctx}/pages/demo/function/common.js/GetTableElements.jsp", target:"function"},
				{ id:22, pId:2, name:"leftTrim",url:"${ctx}/pages/demo/function/common.js/LeftTrim.jsp", target:"function"},
				{ id:22, pId:2, name:"rightTrim",url:"${ctx}/pages/demo/function/common.js/RightTrim.jsp", target:"function"},
				{ id:22, pId:2, name:"trim",url:"${ctx}/pages/demo/function/common.js/Trim.jsp", target:"function"},
				{ id:22, pId:2, name:"regExpTest",url:"${ctx}/pages/demo/function/common.js/RegExpTest.jsp", target:"function"},
				{ id:22, pId:2, name:"replace",url:"${ctx}/pages/demo/function/common.js/Replace.jsp", target:"function"},
				{ id:22, pId:2, name:"isEmptyField",url:"${ctx}/pages/demo/function/common.js/IsEmptyField.jsp", target:"function"},
				{ id:22, pId:2, name:"formatNumberToString",url:"${ctx}/pages/demo/function/common.js/FormatNumberToString.jsp", target:"function"},
				{ id:22, pId:2, name:"formatNumberToDouble",url:"${ctx}/pages/demo/function/common.js/FormatNumberToDouble.jsp", target:"function"},
				{ id:22, pId:2, name:"fixNumber",url:"${ctx}/pages/demo/function/common.js/FixNumber.jsp", target:"function"},
				{ id:22, pId:2, name:"setFocus",url:"${ctx}/pages/demo/function/common.js/SetFocus.jsp", target:"function"},
				{ id:22, pId:2, name:"showMessage",url:"${ctx}/pages/demo/function/common.js/ShowMessage.jsp", target:"function"},
				{ id:22, pId:2, name:"setSelect",url:"${ctx}/pages/demo/function/common.js/SetSelect.jsp", target:"function"},
				{ id:22, pId:2, name:"newString",url:"${ctx}/pages/demo/function/common.js/NewString.jsp", target:"function"},
				{ id:22, pId:2, name:"openWindow",url:"${ctx}/pages/demo/function/common.js/OpenWindow.jsp", target:"function"},
				{ id:22, pId:2, name:"cookie",url:"${ctx}/pages/demo/function/common.js/Cookie.jsp", target:"function"},
				{ id:22, pId:2, name:"unformatNumber",url:"${ctx}/pages/demo/function/common.js/UnformatNumber.jsp", target:"function"},
				{ id:22, pId:2, name:"formatNumber",url:"${ctx}/pages/demo/function/common.js/FormatNumber.jsp", target:"function"},
				{ id:22, pId:2, name:"upperCaseFirstChar",url:"${ctx}/pages/demo/function/common.js/UpperCaseFirstChar.jsp", target:"function"},
				{ id:22, pId:2, name:"lowerCaseFirstChar",url:"${ctx}/pages/demo/function/common.js/LowerCaseFirstChar.jsp", target:"function"},
				{ id:22, pId:2, name:"copyOptions",url:"${ctx}/pages/demo/function/common.js/CopyOptions.jsp", target:"function"},
				{ id:22, pId:2, name:"round",url:"${ctx}/pages/demo/function/common.js/Round.jsp", target:"function"},
				{ id:22, pId:2, name:"point",url:"${ctx}/pages/demo/function/common.js/Point.jsp", target:"function"},
				{ id:22, pId:2, name:"readonlyAllInput",url:"${ctx}/pages/demo/function/common.js/ReadonlyAllInput.jsp", target:"function"},
				{ id:22, pId:2, name:"checkIsInteger",url:"${ctx}/pages/demo/function/common.js/CheckIsInteger.jsp", target:"function"},
				{ id:22, pId:2, name:"incompetent",url:"${ctx}/pages/demo/function/common.js/Incompetent.jsp", target:"function"},
				{ id:22, pId:2, name:"vs_str_BLength",url:"${ctx}/pages/demo/function/common.js/Vs_str_BLength.jsp", target:"function"},
			{ id:3, pId:0, name:"sinosoft.js"},
				{ id:32, pId:3, name:"editRecord",url:"${ctx}/pages/demo/function/sinosoft.js/EditRecord.jsp", target:"function"},
				{ id:32, pId:3, name:"showRecord",url:"${ctx}/pages/demo/function/sinosoft.js/ShowRecord.jsp", target:"function"},
				{ id:32, pId:3, name:"checkLength",url:"${ctx}/pages/demo/function/sinosoft.js/CheckLength.jsp", target:"function"},
			{ id:4, pId:0, name:"ins.framework"},
				/* { id:42, pId:4, name:"barcode.BarcodeGen",url:"${ctx}/pages/demo/function/ins.framework/BarcodeGen.jsp", target:"function"},
				{ id:42, pId:4, name:"barcode.BarcodeParser",url:"${ctx}/pages/demo/function/ins.framework/BarcodeParser.jsp", target:"function"}, */
				{ id:42, pId:4, name:"cache.CacheService",url:"${ctx}/pages/demo/function/ins.framework/CacheService.jsp", target:"function"},
				{ id:42, pId:4, name:"common.DateTime",url:"${ctx}/pages/demo/function/ins.framework/DateTime.jsp", target:"function"},
				{ id:42, pId:4, name:"common.EncryptUtils",url:"${ctx}/pages/demo/function/ins.framework/EncryptUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"common.HqlQueryRule",url:"${ctx}/pages/demo/function/ins.framework/HqlQueryRule.jsp", target:"function"},
				{ id:42, pId:4, name:"common.Page",url:"${ctx}/pages/demo/function/ins.framework/Page.jsp", target:"function"},
				{ id:42, pId:4, name:"common.QueryRule",url:"${ctx}/pages/demo/function/ins.framework/QueryRule.jsp", target:"function"},
				{ id:42, pId:4, name:"common.ServiceFactory",url:"${ctx}/pages/demo/function/ins.framework/ServiceFactory.jsp", target:"function"},
				{ id:42, pId:4, name:"dao.support.EntityUtils",url:"${ctx}/pages/demo/function/ins.framework/EntityUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"dao.EntityDaoHibernate",url:"${ctx}/pages/demo/function/ins.framework/EntityDaoHibernate.jsp", target:"function"},
				{ id:42, pId:4, name:"dao.GenericDaoHibernate",url:"${ctx}/pages/demo/function/ins.framework/GenericDaoHibernate.jsp", target:"function"},
				{ id:42, pId:4, name:"dao.SameDirClassFactoryBean",url:"${ctx}/pages/demo/function/ins.framework/SameDirClassFactoryBean.jsp", target:"function"},
				{ id:42, pId:4, name:"exception.BusinessException",url:"${ctx}/pages/demo/function/ins.framework/BusinessException.jsp", target:"function"},
				{ id:42, pId:4, name:"image.ImageService",url:"${ctx}/pages/demo/function/ins.framework/ImageService.jsp", target:"function"},
				{ id:42, pId:4, name:"mail.JavaMailServiceImpl",url:"${ctx}/pages/demo/function/ins.framework/JavaMailServiceImpl.jsp", target:"function"},
				{ id:42, pId:4, name:"rule.RuleService",url:"${ctx}/pages/demo/function/ins.framework/RuleService.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.BeanUtils",url:"${ctx}/pages/demo/function/ins.framework/BeanUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.DataUtils",url:"${ctx}/pages/demo/function/ins.framework/DataUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.EnvUtils",url:"${ctx}/pages/demo/function/ins.framework/EnvUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.FileUtils",url:"${ctx}/pages/demo/function/ins.framework/FileUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.GenericsUtils",url:"${ctx}/pages/demo/function/ins.framework/GenericsUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.NumberUtils",url:"${ctx}/pages/demo/function/ins.framework/NumberUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.RequestUtils",url:"${ctx}/pages/demo/function/ins.framework/RequestUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.StringUtils",url:"${ctx}/pages/demo/function/ins.framework/StringUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.SwingUtils",url:"${ctx}/pages/demo/function/ins.framework/SwingUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.UserSession",url:"${ctx}/pages/demo/function/ins.framework/UserSession.jsp", target:"function"},
				{ id:42, pId:4, name:"utils.XMLUtils",url:"${ctx}/pages/demo/function/ins.framework/XMLUtils.jsp", target:"function"},
				{ id:42, pId:4, name:"validator.BigDecimalTypeConverter",url:"${ctx}/pages/demo/function/ins.framework/BigDecimalTypeConverter.jsp", target:"function"},
				{ id:42, pId:4, name:"validator.LongRangeFieldValidator",url:"${ctx}/pages/demo/function/ins.framework/LongRangeFieldValidator.jsp", target:"function"},
				{ id:42, pId:4, name:"validator.StringLengthFieldValidator",url:"${ctx}/pages/demo/function/ins.framework/StringLengthFieldValidator.jsp", target:"function"},
				{ id:42, pId:4, name:"web.support.ObjectToMapCallback",url:"${ctx}/pages/demo/function/ins.framework/ObjectToMapCallback.jsp", target:"function"},
				{ id:42, pId:4, name:"web.Struts2Action",url:"${ctx}/pages/demo/function/ins.framework/Struts2Action.jsp", target:"function"}
	];

	$(function(){
		$.fn.zTree.init($("#treeDemo"), setting, zNodes);
	});
</script>