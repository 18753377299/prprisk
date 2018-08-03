$(function() {
	var vm;
	vm = new Vue({
		el : '#approw',
		data : function() {
			var obj = {
				Vshow : true,
				id : '',
				score : '',
				date : "",
				fieldsetConfig : '',
				editModel : '',
				isCalscoreFlag : false,
				show : true,
				book : "",
				todos : []
			};
			obj.book = new Object();
			obj.book.birthday = "", 
			obj.book.sell = "", 
			obj.book.name = '',
			obj.book.name1 = "",
			obj.book.message = "", 
			obj.book.single = "",
			obj.book.cName = "", 
			obj.book.eName = "",
			obj.book.date = "", 
			obj.book.score = "",
			obj.book.birthday = '', 
			obj.book.checkedNames = [];
			obj.book.id = [];
			return obj;
		},
		// 初始化页面执行
		created : function() {
			var url = window.location.href;
			var id = url.substring((url.indexOf('=') > -1 ? url.indexOf('=') + 1 : url.length), url.length);
			var _self = this;
			// 此处强烈推荐使用同步方法获取数据，异步方法获取会造成页面数据异常
			if(id != ""){
			$.ajax({
				url : contextPath + "/risk/getmydatajsonVue",
				type : 'GET', // POST
				async : false, // 或false,是否异步
				data : {
					id : '1234567'
				},
				dataType : 'json', // 返回的数据格式：json
				// 提交数据前回调方法
				beforeSend : function(xhr) {
					var msgOption = {
						message : "操作进行中，请稍候...",
						closeButton : false,
						animate : false,
						buttons : {}
					};
					bootbox.dialog(msgOption);
				},
				// 提交数据成功回调方法
				success : function(data, textStatus, jqXHR) {
					var result = null;
					try {
						result = eval(data);
						if(data.book != null){
							_self.book = data.book;
						}
						if(data.todos != null){
							_self.todos = data.todos;
						}
					} catch (exception) {
						history.go(0);
					}
					var messageText = "";
					var success = true;
					if (textStatus == "success") {
						messageText = '操作成功';
					} else {
						success = false;
						// messageText = data.datas['EX_MAIN'] + "<br/>"
						// + "详细信息如下:" + "<br/>"
						// + data.datas['EX_MESSAGE'];
						// if (messageText == null || messageText == '') {
						// messageText = "未知错误";
						// }
					}
					// bootbox组件自定义弹窗
					var msgOption = {
						message : messageText,
						closeButton : false,
						animate : false,
						buttons : {
							close : {
								label : "确定",
								className : "btn-success",
								callback : function() {
									bootbox.hideAll();
								}
							}
						}
					};
					bootbox.dialog(msgOption);

				},
				// 提交数据异常回调方法
				error : function(xhr, textStatus) {
					// alert('异常返回回调。。。');
				},
				// 请求结束回调方法
				complete : function() {
					// alert('结束回调。。。');
				}
			});
			}
		},

		// watch : {
		//
		// //监控单个输入域动态
		// 'editModel' : {
		// handler : function(val, oldVal) {
		// isCalscoreFlag = "true";
		// alert("-----挂载事件watch：原值：" + oldVal + "-----新值：" + val);
		// },
		// },
		// //监控一个对象单个属性动态
		// 'book.name' : {
		// handler : function(val, oldVal) {
		// isCalscoreFlag = "true";
		// alert("-----挂载事件watch：原值：" + oldVal + "-----新值：" + val);
		// },
		// deep : true,
		// },
		// //监控整个对象所有属性动态
		// 'book' : {
		// handler : function(val, oldVal) {
		// isCalscoreFlag = "true";
		// alert("-----挂载事件watch：原值：" + oldVal + "-----新值：" + val);
		// },
		// deep : true,
		// },
		//			
		// },

		methods : {
			// 使用第三方插件时，都必须包含该方法，实现第三方插件的双向绑定 ： 开始
			onResultChange : function(val, event, outkey) {
				// this.mydate=val;//④外层调用组件方注册变更方法，将组件内的数据变更，同步到组件外的数据状态中
				if (outkey.match(/.*\..*/)) {
					var strArr = outkey.split("."); // 字符分割
					if (strArr.length == 2) {
						this.$set(this[strArr[0]], strArr[1], val);
					} else if (strArr.length == 3) {
						this.$set(this[strArr[0]][strArr[1]], strArr[2], val);
					}
				} else {

					this.$set(this, outkey, val);
				}
			},
			// 使用第三方插件时，都必须包含该方法，实现第三方插件的双向绑定 ： 开始
			
			// 多行域添加一行方法
			myvueaddTest : function() {
				this.todos.push({
					id : '',
					name : '',
					text : '',
					date : '',
					score : ''
				});
			},
			// 多行域删除一行方法：index--当前行序号
			myvuedeleteTest : function(index) {
				// 从 index 开始 删除 1 条
				this.todos.splice(index, 1);
			},
			// 入参：inputEvent 获取当前域值：obj.data
			isCalscoreInput : function(obj) {
				alert(obj.data);
				isCalscoreFlag = "true";
				alert("挂载 监听input事件isCalscoreInput()：" + isCalscoreFlag);
			},
			// 入参：Event 获取当前域值：obj.target.value
			isCalscoreChange : function(obj) {
				alert(obj.target.value);
				alert("挂载change事件:   isCalscoreChange()");
				// this.book.name = "12345";
			},
			readonlyset : function() {
				var obj = $("#readonlyset").attr("disabled");
				if (obj) {
					this.editModel = "edit";
					$("#readonlyset").removeAttr("disabled");
				} else {
					this.editModel = "browse";
					$("#readonlyset").attr("disabled", "disabled");
				}
			},
			
			showResult : function() {
				// alert(this.book.name);
				// alert(this.book.message);
				// alert(this.book.name + this.book.message);
				// alert((this.book.name + this.book.message) > 5);
			}
		},
        
		// 过滤器：目前只适用于 mustache 插值( {{}} )和 v-bind 表达式 (后者从 2.1.0+
		// 开始支持),当前代码中后者双向绑定未实现
//		filters : {
//			capitalize : function(value,type) {
//				if(value != ''){
//					var time = dateFmt(value, "yyyy-MM-dd hh:mm:ss");
//// vm.book.name1 = time;
//// alert("======================" + vm.book.name1);
//					return time;
//				}
//			},
//		}

	});

	// 提交数据方法：直接操作Vue对象data数据
	$("#mysubmit").click(function() {
		var temp = JSON.stringify(vm._data);
		var ajaxEdit = new AjaxEdit("#form");
		ajaxEdit.targetUrl = contextPath + "/risk/saveVue";
		ajaxEdit.afterSuccess = function(obj) {
			var id = obj.responseJSON.data.book.name;
			location.href = contextPath + "/risk/showResultVue?id=" + id;
		};
		ajaxEdit.afterFailure = function() {
			bootbox.dialog("操作失败");
		};
		ajaxEdit.bindForm(temp);
	});

	// 返回数据格式化方法，处理checkbox数组等数据
	function parse(data) {
		for ( var key in data) {
			if (data[key]) {
				if (typeof (data[key]) == "string"
						&& data[key].match(/^\[(.*)\]$/)) {
					data[key] = JSON.parse(data[key]);
				} else if (data[key] instanceof Array) {
					for ( var ikey in data[key]) {
						var obj = data[key][ikey];
						for ( var index in obj) {
							if (typeof (obj[index]) == "string"
									&& obj[index].match(/^\[(.*)\]$/)) {
								obj[index] = JSON.parse(obj[index]);
							}
						}
					}
				} else if (data[key] instanceof Object) {
					for ( var ikey in data[key]) {
						if (typeof (data[key][ikey]) == "string"
								&& data[key][ikey].match(/^\[(.*)\]$/)) {
							data[key][ikey] = JSON.parse(data[key][ikey]);
						}
					}
				}
			}
		}
	}

	function getstr(data) {
		var str = new Array();
		$.each(data, function(name, value) {
			if (name instanceof String) {
				return name;
			} else if (name instanceof Object) {
				str.push(name + "." + getstr(value));
			}
		});
	}

	

	/**
	 * * **************************************excharts*
	 * 组件：开始*****************************************
	 */

	var dom = document.getElementById("container");
	var myChart = echarts.init(dom, 'shine');
	var app = {};
	option = null;
	var base = +new Date(1968, 9, 3);
	var oneDay = 24 * 3600 * 1000;
	var date = [];

	var data_line = [ Math.random() * 300 ];

	for (var i = 1; i < 20000; i++) {
		var now = new Date(base += oneDay);
		date.push([ now.getFullYear(), now.getMonth() + 1, now.getDate() ]
				.join('-'));
		data_line.push(Math
				.round((Math.random() - 0.5) * 20 + data_line[i - 1]));
	}

	option = {
		tooltip : {
			trigger : 'axis'
		},
		title : {
			left : 'center',
			text : '大数据量折线图',
		},
		legend : {
			top : 'bottom',
			data : [ '意向' ]
		},
		toolbox : {
			show : true,
			feature : {
				dataView : {
					show : true,
					readOnly : false
				},
				magicType : {
					show : true,
					type : [ 'line', 'bar', 'stack', 'tiled' ]
				},
				restore : {
					show : true
				},
				saveAsImage : {
					show : true
				}
			}
		},
		xAxis : {
			type : 'category',
			boundaryGap : false,
			data : date
		},
		yAxis : {
			type : 'value',
			boundaryGap : [ 0, '100%' ]
		},
		dataZoom : [ {
			type : 'inside',
			start : 0,
			end : 10
		}, {
			start : 0,
			end : 10
		} ],
		series : [ {
			name : '模拟数据',
			type : 'line',
			smooth : true,
			symbol : 'none',
			sampling : 'average',
			itemStyle : {
				normal : {
					color : 'rgb(255, 70, 131)'
				}
			},
			areaStyle : {
				normal : {
					color : new echarts.graphic.LinearGradient(0, 0, 0, 1, [ {
						offset : 0,
						color : 'rgb(255, 158, 68)'
					}, {
						offset : 1,
						color : 'rgb(255, 70, 131)'
					} ])
				}
			},
			data : data_line
		} ]
	};
	;
	if (option && typeof option === "object") {
		var startTime = +new Date();
		myChart.setOption(option, true);
		var endTime = +new Date();
		var updateTime = endTime - startTime;
		console.log("Time used:", updateTime);
	}

	/**
	 * * ***************************************excharts*
	 * 组件：结束*********************************************
	 */

});

