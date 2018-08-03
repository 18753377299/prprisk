<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
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
	z-index: 1030;
}

.navbar.navbar-inverse.navbar-static-top {
	background: #5cb85c;
	border-color: #398439;
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
					<div>报价</div>
					<div>2014-06-05 11:24</div>
				</div>

				<div class="progress-bar progress-bar-info" style="width: 19%">
					<div class="progress progress-striped active" style="height: 45px"
						role="progressbar" aria-valuenow="275" aria-valuemin="0"
						aria-valuemax="100">
						<div class="progress-bar progress-bar-info" style="width: 100%">
							<div>核保</div>
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
					<div class="">投保</div>
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
					<div class="">缴费</div>
					<div class="">未处理</div>
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
					<div class="">生成保单</div>
					<div class="">未处理</div>
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
						<a class="navbar-brand" href="#">报价页面</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="navbar-collapse collapse bs-js-navbar-scrollspy">
						<ul class="nav navbar-nav">
							<li class="menuItem"><a href="#vehicleInfo">车辆信息</a></li>
							<li class="menuItem"><a href="#driverInfo">驾驶员信息</a></li>
							<li class="menuItem"><a href="#compulsoryInsurance">交强险信息</a></li>
							<li class="menuItem"><a href="#commercialInsurance">商业险信息</a></li>
							<li class="menuItem"><a href="#basicInfo">基本信息</a></li>
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
						<a data-toggle="collapse" href="#collapseOne">车辆基本信息</a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">车牌号:</label>
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
										<label for="userCode" class="control-label">车架号:</label>
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
										<label for="userCode" class="control-label">发动机号:</label>
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
						<a data-toggle="collapse" href="#collapse3">车辆其他信息</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">被保人与车辆关系:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>所有</option>
											<option>使用</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">车主名称:</label>
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
										<label for="userCode" class="control-label">外地车标志:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>外地车</option>
											<option>本地车</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">号牌种类:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>小型汽车号牌</option>
											<option>大型汽车号牌</option>
											<option>临时行驶车号牌</option>
											<option>临时入境 汽车号牌</option>
											<option>挂车号牌</option>
											<option>使馆汽车号牌</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">号牌底色:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>蓝色</option>
											<option>黄色</option>
											<option>白色</option>
											<option>黑色</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">车身颜色:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>蓝色</option>
											<option>黄色</option>
											<option>白色</option>
											<option>黑色</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">行驶证车型:</label>
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
										<label for="userCode" class="control-label">品牌型号:</label>
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
										<label for="userCode" class="control-label">保单打印:</label>
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
										<label for="userCode" class="control-label">初登日期:</label>
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
										<label for="userCode" class="control-label">新车购置价:</label>
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
										<label for="userCode" class="control-label">总质量:</label>
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
										<label for="userCode" class="control-label">核定载客:</label>
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
										<label for="userCode" class="control-label">核定载质量:</label>
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
										<label for="userCode" class="control-label">排量/功率:</label>
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
										<label for="userCode" class="control-label">进口/国产类:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>国产车</option>
											<option>进口车</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">使用性质:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>非营业</option>
											<option>营业</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">所属性质:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>个人</option>
											<option>单位</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">车辆种类:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>六座以下客车</option>
											<option>大型客车</option>
											<option>牵引车</option>
											<option>城市公交车</option>
											<option>中型客车</option>
											<option>大型货车</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">行驶区域:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>中国境内（不含港澳台）</option>
											<option>港澳台</option>
											<option>中国境外</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">能源种类:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>燃油</option>
											<option>电动</option>
											<option>清洁能源</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">交管车辆类型:</label>
									</div>
									<div class="col-xs-6">
										<select class="form-control">
											<option>轿车</option>
											<option>客车</option>
											<option>货车</option>
											<option>商务车</option>
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
									<button type="submit" class="btn btn-primary">修改车辆信息</button>
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
						<a data-toggle="collapse" href="#collapse4">驾驶员信息</a>
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
										<th>姓名</th>
										<th>证件类型</th>
										<th>性别</th>
										<th>年龄</th>
										<th>初次领证日期</th>
										<th>驾龄</th>
										<th>准架车型</th>
										<th>驾驶证号码</th>
									</tr>
								</thead>
								<tbody>
									<tr class="last first">
										<td colspan="8" align="right"><button type="button"
												class="btn btn-default glyphicon glyphicon-plus btn-create first">添加</button></td>
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
						<a data-toggle="collapse" href="#collapse5">交强险信息</a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">保险期限:</label>
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
										<label for="userCode" class="control-label">至:</label>
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
										<label for="userCode" class="control-label">责任限额:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="3333元" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">标准保费:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="3333元" />
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">实缴保费:</label>
									</div>
									<div class="col-xs-6">
										<input id="userName" name="userName" class="form-control"
											type="text" value="3333元" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="panel panel-info">
								<div class="panel-heading" id="5">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse6">车船税信息</a>
									</h4>
								</div>
								<div id="collapse6" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="col-lg-4 col-md-6 col-xs-12">
												<div class="row form-group">
													<div class="col-xs-6">
														<label for="userCode" class="control-label">纳税类型:</label>
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
														<label for="userCode" class="control-label">免税原因:</label>
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
														<label for="userCode" class="control-label">减免税凭证号:</label>
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
														<label for="userCode" class="control-label">减免税方案:</label>
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
														<label for="userCode" class="control-label">减免比例:</label>
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
														<label for="userCode" class="control-label">减免金额:</label>
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
														<label for="userCode" class="control-label">开具税务机关代码:</label>
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
														<label for="userCode" class="control-label">开具税务机关名称:</label>
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
						<a data-toggle="collapse" href="#collapse7">商业险信息</a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4 col-md-6 col-xs-12">
								<div class="row form-group">
									<div class="col-xs-6">
										<label for="userCode" class="control-label">保险期限:</label>
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
										<label for="userCode" class="control-label">至：</label>
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
								<option>经济套餐</option>
								<option>豪华套餐</option>
								<option>自定义套餐</option>
							</select>
						</div>
						<div class="col-lg-4 col-md-6 col-xs-12">
							<button type="button" class="btn btn-primary">增加套餐方案</button>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-body">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#economic" data-toggle="tab">经济套餐</a>
						</li>
						<li><a href="#luxury" data-toggle="tab">豪华套餐</a></li>
						<li><a href="#custom" data-toggle="tab">自定义套餐</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="economic">
							<div class="panel panel-info">
								<div class="panel-heading" id="9">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse9">主险</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />选择</th>
													<th>险别名称</th>
													<th>其他信息</th>
													<th>不计免赔</th>
													<th>责任限额(元)</th>
													<th>标准保费(元)</th>
													<th>实缴保费(元)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>机动车损失保险</td>
													<td><input type="checkbox" />多次事故免赔率特约</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>第三责任保险</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车上人员责任险(司机)</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车上人员责任险(乘客)</td>
													<td>元/座&nbsp;座</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>盗抢险</td>
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
											<button type="button" class="btn btn-primary">增加附加险</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="10">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">优惠系数</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />选择</th>
													<th>优惠名称</th>
													<th>费率系数项目</th>
													<th>优惠值</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>无赔款优待及上年赔款记录</td>
													<td><select class="form-control">
															<option>连续三年没有发生赔款</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>多险种同时投保</td>
													<td><select class="form-control">
															<option>同时投保车损险、三者险</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>客户忠诚度</td>
													<td><select class="form-control">
															<option>首年投保</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>赔款记录系数</td>
													<td><select class="form-control">
															<option>连续一年投保</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>平均年行驶里程</td>
													<td><select class="form-control">
															<option>平均年行驶里程＜30000公里</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>约定行驶区域</td>
													<td><select class="form-control">
															<option>省内</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>承保数量</td>
													<td><select class="form-control">
															<option>承保数量＜5台</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>指定驾驶人</td>
													<td><select class="form-control">
															<option>指定驾驶人员</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>性别</td>
													<td><select class="form-control">
															<option>男</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>驾龄</td>
													<td><select class="form-control">
															<option>驾龄＜一年</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>年龄</td>
													<td><select class="form-control">
															<option>年龄＜25岁</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>经验及预期赔付率</td>
													<td><select class="form-control">
															<option>40%及以下</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>管理水平</td>
													<td><select class="form-control">
															<option>根据风险管理水平和业务类型</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车辆损失险车型</td>
													<td><select class="form-control">
															<option>特异车型、稀有车型、古老车型</option>
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
										<a data-toggle="collapse" href="#collapse10">特别约定信息</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>特约名称</th>
													<th>特约内容</th>
												</tr>
											</thead>
											<tbody>
												<tr class="last second">
													<td colspan="2" align="right"><button type="button"
															class="btn btn-default glyphicon glyphicon-plus btn-create second">新增</button></td>
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
										<a data-toggle="collapse" href="#collapse9">主险</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>选择<input type="checkbox" /></th>
													<th>险别名称</th>
													<th>其他信息</th>
													<th>不计免赔</th>
													<th>责任限额(元)</th>
													<th>标准保费(元)</th>
													<th>实缴保费(元)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>机动车损失保险</td>
													<td>多次事故免赔率特约<input type="checkbox" /></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>第三责任保险</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车上人员责任险(司机)</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车上人员责任险(乘客)</td>
													<td>元/座&nbsp;座</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>盗抢险</td>
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
											<button type="button" class="btn btn-primary">增加附加险</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="10">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">优惠系数</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />选择</th>
													<th>优惠名称</th>
													<th>费率系数项目</th>
													<th>优惠值</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>无赔款优待及上年赔款记录</td>
													<td><select class="form-control">
															<option>连续三年没有发生赔款</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>多险种同时投保</td>
													<td><select class="form-control">
															<option>同时投保车损险、三者险</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>客户忠诚度</td>
													<td><select class="form-control">
															<option>首年投保</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>赔款记录系数</td>
													<td><select class="form-control">
															<option>连续一年投保</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>平均年行驶里程</td>
													<td><select class="form-control">
															<option>平均年行驶里程＜30000公里</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>约定行驶区域</td>
													<td><select class="form-control">
															<option>省内</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>承保数量</td>
													<td><select class="form-control">
															<option>承保数量＜5台</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>指定驾驶人</td>
													<td><select class="form-control">
															<option>指定驾驶人员</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>性别</td>
													<td><select class="form-control">
															<option>男</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>驾龄</td>
													<td><select class="form-control">
															<option>驾龄＜一年</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>年龄</td>
													<td><select class="form-control">
															<option>年龄＜25岁</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>经验及预期赔付率</td>
													<td><select class="form-control">
															<option>40%及以下</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>管理水平</td>
													<td><select class="form-control">
															<option>根据风险管理水平和业务类型</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车辆损失险车型</td>
													<td><select class="form-control">
															<option>特异车型、稀有车型、古老车型</option>
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
										<a data-toggle="collapse" href="#collapse10">特别约定信息</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>特约名称</th>
													<th>特约内容</th>
												</tr>
											</thead>
											<tbody>
												<tr class="last second">
													<td align="right" colspan="2"><button type="button"
															class="btn btn-default glyphicon glyphicon-plus btn-create second">新增</button></td>
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
										<a data-toggle="collapse" href="#collapse9">主险</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />选择</th>
													<th>险别名称</th>
													<th>其他信息</th>
													<th>不计免赔</th>
													<th>责任限额(元)</th>
													<th>标准保费(元)</th>
													<th>实缴保费(元)</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>机动车损失保险</td>
													<td>多次事故免赔率特约<input type="checkbox" /></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>第三责任保险</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车上人员责任险(司机)</td>
													<td></td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车上人员责任险(乘客)</td>
													<td>元/座&nbsp;座</td>
													<td><input type="checkbox" /></td>
													<td><input type="text" class="form-control" /></td>
													<td>950</td>
													<td>950</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>盗抢险</td>
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
											<button type="button" class="btn btn-primary">增加附加险</button>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-info">
								<div class="panel-heading" id="10">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse10">优惠系数</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th><input type="checkbox" />选择</th>
													<th>优惠名称</th>
													<th>费率系数项目</th>
													<th>优惠值</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><input type="checkbox" /></td>
													<td>无赔款优待及上年赔款记录</td>
													<td><select class="form-control">
															<option>连续三年没有发生赔款</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>多险种同时投保</td>
													<td><select class="form-control">
															<option>同时投保车损险、三者险</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>客户忠诚度</td>
													<td><select class="form-control">
															<option>首年投保</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>赔款记录系数</td>
													<td><select class="form-control">
															<option>连续一年投保</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>平均年行驶里程</td>
													<td><select class="form-control">
															<option>平均年行驶里程＜30000公里</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>约定行驶区域</td>
													<td><select class="form-control">
															<option>省内</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>承保数量</td>
													<td><select class="form-control">
															<option>承保数量＜5台</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>指定驾驶人</td>
													<td><select class="form-control">
															<option>指定驾驶人员</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>性别</td>
													<td><select class="form-control">
															<option>男</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>驾龄</td>
													<td><select class="form-control">
															<option>驾龄＜一年</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>年龄</td>
													<td><select class="form-control">
															<option>年龄＜25岁</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>经验及预期赔付率</td>
													<td><select class="form-control">
															<option>40%及以下</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>管理水平</td>
													<td><select class="form-control">
															<option>根据风险管理水平和业务类型</option>
													</select></td>
													<td>0.9</td>
												</tr>
												<tr>
													<td><input type="checkbox" /></td>
													<td>车辆损失险车型</td>
													<td><select class="form-control">
															<option>特异车型、稀有车型、古老车型</option>
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
										<a data-toggle="collapse" href="#collapse10">特别约定信息</a>
									</h4>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table
											class="table table-striped table-bordered table-hover jqueryDataTable"
											id="resultDataTable">
											<thead>
												<tr>
													<th>特约名称</th>
													<th>特约内容</th>
												</tr>
											</thead>
											<tbody>
												<tr class="last second">
													<td colspan="2" align="right">
														<button type="button"
															class="btn btn-default glyphicon glyphicon-plus btn-create second">新增</button>
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
	<script src="${ctx}/showcase/insure/js/QuotationEdit.js"></script>
	<script type="text/javascript">
		$('body').scrollspy({
			target : '.navbar-wrapper'
		});
	</script>
</body>
</html>