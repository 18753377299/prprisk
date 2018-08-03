<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<script type="text/javascript" src="${ctx }/widgets/dtree/dtree.js"></script>
</HEAD>

<body>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<br /> <br /> <br />
		<div>
			<div style="width: 100%; float: left">
				<div id="myDiv">
					<table border="0" cellpadding="5" cellspacing="1">
						<br>
						<div id="button" align="left">
							<tr class="top">
								<td align="center"><strong>机构树</strong></td>
							</tr>
							<tr align="left">
								<td align="left"><input type="button" name="openCloseAll"
									value="展开" onclick="openAndClose();" class="button_ty">
									按shift点击时将级联所有下级</td>
							</tr>
						</div>
					</table>
					<div id="gradeTrees" align="left" style="margin-left: 400px"></div>
					<script language="javascript">
						d = new dTree('d');
						d.add('0', '-1', '机构列表', '', '机构列表', '', '', '', '',
								false, false, true);
						$
								.ajax({
									type : "POST",
									url : "${ctx}/company/companyTreeShow.do",
									data : "",
									async : false,
									success : function(obj) {
										for ( var i = 0; i < obj.length; i++) {
											if (obj[i].comCode == '00000000') {
												obj[i].upperComCode = '0';
											}
											d.add(obj[i].comCode,
													obj[i].upperComCode,
													obj[i].comCName, '', '',
													'', '', '', '', true, '',
													true, false, true);
										}

										document.getElementById("gradeTrees").innerHTML = d;
									},
									error : function(XMLHttpRequest,
											textStatus, errorThrown) {
										flag = false;
										alert(textStatus + errorThrown);
									}
								});
						d.closeAll();
						//document.write(d);

						function openAndClose() {
							if (fm.openCloseAll.value == "展开") {
								fm.openCloseAll.value = "收拢";
								d.openAll();
							} else {
								fm.openCloseAll.value = "展开";
								d.closeAll();
							}
						}
					</script>
				</div>
			</div>
		</div>
	</form>
</body>
</HTML>