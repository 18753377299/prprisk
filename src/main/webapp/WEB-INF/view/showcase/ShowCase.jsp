<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
</style>
<script src="${ctx}/${app_version}/showcase/js/ShowCase.js"></script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb">
				<input type="hidden" id="bread" value='<%=request.getParameter("menu") %>'/>
				<c:set var="menu" value='<%=request.getParameter("menu") %>'/>
				<app:breadcrumb home="首页" menuId="${menu}"/>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="panel-group" id="accordion1">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion1"
							href="#collapse1"><fmt:message
								key="label.home.dev.comprehensiveexample" /></a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="exercise" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Exercisetest" />
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion2">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion2"
							href="#collapse2"><fmt:message
								key="label.home.showcase.Dateandtime" /></a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="datetimePicker" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.Demonstrationeffect" />
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion3">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion3"
							href="#collapse3"><fmt:message
								key="label.home.Mechanismselectiontree" /></a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="comPickTree" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.Demonstrationeffect" />
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion4">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion4"
							href="#collapse4"><fmt:message
								key="label.home.showcase.Objectbinding" /></a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="objectBind" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Objectbinding" />
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion5">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion5"
							href="#collapse5"><fmt:message
								key="label.home.showcase.Featuredisplay" /></a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="barcode" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Barcodedisplay" />
								</button>
							</div>
							<!-- 							<div class="col-md-6 col-xs-12"> -->
							<!-- 								<button id="chart" type="button" -->
							<!-- 									class="btn btn-block btn-info btn-lg"><fmt:message key="label.home.showcase.Shows" /></button> -->
							<!-- 							</div> -->
							<div class="col-md-6 col-xs-12">
								<button id="coding" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Formfielddemodisplay" />
								</button>
							</div>
						</div>
						<div class="row">
							<!-- 							<div class="col-md-6 col-xs-12"> -->
							<!-- 								<button id="coding" type="button" -->
							<!-- 									class="btn btn-block btn-info btn-lg"><fmt:message key="label.home.showcase.Formfielddemodisplay" /></button> -->
							<!-- 							</div> -->
							<div class="col-md-6 col-xs-12">
								<button id="upload" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Fileupload" />
								</button>
							</div>
							<div class="col-md-6 col-xs-12">
								<button id="httpClient" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Httpclientdemo" />
								</button>
							</div>
						</div>
						<!-- 						<div class="row"> -->
						<!-- 							<div class="col-md-6 col-xs-12"> -->
						<!-- 								<button id="upload" type="button" -->
						<!-- 									class="btn btn-block btn-info btn-lg">文件上传</button> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion6">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion6"
							href="#collapse6"><fmt:message
								key="label.home.showcase.Formpresentation" /></a>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="generalElements" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Basicelements" />
								</button>
							</div>
							<div class="col-md-6 col-xs-12">
								<button id="advancedElements" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Advancedelements" />
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="editors" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.Richtextbox" />
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion7">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion7"
							href="#collapse7"><fmt:message
								key="label.home.showcase.invokedinterfaces" /></a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="http" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.HTTP" />
								</button>
							</div>
							<!-- 							<div class="col-md-6 col-xs-12"> -->
							<!-- 								<button id="webService" type="button" -->
							<!-- 									class="btn btn-block btn-info btn-lg">WebService调用</button> -->
							<!-- 							</div>  -->
						</div>
						<div class="row"></div>
					</div>
				</div>
			</div>
			<div class="panel-group" id="accordion8">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion8"
							href="#collapse8">requirejs</a>
					</h4>
				</div>
				<div id="collapse8" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6 col-xs-12">
								<button id="requirejs" type="button"
									class="btn btn-block btn-info btn-lg">
									<fmt:message key="label.home.showcase.requirejsdemo" />
								</button>
							</div>
						</div>
						<div class="row"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>