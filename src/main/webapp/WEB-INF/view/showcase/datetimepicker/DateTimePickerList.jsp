
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<form id="form" class="form-horizontal" role="form"
				action="${ctx}/exercise/list">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><fmt:message
										key="label.home.Demonstrationeffect" /></a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4 col-md-6 col-xs-12">
										<div class="row form-group">
											<div class="col-xs-6">
												<label for="Date" class="control-label"><fmt:message
														key="label.home.Defaultformat" /></label> <input
													name="[form][tDate][dataType]" type="hidden" value="Date" />
												<input name="[form][Date][queryType]" type="hidden"
													value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_24">
													<input id="Date" name="[form][Date][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
												<label for="Date" class="control-label"><fmt:message
														key="label.home.Tenyearview" /></label> <input
													name="[form][tDate][dataType]" type="hidden" value="Date" />
												<input name="[form][Date][queryType]" type="hidden"
													value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_decade">
													<input id="Date" name="[form][Date][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
												<label for="Date" class="control-label"><fmt:message
														key="label.home.Yearview" /></label> <input
													name="[form][tDate][dataType]" type="hidden" value="Date" />
												<input name="[form][Date][queryType]" type="hidden"
													value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_year">
													<input id="Date" name="[form][Date][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
												<label for="Date" class="control-label"><fmt:message
														key="label.home.Monthview" /></label> <input
													name="[form][tDate][dataType]" type="hidden" value="Date" />
												<input name="[form][Date][queryType]" type="hidden"
													value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_month">
													<input id="Date" name="[form][Date][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
												<label for="Date" class="control-label"><fmt:message
														key="label.home.24hourdayview" /></label> <input
													name="[form][tDate][dataType]" type="hidden" value="Date" />
												<input name="[form][Date][queryType]" type="hidden"
													value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_day">
													<input id="Date" name="[form][Date][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
												<label for="testDate" class="control-label"><fmt:message
														key="label.home.12hourformat" /></label> <input
													name="[form][testDate][dataType]" type="hidden"
													value="Date" /> <input name="[form][testDate][queryType]"
													type="hidden" value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_AP">
													<input id="testDate" name="[form][testDate][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.testDate }" pattern="yyyy-MM-dd"/>" />
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
												<label for="Date" class="control-label"><fmt:message
														key="label.home.Hourview" /></label> <input
													name="[form][tDate][dataType]" type="hidden" value="Date" />
												<input name="[form][Date][queryType]" type="hidden"
													value="equal" />
											</div>
											<div class="col-xs-6">
												<div class="input-group input-append date form_date_hour">
													<input id="Date" name="[form][Date][value]"
														class="form-control" type="text" placeholder="Date"
														value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
													<span class="input-group-addon add-on"> <i
														class="glyphicon glyphicon-th"> </i>
													</span>
												</div>
											</div>
										</div>


									</div>
								</div>
								<div class="row">
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo"><fmt:message
														key="label.home.Customdateformat" /></a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="col-lg-4 col-md-6 col-xs-12">
													<div class="row form-group">
														<div class="col-xs-6">
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdateformat" />1</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_date_one">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text"
																	placeholder="yyyy年mm月dd日"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdateformat" />2</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_date_two">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text"
																	placeholder="yyyy/mm/dd"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdateformat" />3</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div
																class="input-group input-append date form_date_three">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text"
																	placeholder="dd/mm/yyyy"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdateformat" />4</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_date_four">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text" placeholder="dd/mm/yy"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdateformat" />5</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_date_five">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text" placeholder="yyyy/mm"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdateformat" />6</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_date_six">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text" placeholder="mm/dd"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo"><fmt:message
														key="label.home.Customdatetimeformat" /></a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="col-lg-4 col-md-6 col-xs-12">
													<div class="row form-group">
														<div class="col-xs-6">
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdatetimeformat" />1</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div
																class="input-group input-append date form_date_time_one">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text"
																	placeholder="yyyy-mm-dd HH:ii:ss"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdatetimeformat" />2</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div
																class="input-group input-append date form_date_time_two">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text"
																	placeholder="yyyy-mm-dd HH:ii"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customdatetimeformat" />3</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div
																class="input-group input-append date form_date_time_three">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text"
																	placeholder="yyyy-mm-dd HH时"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo"><fmt:message
														key="label.home.Customtimeformat" /></a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="col-lg-4 col-md-6 col-xs-12">
													<div class="row form-group">
														<div class="col-xs-6">
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customtimeformat" />1</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_time_one">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text" placeholder="hh:mm:ss"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
															<label for="Date" class="control-label"><fmt:message
																	key="label.home.Customtimeformat" />2</label> <input
																name="[form][tDate][dataType]" type="hidden"
																value="Date" /> <input name="[form][Date][queryType]"
																type="hidden" value="equal" />
														</div>
														<div class="col-xs-6">
															<div class="input-group input-append date form_time_two">
																<input id="Date" name="[form][Date][value]"
																	class="form-control" type="text" placeholder="hh:mm"
																	value="<fmt:formatDate value="${testExercise.Date }" pattern="yyyy-MM-dd"/>" />
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
									<div class="panel panel-info">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapseTwo">show</a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="row form-group">
													<div class="col-xs-2">
														<label class="control-label"><fmt:message
																key="label.home.Recorddate" />：</label>
													</div>
													<div class="col-xs-10">
														<div class="col-xs-8 input-group date form_date">

															<input id="before" name="startDate" class="form-control"
																type="text" /> <span
																class="input-group-addon   btn  btn-info"> <i
																class=" glyphicon glyphicon-calendar"> </i></span>
															<!-- </div> 
								<div class="col-xs-5 input-group date form_date"> -->

															<span
																class="form-control-static input-group-addon add-on">-
															</span> <input id="today" name="endDate" class="form-control"
																type="text" /> <span
																class="input-group-addon   btn  btn-info"> <i
																class=" glyphicon glyphicon-calendar"> </i></span>
															<!-- <div class="input-group-btn"> -->
															<div class="col-xs-2 input-group-btn">
																<button type="button"
																	class="btn btn-default dropdown-toggle"
																	data-toggle="dropdown">
																	<fmt:message key="label.home.Pleaseselectadate" />
																	<select id="datechange" name="day">
																		<option value=""></option>
																		<option value="-1">最近1天</option>
																		<option value="-2">最近2天</option>
																		<option value="-3">最近3天</option>
																		<option value="-4">最近4天</option>
																	</select>
																</button>
															</div>
														</div>
													</div>


												</div>
											</div>
										</div>
										<div class="panel panel-info">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" href="#collapseTwo"><fmt:message
															key="label.home.compicktreelist.Operationguide" /></a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse in">
												<div class="panel-body">
													<p>
														<!-- <br>日期时间选取控件：其显示方式主要由startView和showMeridian的值确定，startView的值有5种，其属性为：Number, String. 默认值：4, 'decade'，具体如下：</br> -->
														<br>日期时间选取控件</br> <br>
														如点击Decade视图，表示十年视图，日期时间选择器打开之后首先显示的即为该视图，此时startView的值为4或"decade"；</br>
														<br>点击进入当前年份，继续点击会进入到月份.......直到具体的分钟；</br> <br>
														如点击Year视图，表示年视图，日期时间选择器打开之后首先显示的即为该视图，此时startView的值为3或"year"；</br>
														<br>如点击Month视图，表示月视图，日期时间选择器打开之后首先显示的即为该视图，此时startView的值为2或"month"；</br>
														<br>
														如点击Day视图，表示日视图，日期时间选择器打开之后首先显示的即为该视图，此时startView的值为1或"day"；</br>
														<br>如点击Hour视图，表示小时视图，日期时间选择器打开之后首先显示的即为该视图，此时startView的值为0或"hour"；</br>
														<br>showMeridian的值为“true”/"false",默认值为false,true是用来设置12小时制的上午(AM)和下午(PM)时间,如上面TestDate视图;false是用来设置24小时制的，如点击上面的Day视图。</br>
													</p>
												</div>
											</div>
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
	<!-- /.row -->

	<script
		src="${ctx}/${app_version}/showcase/datetimepicker/js/DateTimePickerList.js"></script>
</body>
</html>


