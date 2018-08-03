<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
</style>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<!-- style="position:absolute;" -->
			<form id="form" class="form-horizontal" role="form" action="">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.inof.conditon" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6 col-xs-12">
										<div class="row form-group">
											<label for="cityName" class="col-xs-4 control-label"><fmt:message
													key="label.home.showcase.findweather.city" /></label>
											<div class="col-xs-8">
												<input id="cityName" name="cityName" class="form-control"
													type="text" placeholder="cityName" />
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-search"
												id="http" type="button">
												<fmt:message key="label.home.showcase.HTTP" />
											</button>
										</div>
										<%-- <div class="btn-toolbar" style="text-align: center;">
											<button class="btn btn-primary btn-outline btn-search"
												id="webService" type="button">
												<fmt:message key="label.home.showcase.WebService" />
											</button>
										</div> --%>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-lg-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<fmt:message key="label.home.showcase.Realtimeweather" />
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Currenttemperature" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="temp"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Currentwinddirection" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="wind_direction"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Currentwind" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="wind_strength"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Currenthumidity" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="humidity"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Updatetime" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="time"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<fmt:message key="label.home.showcase.Weathertoday" />
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.findweather.city" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="city"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.findweather.date" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="date_y"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.findweather.week" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="week"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Temperaturetoday" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="temperature"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Weathertoday" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="weather"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Windtoday" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="wind"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Dressingindex" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="dressing_index"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Dresssuggestion" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="dressing_advice"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.UVintensity" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="uv_index"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Comfortindex" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="comfort_index"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Carwashindex" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="wash_index"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Travelindex" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="travel_index"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Morningexerciseindex" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="exercise_index"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-xs-12">
								<label for="" class="col-xs-4 control-label"><fmt:message
										key="label.home.showcase.Dryingindex" /></label>
								<div class="col-xs-8 form-control-static">
									<span id="drying_index"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<fmt:message key="label.home.showcase.Thenextweektheweather" />
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse">
					<div class="panel-body">
						<table
							class="table table-striped table-bordered table-hover jqueryDataTable"
							id="resultDataTable">
							<thead>
								<tr>
									<th>日期</th>
									<th>星期</th>
									<th>天气</th>
									<th>温度</th>
									<th>风向</th>
								</tr>
							</thead>
							<tbody id="weatherDay">
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${ctx}/${app_version}/showcase/interf/js/FindWeather.js"></script>
</body>
</html>