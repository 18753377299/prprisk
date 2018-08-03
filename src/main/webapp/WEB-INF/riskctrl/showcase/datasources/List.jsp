<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message key="label.home.Demonstrationeffect" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
								<table
									class="table table-striped table-bordered table-hover jqueryDataTable">
									<thead>
										<tr>
											<th>操作类型</th>
											<th>操作结果</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>A--B</td>
											<td id="aandb"></td>
											<td><button id="aandbb" type="button" class="btn btn-info">操作</button></td>
										</tr>
										<tr>
											<td>B--A</td>
											<td id="banda"></td>
											<td><button id="bandab" type="button" class="btn btn-info">操作</button></td>
										</tr>
										<tr>
											<td>C->D</td>
											<td id="ctod"></td>
											<td><button id="ctodb" type="button" class="btn btn-info">操作</button></td>
										</tr>
										<tr>
											<td>D->C</td>
											<td id="dtoc"></td>
											<td><button id="dtocb" type="button" class="btn btn-info">操作</button></td>
										</tr>
									</tbody>
								</table>
							</div>
								<div class="row">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo"><fmt:message key="label.home.compicktreelist.Operationguide" /></a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">

												测试说明：
													<ul>
													<li>环境：测试过程所涉及到的service层方法的事务传播属性均为spring中的"REQUIRED"</li>
													<li>数据库使用：测试过程中配置三个库，主库为pdfb4dev,从库有两个pdfb4和pdfb4test(当前框架中配置了四个数据源且都指向了同一个库，测试需作相应修改)</li>
													<li>操作类型 ：操作类型中的A/B/C/D均表示service层方法，其中A/C使用@DataSouce("master")注解，
														B/D使用@DataSouce("slave")注解；“--”表示顺序调用，“->”表示嵌套调用</li>
													<li>操作结果：顺序调用操作结果的表示为“X--Y”,X表示第一个方法中使用的库，Y表示第二个方法中使用的库；嵌套调用操作结果
														为“X--Y--Z”，X表示嵌套调用之前主调方法使用的库，Y表示被调用方法中的库，Z表示被调方法返回后主调方法使用的库；</li>
													<li>操作：点击对应行的“操作”按钮会出现操作结果，按钮可多次点击，有不同的结果出现，注意观察</li>
													</ul>
												结果说明：
													<ul>
													<li>A--B|B--A:顺序调用时，每个service层方法都使用自己注解的数据源，不加注解默认为主数据源,多次点击，会发现注解为@DataSouce("master")
													的方法会固定使用pdfb4dev库，注解为@DataSouce("slave")的方法会从pdfb4和pdfb4test两个库中随机选择；</li>
													<li>C--D|D--C:嵌套调用时，被调用的service层方法会使用主调方法中注解的数据源，自己方法中注解的数据源失效（需要特别说明的是这种情况只在事务的传播属性
													为"REQUIRED"时是这样）</li>
													</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>

	</div>
	<script src="${ctx}/${app_version}/showcase/datasources/js/List.js"></script>
</body>
</html>