<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/view/common/taglib.jspf" />
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript">
	var serviceUrl = "http://localhost:8080/platform/rpc/json/ins/platform/echo/service/facade/EchoService";
	function echoStringByString() {
		// 定义请求数据
		var requestJSON = "";
		// 定义请求对象类型，每个非基本类型对象都必须有此属性
		requestJSON += '["org.springframework.remoting.support.RemoteInvocation",';
		//定义要调用的Rpc方法名
		requestJSON += '{"methodName":"echoStringByString",';
		// 定义参数类型列表
		requestJSON += '"parameterTypes":["java.lang.String"],';
		//定义参数值列表（注意看第三个的实体类型参数的写法）
		requestJSON += '"arguments":["[Ljava.lang.Object;",[' + '"'
				+ $("#input1").val() + '"' + ']],';
		requestJSON += '"attributes":null}]';
		// 转换为JSON字符串,这里仅支持IE8+（IE8需要设置Header头：<meta http-equiv="X-UA-Compatible" content="IE=edge">）、谷歌浏览器、火狐浏览器等，
		// 对于那些并不提供本地JSON支持的浏览器可以引入脚本json2.js，来实现JSON转换功能。
		// json2.js脚本可到https://github.com/douglascrockford/JSON-js/blob/master/json2.js页面下载

		// 开始调用服务
		$("#request1").val(requestJSON);
		$
				.ajax({
					url : serviceUrl,
					// 以下两个参数如果需要Basic认证才需要，否则请删除
					username:'admin',
					password:'sinosoft2',
					  headers: {
						    "Authorization": "Basic " + btoa("admin" + ":" + "sinosoft")
						  },
					// 定义请求方式为POST
					type : 'post',
					contentType : "application/octet-stream",
					dataType : 'json',
					data : requestJSON,
					success : function(json) {
						// 打印出响应后JSON对象的序列化字符串
						$("#response1").val(JSON.stringify(json));
						$("#output1").val(JSON.stringify(json[1].value));

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert('异常：' + textStatus + ',' + errorThrown);
					}
				});
	}

	function echoObjectByString() {
		// 定义请求数据
		var requestJSON = "";
		// 定义请求对象类型，每个非基本类型对象都必须有此属性
		requestJSON += '["org.springframework.remoting.support.RemoteInvocation",';
		//定义要调用的Rpc方法名
		requestJSON += '{"methodName":"echoObjectByString",';
		// 定义参数类型列表
		requestJSON += '"parameterTypes":["java.lang.String"],';
		//定义参数值列表（注意看第三个的实体类型参数的写法）
		requestJSON += '"arguments":["[Ljava.lang.Object;",[' + '"'
				+ $("#input2").val() + '"' + ']],';
		requestJSON += '"attributes":null}]';
		// 转换为JSON字符串,这里仅支持IE8+（IE8需要设置Header头：<meta http-equiv="X-UA-Compatible" content="IE=edge">）、谷歌浏览器、火狐浏览器等，
		// 对于那些并不提供本地JSON支持的浏览器可以引入脚本json2.js，来实现JSON转换功能。
		// json2.js脚本可到https://github.com/douglascrockford/JSON-js/blob/master/json2.js页面下载

		// 开始调用服务
		$("#request2").val(requestJSON);
		$
				.ajax({
					url : serviceUrl,
					// 以下两个参数如果需要Basic认证才需要，否则请删除
					//username:'admin',
					//password:'sinosoft',
					// 定义请求方式为POST
					type : 'post',
					contentType : "application/octet-stream",
					dataType : 'json',
					data : requestJSON,
					success : function(json) {
						// 打印出响应后JSON对象的序列化字符串
						$("#response2").val(JSON.stringify(json));
						$("#output2").val(JSON.stringify(json[1].value));

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert('异常：' + textStatus + ',' + errorThrown);
					}
				});
	}
	function echoStringByObject() {
		// 定义请求数据
		var requestJSON = "";
		// 定义请求对象类型，每个非基本类型对象都必须有此属性
		requestJSON += '["org.springframework.remoting.support.RemoteInvocation",';
		//定义要调用的Rpc方法名
		requestJSON += '{"methodName":"echoStringByObject",';
		// 定义参数类型列表
		requestJSON += '"parameterTypes":["ins.platform.echo.vo.EchoVo"],';
		//定义参数值列表（注意看第三个的实体类型参数的写法）
		requestJSON += '"arguments":["[Ljava.lang.Object;",['
				+ $("#input3").val() + ']],';
		requestJSON += '"attributes":null}]';
		// 转换为JSON字符串,这里仅支持IE8+（IE8需要设置Header头：<meta http-equiv="X-UA-Compatible" content="IE=edge">）、谷歌浏览器、火狐浏览器等，
		// 对于那些并不提供本地JSON支持的浏览器可以引入脚本json2.js，来实现JSON转换功能。
		// json2.js脚本可到https://github.com/douglascrockford/JSON-js/blob/master/json2.js页面下载

		// 开始调用服务
		$("#request3").val(requestJSON);
		$
				.ajax({
					url : serviceUrl,
					// 以下两个参数如果需要Basic认证才需要，否则请删除
					//username:'admin',
					//password:'sinosoft',
					// 定义请求方式为POST
					type : 'post',
					contentType : "application/octet-stream",
					dataType : 'json',
					data : requestJSON,
					success : function(json) {
						// 打印出响应后JSON对象的序列化字符串
						$("#response3").val(JSON.stringify(json));
						$("#output3").val(JSON.stringify(json[1].value));

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert('异常：' + textStatus + ',' + errorThrown);
					}
				});
	}
	
	function echoObjectByObject() {
		// 定义请求数据
		var requestJSON = "";
		// 定义请求对象类型，每个非基本类型对象都必须有此属性
		requestJSON += '["org.springframework.remoting.support.RemoteInvocation",';
		//定义要调用的Rpc方法名
		requestJSON += '{"methodName":"echoObjectByObject",';
		// 定义参数类型列表
		requestJSON += '"parameterTypes":["ins.platform.echo.vo.EchoVo"],';
		//定义参数值列表（注意看第三个的实体类型参数的写法）
		requestJSON += '"arguments":["[Ljava.lang.Object;",['
				+ $("#input4").val() + ']],';
		requestJSON += '"attributes":null}]';
		// 转换为JSON字符串,这里仅支持IE8+（IE8需要设置Header头：<meta http-equiv="X-UA-Compatible" content="IE=edge">）、谷歌浏览器、火狐浏览器等，
		// 对于那些并不提供本地JSON支持的浏览器可以引入脚本json2.js，来实现JSON转换功能。
		// json2.js脚本可到https://github.com/douglascrockford/JSON-js/blob/master/json2.js页面下载

		// 开始调用服务
		$("#request4").val(requestJSON);
		$
				.ajax({
					url : serviceUrl,
					// 以下两个参数如果需要Basic认证才需要，否则请删除
					//username:'admin',
					//password:'sinosoft',
					// 定义请求方式为POST
					type : 'post',
					contentType : "application/octet-stream",
					dataType : 'json',
					data : requestJSON,
					success : function(json) {
						// 打印出响应后JSON对象的序列化字符串
						$("#response4").val(JSON.stringify(json));
						$("#output4").val(JSON.stringify(json[1].value));

					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert('异常：' + textStatus + ',' + errorThrown);
					}
				});
	}
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-12">
			<br />
			<ol class="breadcrumb">
				<li><i class="fa fa-dashboard"></i> <a href="${ctx}/">首页</a></li>
				<li class="active"><i class="fa fa-table"></i> RPC Echo</li>
			</ol>
		</div>
		<div class="col-lg-12">
			<div class="panel-group" id="accordion">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse1">1、字符串—> 字符串</a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="input1">输入数据</label>
								</div>
								<div class="col-lg-11">
									<input id="input1" class="form-control" placeholder="输入请求参数"
										onblur="echoStringByString();" />
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="output1">响应数据</label>
								</div>
								<div class="col-lg-11">
									<textarea id="output1" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request1">请求报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="request1" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request1">响应报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="response1" class="form-control" readonly></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse2">2、字符串—>对&nbsp;&nbsp;象</a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="input2">输入数据</label>
								</div>
								<div class="col-lg-11">
									<input id="input2" class="form-control" placeholder="输入请求参数"
										onblur="echoObjectByString();" />
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="output2">响应数据</label>
								</div>
								<div class="col-lg-11">
									<textarea id="output2" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request2">请求报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="request2" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request2">响应报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="response2" class="form-control" readonly></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse3">3、对&nbsp;&nbsp;象—>字符串</a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="input3">输入数据</label>
								</div>
								<div class="col-lg-11">
									<input id="input3" class="form-control" placeholder="输入请求参数"
										onblur="echoStringByObject();"
										value='["ins.platform.echo.vo.EchoVo",{"value":"中科软3","time":["java.util.Date",1440581234017]}]' />
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="output3">响应数据</label>
								</div>
								<div class="col-lg-11">
									<textarea id="output3" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request3">请求报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="request3" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request3">响应报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="response3" class="form-control" readonly></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse4">4、对&nbsp;&nbsp;象—>对&nbsp;&nbsp;象</a>
						</h4>
					</div>
					<div id="collapse4" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="input4">输入数据</label>
								</div>
								<div class="col-lg-11">
									<input id="input4" class="form-control" placeholder="输入请求参数"
										onblur="echoObjectByObject();"
										value='["ins.platform.echo.vo.EchoVo",{"value":"中科软4","time":["java.util.Date",1440581246607]}]' />
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="output4">响应数据</label>
								</div>
								<div class="col-lg-11">
									<textarea id="output4" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request4">请求报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="request4" class="form-control" readonly></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-1">
									<label class="control-label" for="request4">响应报文</label>
								</div>
								<div class="col-lg-11">
									<textarea id="response4" class="form-control" readonly></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>