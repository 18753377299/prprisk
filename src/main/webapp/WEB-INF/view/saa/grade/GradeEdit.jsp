<%@page import="ins.platform.saa.schema.SaaGradeTask"%>
<%@page import="ins.platform.saa.vo.SaaGradeTaskVo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<%!public String processChild(List<SaaGradeTaskVo> saaGradeTaskVOList,
			String parentTaskCode) {
		StringBuffer buff = new StringBuffer(); 
		for (int i = 0; i < saaGradeTaskVOList.size(); i++) {
			SaaGradeTaskVo saaGradeTaskVO = saaGradeTaskVOList.get(i);
			String taskCode = saaGradeTaskVO.getTaskCode();
			String taskCName = saaGradeTaskVO.getTaskCName();
			
			if (!taskCode.equals(parentTaskCode) &&saaGradeTaskVO.getTaskParentCode()
					.equals(parentTaskCode)) {
				buff.append("<li><a tname=\"treeCheckBox\" tvalue=\""
						+ taskCode + "\" checked=\"true\">" + taskCode + "(" + taskCName + ")"
						+ " </a>\r\n");
				buff.append(processChild(saaGradeTaskVOList,
					saaGradeTaskVO.getTaskCode()));
				buff.append("</li>\r\n");
			}
		}
		if (buff.length() > 0) {
			buff.insert(0, "<ul>\r\n");
			buff.append("</ul>\r\n");
		}
		return buff.toString();

	}%>

<c:choose>
	<c:when test="${grade.gradeCName == null}">
		<c:set var="url" value="${ctx}/saagrade/insertGrade.do"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="url" value="${ctx}/saagrade/updateGrade.do"></c:set>
	</c:otherwise>
</c:choose>


<h2 class="contentTitle">
	<fmt:message key="label.common.main.edit" />
</h2>
<form action="${url}" method="post" class="required-validate pageForm"
	onsubmit="return validateCallback(this, navTabAjaxDone);">
	<%-- callbackType为回调方法入口，当callbackType="closeCurrent"时会关闭当前tab,callbackType="forward"时需要forwardUrl值   --%>
	<input type="hidden" name="callbackType" value="closeCurrent" /> <input
		type="hidden" name="grade.id" maxlength="20" value="${grade.id}" /> <input
		type="hidden" name="grade.version" maxlength="20"
		value="${grade.version}" />
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt>
				<fmt:message key="label.simpleims.saagrade.gradeCName" />
			</dt>
			<dd>
				<input type="text" name="grade.gradeCName" class="required"
					maxlength="20" value="${grade.gradeCName}" />
			</dd>
		</dl>

		<dl>
			<dt>
				<fmt:message key="label.simpleims.saagrade.gradeTName" />
			</dt>
			<dd>
				<input type="text" name="grade.gradeTName" maxlength="20"
					value="${grade.gradeTName}" />
			</dd>
		</dl>

		<div class="divider"></div>

		<dl>
			<dt>
				<fmt:message key="label.simpleims.saagrade.gradeEName" />
			</dt>
			<dd>
				<input type="text" name="grade.gradeEName" maxlength="20"
					value="${grade.gradeEName}" />
			</dd>
		</dl>
		<dl>
			<dt>
				<fmt:message key="label.simpleims.saagrade.comCode" />
			</dt>
			<dd>
				<input type="text" name="grade.comCode" class="required"
					maxlength="20" value="${grade.comCode}" />
			</dd>
		</dl>
		<dl>
			<dt>
				<fmt:message key="label.simpleims.saagrade.validInd" />
			</dt>
			<dd>
				<select name="grade.validInd">
					<option value="1"
						${'1' eq grade.validInd ? 'selected="selected"' : ''}><fmt:message
							key="label.common.select.valid" /></option>
					<option value="0"
						${'0' eq grade.validInd ? 'selected="selected"' : ''}><fmt:message
							key="label.common.select.invalid" /></option>
				</select>
			</dd>
		</dl>
		<div
			style="float: left; display: block; margin: 10px; overflow: auto; width: 500px; height: 400px;">
			<p>功能代码勾选</p>
			<ul class="tree treeFolder treeCheck expand">
				<li><a> 所有功能代码<fmt:message key="" /></a>
					<ul>
						<%
			List<SaaGradeTaskVo> saaGradeTaskVOList = (List<SaaGradeTaskVo>)request.getAttribute("gradeTasks");
			for (int i = 0; i < saaGradeTaskVOList.size(); i++) {
				SaaGradeTaskVo saaGradeTaskVO = saaGradeTaskVOList.get(i);
				//一级功能代码
				if (saaGradeTaskVO.getTaskCode()
						.equals(saaGradeTaskVO.getTaskParentCode())) {
					String taskCode = saaGradeTaskVO.getTaskCode();
					out.println("<li><a tname=\"treeCheckBox\" tvalue=\""
							+ taskCode + "\" checked=\"true\">" + taskCode + "(" + saaGradeTaskVO.getTaskCName() + ")"
							+ " </a>");
					out.print(processChild(saaGradeTaskVOList, taskCode));
					out.println("</li>");

				}
			}
		%>
					</ul></li>
			</ul>
		</div>
	</div>
	<div class="formBar">
		<ul>
			<li>
				<div class="buttonActive">
					<div class="buttonContent">
						<button type="submit">
							<fmt:message key="label.common.main.save" />
						</button>
					</div>
				</div>
			</li>
			<li>
				<div class="button">
					<div class="buttonContent">
						<button type="button" class="close">
							<fmt:message key="label.common.main.close" />
						</button>
					</div>
				</div>
			</li>
		</ul>
	</div>
</form>
<script type="text/javascript">
function kkk(){
 
}
</script>