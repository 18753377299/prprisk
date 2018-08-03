<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<html>

<head>
<title>metro-zTree</title>
<!--
     -->
<link href='${ctx }/metro.css' rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="row">>
		<div class="col-lg-12">
			<div class="panel-group" id="accordionTwo">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionTwo"
								href="#collapseTwo">demo列表</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="col-lg-2 col-md-6 col-xs-12">
								<ul id="treeDemo" class="ztree"></ul>
							</div>
							<div class="col-lg-10 col-md-6 col-xs-12">
								<iframe name="function" width="100%" height="600px"
									frameborder="0" scrolling="yes"></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="ajax-modal" class="modal fade col-lg-4 col-lg-offset-4"
		tabindex="-1" style="display: none;"></div>
	<script
		src="${ctx}/static/zTree/${zTree_version}/js/jquery.ztree.all.js"
		type="text/javascript"></script>
	<script type="text/javascript">
	var setting = {
			data: {
				simpleData: {
					enable: true
				}
			}
		};
		var zNodes =[
			{ id:0, pId:-1, name:"表单域demo", open:true}, 
				{ id:1, pId:0, name:"复选框",url:"${ctx}/coding/demoPage/prepareCheckBox", target:"function"},
				{ id:1, pId:0, name:"单选下拉框",url:"${ctx}/coding/demoPage/prepareSelectBox", target:"function"},
				{ id:1, pId:0, name:"单选",url:"${ctx}/coding/demoPage/prepareRadio", target:"function"},
				{ id:1, pId:0, name:"必录项",url:"${ctx}/coding/demoPage/prepareValidation", target:"function"},
				{ id:1, pId:0, name:"按钮",url:"${ctx}/coding/demoPage/prepareButton", target:"function"},
				{ id:1, pId:0, name:"日期",url:"${ctx}/coding/demoPage/prepareDate", target:"function"},
				{ id:1, pId:0, name:"代码翻译",url:"${ctx}/coding/demoPage/prepareCodeTranslation", target:"function"},
				{ id:1, pId:0, name:"复选下拉框",url:"${ctx}/coding/demoPage/prepareMultiSelectBox", target:"function"},
				{ id:1, pId:0, name:"Tab页签",url:"${ctx}/coding/demoPage/prepareTab", target:"function"},
				{ id:1, pId:0, name:"Ztree展示",url:"http://www.ztree.me/v3/demo.php", target:"function"}
					
		];

		$(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
	</script>
</body>
</html>