/** 双击，查找带回调用方法：入参（操作域 id） */
function userLookupDialog(codeFieldId, nameFieldId) {
	var $modal = $('#ajax-sysUserModal');
	$('body').modalmanager('loading');
	$modal.load(contextPath + "/risk/userLookUp.dialog?codeFieldId="
			+ codeFieldId + "&nameFieldId=" + nameFieldId, '', function() {
		$modal.modal();
	});
};

// long型时间格式化工具，入参（时间，格式）
//function dateFmt(time, pattern) {
//	var date = new Date(parseInt(time));
//	if (/(y+)/.test(pattern)) {
//		pattern = pattern.replace(RegExp.$1, (date.getFullYear() + '')
//				.substr(4 - RegExp.$1.length));
//	}
//	var o = {
//		'M+' : date.getMonth() + 1,
//		'd+' : date.getDate(),
//		'h+' : date.getHours(),
//		'm+' : date.getMinutes(),
//		's+' : date.getSeconds()
//	};
//	for (k in o) {
//		if (new RegExp(`(${k})`).test(pattern)) {
//			var str = o[k] + '';
//			pattern = pattern.replace(RegExp.$1, (RegExp.$1.length === 1) ? str
//					: padLeftZero(str));
//		}
//	}
//	return pattern;
//};
//function padLeftZero(str) {
//    return ('00' + str).substr(str.length);
//}
