<!DOCTYPE html>
<%@ page contentType="text/html;charset=GBK"%>
<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
<style type="text/css">
body {
	position: relative;
}
/* CUSTOMIZE THE NAVBAR
	-------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
	position: fixed;
	top: 60px;
	z-index: 999;
}

.navbar.navbar-inverse.navbar-static-top {
	background: #5cb85c;
	border-color: #398439;
}

@media ( max-width : 800px) {
	.navbar.navbar-inverse.navbar-static-top {
		margin-top: 45px;
	}
}

.navbar.navbar-inverse.navbar-static-top a {
	color: #fff;
}

.navbar.navbar-inverse.navbar-static-top a:hover {
	color: #0A64A4;
}

.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus
	{
	background: #398439;
	font-weight: 700;
}

.navbar-inverse .navbar-nav>.active>a:hover {
	background: #398439;
	color: #fff;
	font-weight: 700;
}
</style>
</head>
<body data-spy="scroll" data-offset="233" data-target=".navbar-wrapper">
	<br />
	<div class="row" style="margin-top: 40px;">
		<div class="col-lg-12">
			<div class="progress" style="height: 45px">
				<div class="progress-bar progress-bar-success" style="width: 20%">
					<div>����</div>
					<div>2014-06-05 11:24</div>
				</div>

				<div class="progress-bar progress-bar-info" style="width: 19%">
					<div class="progress progress-striped active" style="height: 45px"
						role="progressbar" aria-valuenow="275" aria-valuemin="0"
						aria-valuemax="100">
						<div class="progress-bar progress-bar-info" style="width: 100%">
							<div>�˱�</div>
							<div>2014-06-05 12:12</div>
						</div>
					</div>
				</div>
				<div class="progress-bar progress-bar-info"
					style="width: 1%; padding-top: 12px">
					<i class="glyphicon glyphicon-chevron-right"> </i>
				</div>
				<div class="progress-bar progress-bar-warning"
					style="width: 1%; padding-top: 12px">
					<div>
						<i class="glyphicon glyphicon-chevron-left"> </i>
					</div>
				</div>
				<div class="progress-bar progress-bar-warning" style="width: 18%">
					<div class="">Ͷ��</div>
					<div>2014-06-05 11:32</div>
				</div>
				<div class="progress-bar progress-bar-warning"
					style="width: 1%; padding-top: 12px">
					<i class="glyphicon glyphicon-chevron-right"> </i>
				</div>
				<div class="progress-bar progress-bar-success"
					style="width: 1%; padding-top: 12px; background-color: gray">
				</div>
				<div class="progress-bar "
					style="width: 18%; background-color: gray">
					<div class="">�ɷ�</div>
					<div class="">δ����</div>
				</div>
				<div class="progress-bar  progress-bar-default"
					style="width: 1%; padding-top: 12px; background-color: gray">
					<i class="glyphicon glyphicon-chevron-right"> </i>
				</div>
				<div class="progress-bar progress-bar-success"
					style="width: 1%; padding-top: 12px; background-color: gray">
				</div>
				<div class="progress-bar "
					style="width: 18%; background-color: gray">
					<div class="">���ɱ���</div>
					<div class="">δ����</div>
				</div>
				<div class="progress-bar progress-bar-success"
					style="width: 1%; padding-top: 12px; background-color: gray">
				</div>
			</div>
		</div>
	</div>
	<div class="navbar-wrapper">
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<div class="navwrapper">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".bs-js-navbar-scrollspy">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">����ҳ��</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="navbar-collapse collapse bs-js-navbar-scrollspy">
						<ul class="nav navbar-nav">
							<li class="menuItem"><a href="#vehicleInfo">������Ϣ</a></li>
							<li class="menuItem"><a href="#driverInfo">��ʻԱ��Ϣ</a></li>
							<li class="menuItem"><a href="#compulsoryInsurance">��ǿ����Ϣ</a></li>
							<li class="menuItem"><a href="#commercialInsurance">��ҵ����Ϣ</a></li>
							<li class="menuItem"><a href="#basicInfo">������Ϣ</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>
	<!-- /.navbar-wrapper -->
	<div class="row">
		<div class="alert alert-danger error" style="display: none;">
			<span></span>.<br clear="all" />
		</div>
		<form id="form" class="form-horizontal" role="form" method="post">
			<input type="hidden" name="editMode" value="${editMode}"></input>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 id="vehicleInfo" class="panel-title"
						style="padding-top: 160px; margin-top: -160px;">
						<a data-toggle="collapse" href="#collapseOne">����������Ϣ</a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">���ƺ�:</label>
									</div>
									<div class="col-xs-6">
										<input id="userCode" name="userCode" class="form-control"
											type="text" value="${prpDuser.userCode}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">���ܺ�:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading" id="2">
					<h4 class="panel-title">
						<a data-toggle="collapse" href="#collapse3">����������Ϣ</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">�������복����ϵ:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>����</option>
											<option>ʹ��</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��س���־:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>��س�</option>
											<option>���س�</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>С����������</option>
											<option>������������</option>
											<option>��ʱ��ʻ������</option>
											<option>��ʱ�뾳 ��������</option>
											<option>�ҳ�����</option>
											<option>ʹ����������</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">���Ƶ�ɫ:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>��ɫ</option>
											<option>��ɫ</option>
											<option>��ɫ</option>
											<option>��ɫ</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">������ɫ:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>��ɫ</option>
											<option>��ɫ</option>
											<option>��ɫ</option>
											<option>��ɫ</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��ʻ֤����:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">Ʒ���ͺ�:</label>
									</div>
									<div class="col-xs-6">
										<div class="input-group input-append">
											<input id="userName" name="userName" class="form-control"
												type="text" value="${prpDuser.userName}" /> <span
												class="input-group-addon add-on"> <i
												class="fa fa-search"></i>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">������ӡ:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<div class="input-group input-append date form_date">
											<input id="passwdSetDate" name="passwdSetDate"
												class="form-control" type="text"
												value="<fmt:formatDate value="${prpDuser.passwdSetDate }" pattern="yyyy-MM-dd"/>" />
											<span class="input-group-addon add-on"> <i
												class="glyphicon glyphicon-th"> </i>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">�³����ü�:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">������:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">�˶��ؿ�:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">�˶�������:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">����/����:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="${prpDuser.userName}" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">����/������:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>������</option>
											<option>���ڳ�</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">ʹ������:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>��Ӫҵ</option>
											<option>Ӫҵ</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>����</option>
											<option>��λ</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>�������¿ͳ�</option>
											<option>���Ϳͳ�</option>
											<option>ǣ����</option>
											<option>���й�����</option>
											<option>���Ϳͳ�</option>
											<option>���ͻ���</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��ʻ����:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>�й����ڣ������۰�̨��</option>
											<option>�۰�̨</option>
											<option>�й�����</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��Դ����:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>ȼ��</option>
											<option>�綯</option>
											<option>�����Դ</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">���ܳ�������:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>�γ�</option>
											<option>�ͳ�</option>
											<option>����</option>
											<option>����</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center">
									<button type="submit" class="btn btn-primary">�޸ĳ�����Ϣ</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 id="driverInfo" class="panel-title"
						style="padding-top: 160px; margin-top: -160px;">
						<a data-toggle="collapse" href="#collapse4">��ʻԱ��Ϣ</a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table
								class="table table-striped table-bordered table-hover jqueryDataTable"
								id="resultDataTable">
								<thead>
									<tr>
										<th>����</th>
										<th>֤������</th>
										<th>�Ա�</th>
										<th>����</th>
										<th>������֤����</th>
										<th>����</th>
										<th>׼�ܳ���</th>
										<th>��ʻ֤����</th>
									</tr>
								</thead>
								<tbody>
									<tr class="last first">
										<td colspan="8" align="right"><button type="button"
												class="btn btn-default glyphicon glyphicon-plus btn-create first">���</button></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading" id="4">
					<h4 id="compulsoryInsurance" class="panel-title"
						style="padding-top: 160px; margin-top: -160px;">
						<a data-toggle="collapse" href="#collapse5">��ǿ����Ϣ</a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<div class="input-group input-append date form_date">
											<input id="passwdSetDate" name="passwdSetDate"
												class="form-control" type="text"
												value="<fmt:formatDate value="${prpDuser.passwdSetDate }" pattern="yyyy-MM-dd"/>" />
											<span class="input-group-addon add-on"> <i
												class="glyphicon glyphicon-th"> </i>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��:</label>
									</div>
									<div class="col-xs-6">
										<div class="input-group input-append date form_date">
											<input id="passwdSetDate" name="passwdSetDate"
												class="form-control" type="text"
												value="<fmt:formatDate value="${prpDuser.passwdSetDate }" pattern="yyyy-MM-dd hh:mm:ss"/>" />
											<span class="input-group-addon add-on"> <i
												class="glyphicon glyphicon-th"> </i>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">�����޶�:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="3333Ԫ" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��׼����:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="3333Ԫ" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">ʵ�ɱ���:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="3333Ԫ" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="panel panel-info">
								<div class="panel-heading" id="5">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse6">����˰��Ϣ</a>
									</h4>
								</div>
								<div id="collapse6" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">��˰����:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">��˰ԭ��:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">����˰ƾ֤��:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">����˰����:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">�������:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">������:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">����˰����ش���:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">����˰���������:</label>
													</div>
													<div class="col-xs-6">
														<input id="userName" name="userName" class="form-control"
															type="text" value="" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 id="commercialInsurance" class="panel-title"
						style="padding-top: 160px; margin-top: -160px;">
						<a data-toggle="collapse" href="#collapse7">��ҵ����Ϣ</a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">��������:</label>
									</div>
									<div class="col-xs-6">
										<div class="input-group input-append date form_date">
											<input id="passwdSetDate" name="passwdSetDate"
												class="form-control" type="text"
												value="<fmt:formatDate value="${prpDuser.passwdSetDate }" pattern="yyyy-MM-dd"/>" />
											<span class="input-group-addon add-on"> <i
												class="glyphicon glyphicon-th"> </i>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">����</label>
									</div>
									<div class="col-xs-6">
										<div class="input-group input-append date form_date">
											<input id="passwdSetDate" name="passwdSetDate"
												class="form-control" type="text"
												value="<fmt:formatDate value="${prpDuser.passwdSetDate }" pattern="yyyy-MM-dd hh:mm:ss"/>" />
											<span class="input-group-addon add-on"> <i
												class="glyphicon glyphicon-th"> </i>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="basicInfo" class="panel panel-info"
				style="padding-top: 160px; margin-top: -160px;">
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-4 col-md-6 col-xs-12">
							<select class="form-control">
								<option>�����ײ�</option>
								<option>�����ײ�</option>
								<option>�Զ����ײ�</option>
							</select>
						</div>
						<div class="col-lg-4 col-md-6 col-xs-12">
							<button type="button" class="btn btn-primary">�����ײͷ���</button>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-body">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#economic" data-toggle="tab">�����ײ�</a>
						</li>
						<li><a href="#luxury" data-toggle="tab">�����ײ�</a></li>
						<li><a href="#custom" data-toggle="tab">�Զ����ײ�</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="economic">
							<div class="panel panel-info">
								<div class="panel-heading" id="9">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse9">����</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />ѡ��</th>
													<th>�ձ�����</th>
													<th>������Ϣ</th>
													<th>��������</th>
													<th>�����޶�(Ԫ)</th>
													<th>��׼����(Ԫ)</th>
													<th>ʵ�ɱ���(Ԫ)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>��������ʧ����</td>
													<td><input type="checkbox" />����¹���������Լ</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�������α���</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ա������(˾��)</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ա������(�˿�)</td>
													<td>Ԫ/��&nbsp;��</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-10 col-md-6 col-xs-12"></div>
										<div class="col-lg-2 col-md-6 col-xs-12">
											<button type="button" class="btn btn-primary">���Ӹ�����</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="10">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">�Ż�ϵ��</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />ѡ��</th>
													<th>�Ż�����</th>
													<th>����ϵ����Ŀ</th>
													<th>�Ż�ֵ</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ŵ�����������¼</td>
													<td><select class="form-control">
															<option>��������û�з������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������ͬʱͶ��</td>
													<td><select class="form-control">
															<option>ͬʱͶ�������ա�������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�ͻ��ҳ϶�</td>
													<td><select class="form-control">
															<option>����Ͷ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����¼ϵ��</td>
													<td><select class="form-control">
															<option>����һ��Ͷ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>ƽ������ʻ���</td>
													<td><select class="form-control">
															<option>ƽ������ʻ��̣�30000����</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>Լ����ʻ����</td>
													<td><select class="form-control">
															<option>ʡ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�б�����</td>
													<td><select class="form-control">
															<option>�б�������5̨</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>ָ����ʻ��</td>
													<td><select class="form-control">
															<option>ָ����ʻ��Ա</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�Ա�</td>
													<td><select class="form-control">
															<option>��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����</td>
													<td><select class="form-control">
															<option>���䣼һ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����</td>
													<td><select class="form-control">
															<option>���䣼25��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>���鼰Ԥ���⸶��</td>
													<td><select class="form-control">
															<option>40%������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����ˮƽ</td>
													<td><select class="form-control">
															<option>���ݷ��չ���ˮƽ��ҵ������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������ʧ�ճ���</td>
													<td><select class="form-control">
															<option>���쳵�͡�ϡ�г��͡����ϳ���</option>
													</select></td>
													<td>0.9</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="11">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">�ر�Լ����Ϣ</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>��Լ����</th>
													<th>��Լ����</th>
												</tr>
											</thead>
											<tbody>
												<tr class="last second">
													<td colspan="2" align="right"><button type="button"
															class="btn btn-default glyphicon glyphicon-plus btn-create second">����</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="luxury">
							<div class="panel panel-info">
								<div class="panel-heading" id="9">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse9">����</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>ѡ��<input type="checkbox" /></th>
													<th>�ձ�����</th>
													<th>������Ϣ</th>
													<th>��������</th>
													<th>�����޶�(Ԫ)</th>
													<th>��׼����(Ԫ)</th>
													<th>ʵ�ɱ���(Ԫ)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>��������ʧ����</td>
													<td>����¹���������Լ<input type="checkbox" /></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�������α���</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ա������(˾��)</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ա������(�˿�)</td>
													<td>Ԫ/��&nbsp;��</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-10 col-md-6 col-xs-12"></div>
										<div class="col-lg-2 col-md-6 col-xs-12">
											<button type="button" class="btn btn-primary">���Ӹ�����</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="10">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">�Ż�ϵ��</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />ѡ��</th>
													<th>�Ż�����</th>
													<th>����ϵ����Ŀ</th>
													<th>�Ż�ֵ</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ŵ�����������¼</td>
													<td><select class="form-control">
															<option>��������û�з������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������ͬʱͶ��</td>
													<td><select class="form-control">
															<option>ͬʱͶ�������ա�������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�ͻ��ҳ϶�</td>
													<td><select class="form-control">
															<option>����Ͷ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����¼ϵ��</td>
													<td><select class="form-control">
															<option>����һ��Ͷ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>ƽ������ʻ���</td>
													<td><select class="form-control">
															<option>ƽ������ʻ��̣�30000����</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>Լ����ʻ����</td>
													<td><select class="form-control">
															<option>ʡ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�б�����</td>
													<td><select class="form-control">
															<option>�б�������5̨</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>ָ����ʻ��</td>
													<td><select class="form-control">
															<option>ָ����ʻ��Ա</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�Ա�</td>
													<td><select class="form-control">
															<option>��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����</td>
													<td><select class="form-control">
															<option>���䣼һ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����</td>
													<td><select class="form-control">
															<option>���䣼25��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>���鼰Ԥ���⸶��</td>
													<td><select class="form-control">
															<option>40%������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����ˮƽ</td>
													<td><select class="form-control">
															<option>���ݷ��չ���ˮƽ��ҵ������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������ʧ�ճ���</td>
													<td><select class="form-control">
															<option>���쳵�͡�ϡ�г��͡����ϳ���</option>
													</select></td>
													<td>0.9</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="11">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">�ر�Լ����Ϣ</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>��Լ����</th>
													<th>��Լ����</th>
												</tr>
											</thead>
											<tbody>
												<tr class="last second">
													<td align="right" colspan="2"><button type="button"
															class="btn btn-default glyphicon glyphicon-plus btn-create second">����</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="custom">
							<div class="panel panel-info">
								<div class="panel-heading" id="9">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse9">����</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />ѡ��</th>
													<th>�ձ�����</th>
													<th>������Ϣ</th>
													<th>��������</th>
													<th>�����޶�(Ԫ)</th>
													<th>��׼����(Ԫ)</th>
													<th>ʵ�ɱ���(Ԫ)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>��������ʧ����</td>
													<td>����¹���������Լ<input type="checkbox" /></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�������α���</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ա������(˾��)</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ա������(�˿�)</td>
													<td>Ԫ/��&nbsp;��</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-body">
									<div class="row">
										<div class="col-lg-10 col-md-6 col-xs-12"></div>
										<div class="col-lg-2 col-md-6 col-xs-12">
											<button type="button" class="btn btn-primary">���Ӹ�����</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="10">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">�Ż�ϵ��</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />ѡ��</th>
													<th>�Ż�����</th>
													<th>����ϵ����Ŀ</th>
													<th>�Ż�ֵ</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������Ŵ�����������¼</td>
													<td><select class="form-control">
															<option>��������û�з������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������ͬʱͶ��</td>
													<td><select class="form-control">
															<option>ͬʱͶ�������ա�������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�ͻ��ҳ϶�</td>
													<td><select class="form-control">
															<option>����Ͷ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����¼ϵ��</td>
													<td><select class="form-control">
															<option>����һ��Ͷ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>ƽ������ʻ���</td>
													<td><select class="form-control">
															<option>ƽ������ʻ��̣�30000����</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>Լ����ʻ����</td>
													<td><select class="form-control">
															<option>ʡ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�б�����</td>
													<td><select class="form-control">
															<option>�б�������5̨</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>ָ����ʻ��</td>
													<td><select class="form-control">
															<option>ָ����ʻ��Ա</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>�Ա�</td>
													<td><select class="form-control">
															<option>��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����</td>
													<td><select class="form-control">
															<option>���䣼һ��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����</td>
													<td><select class="form-control">
															<option>���䣼25��</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>���鼰Ԥ���⸶��</td>
													<td><select class="form-control">
															<option>40%������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>����ˮƽ</td>
													<td><select class="form-control">
															<option>���ݷ��չ���ˮƽ��ҵ������</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>������ʧ�ճ���</td>
													<td><select class="form-control">
															<option>���쳵�͡�ϡ�г��͡����ϳ���</option>
													</select></td>
													<td>0.9</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="11">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">�ر�Լ����Ϣ</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>��Լ����</th>
													<th>��Լ����</th>
												</tr>
											</thead>
											<tbody>
												<tr class="last second">
													<td colspan="2" align="right">
														<button type="button"
															class="btn btn-default glyphicon glyphicon-plus btn-create second">����</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</form>
	<script src="${ctx}/common/js/AjaxEdit.js"></script>
	<script src="js/QuotationEdit.js"></script>
	<script type="text/javascript">
		$('body').scrollspy({
			target : '.navbar-wrapper'
		});
	</script>
</body>
</html>