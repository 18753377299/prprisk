<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-css.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/common-js.jspf" />
<jsp:directive.include file="/WEB-INF/layout/common/custom-css.jspf" />
<HTML>
<HEAD>
<TITLE>Tab页签</TITLE>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link href="${ctx}/static/zTree/${zTree_version}/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${ctx}/static/zTree/${zTree_version}/css/zTreeStyle/zTreeStyle.css"
	rel="stylesheet" type="text/css" />
</HEAD>

<BODY>
	<form name="fm" id="fm" action="${url}" namespace="/" method="post">
		<h1>Tab页签</h1>
		<div class="row">
			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">Basic Tabs</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs">
							<li class="active"><a href="#home" data-toggle="tab">Home</a>
							</li>
							<li><a href="#profile" data-toggle="tab">Profile</a></li>
							<li><a href="#messages" data-toggle="tab">Messages</a></li>
							<li><a href="#settings" data-toggle="tab">Settings</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane fade in active" id="home">
								<h4>Home Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
							<div class="tab-pane fade" id="profile">
								<h4>Profile Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
							<div class="tab-pane fade" id="messages">
								<h4>Messages Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
							<div class="tab-pane fade" id="settings">
								<h4>Settings Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-6 -->
			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">Pill Tabs</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<!-- Nav tabs -->
						<ul class="nav nav-pills">
							<li class="active"><a href="#home-pills" data-toggle="tab">Home</a>
							</li>
							<li><a href="#profile-pills" data-toggle="tab">Profile</a></li>
							<li><a href="#messages-pills" data-toggle="tab">Messages</a>
							</li>
							<li><a href="#settings-pills" data-toggle="tab">Settings</a>
							</li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane fade in active" id="home-pills">
								<h4>Home Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
							<div class="tab-pane fade" id="profile-pills">
								<h4>Profile Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
							<div class="tab-pane fade" id="messages-pills">
								<h4>Messages Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
							<div class="tab-pane fade" id="settings-pills">
								<h4>Settings Tab</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exercitation
									ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
									cupidatat non proident, sunt in culpa qui officia deserunt
									mollit anim id est laborum.</p>
							</div>
						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-6 -->
		</div>
	</form>
</BODY>
</HTML>