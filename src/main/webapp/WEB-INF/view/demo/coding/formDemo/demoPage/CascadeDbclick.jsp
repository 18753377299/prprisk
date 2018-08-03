<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
</HEAD>

<body>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<br /> <br /> <br />
		<div>
			<div style="width: 100%; float: left">
				<table width="100%" border="0" class="fix_table">
					<tr>
						<td class="left3">归属部门代码：</td>
						<td class="right3"><input type="text" name="prpCmain.comCode"
							class="input_code" value="00000000" description="归属机构"
							ondblclick="code_CodeSelect(this,'ComCode','0,1','Y','riskCode=${riskCode}')"
							onchange="code_CodeChange(this,'ComCode','0,1','Y','riskCode=${riskCode}')" />
						</td>
						<td class="left3">归属部门名称：</td>
						<td class="right3"><input type="text"
							name="prpCmain.handler1Code" value="北京市分公司" class="input_name"
							readonly="readonly" /></td>
						<td class="left3">归属人代码：</td>
						<td class="right3"><input type="text" name="test1"
							class="input_code" value="A0000000001"
							ondblclick="if(fm['prpCmain.comCode'].value == ''){alert('请先选择归属部门代码！');return;}code_CodeSelect(this,'UserCode','0,1','Y','riskCode=05001,comCode='+fm['prpCmain.comCode'].value)"
							onchange="if(fm['prpCmain.comCode'].value == ''){alert('请先选择归属部门代码！');return;}code_CodeChange(this,'UserCode','0,1','Y','riskCode=05001,comCode='+fm['prpCmain.comCode'].value)" />
						</td>
					</tr>
					<tr>
						<td class="left3">归属人名称：</td>
						<td class="right3"><input type="text" class="input_name"
							value="数据字典管理员" readonly="readonly" /></td>
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
<script language="javascript" src="${ctx}/common/js/prpins/Validator.js"></script>
<script language="javascript" src="${ctx}/common/js/CodeSelect.js"></script>
</HTML>