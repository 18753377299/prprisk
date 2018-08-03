var setting = {
		edit: {
			enable: true,
			isMove:true,
			showRemoveBtn:false,
			showRenameBtn:false,
			editNameSelectAll: true,
			
		},
		view: {
			selectedMulti: false
		},
	
		data: {
			simpleData: {
				enable: true
			}
		},
		callback: {
			onClick: zTreeOnClick
		}
	};	
	function zTreeOnClick(event, treeId, treeNode) {
		$("#id").val(treeNode.id);
		$("#name").val(treeNode.name);
		$.fn.zTree.destroy("treeDemo");
		$("#comTree").css("display","none");
	};	
	$(function() {
        //name是机构名称输入框的id
	$("#name").bind(
			'click input propertychange', function() {
			showMenu();
			var zNodes = "";
//			if($("#name").val() == ""){			
//				$.ajax({
//					type : "POST",
//					url : contextPath + "/menu/setTreeNode.do",
//					data : {
//						systemCode:"platform"
//					},
//					async : false,
//					success : function(obj) {
//						if (obj!= "") {
//							zNodes = obj.data;
//							var data_str ='<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;background-color:#cccccc"></ul>';
//							$("#comTree").html(data_str);
//						}
//					}
//					
//				});
//			}else{
				$.ajax({
					type : "POST",
					url : contextPath + "/sysCompany/setTreeNode.do",
					data : {
						str:$("#name").val()
					},
					async : false,
					success : function(obj) {
						if (obj!= "") {			
							zNodes = obj.data;
							var data_str ='<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;background-color:#cccccc"></ul>';
							$("#comTree").html(data_str);
						}else{
							var message='没有数据!请重新输入或选择！';
							var data_str = '<div class="message"  style="color:red;border:1px solid #CCCCCC;padding:5px;border-radius: 5px;"> </div>';
							$("#comTree").html(data_str);
							$(".message").text(message);
							
						}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
							flag = false;
							bootbox.alert(textStatus + errorThrown);
				}
					
				});
//			}
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			
			});
	
		function showMenu(){
			var cityObj = $("#name");
			var cityOffset = $("#name").offset();
			$("#comTree").css({position: "absolute",left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
			$("body").bind("mousedown", onBodyDown);
		}
	
		function hideMenu() {
			$("#comTree").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "comTree" || $(event.target).parents("#comTree").length>0)) {
				hideMenu();
			}
		}
	
	
});