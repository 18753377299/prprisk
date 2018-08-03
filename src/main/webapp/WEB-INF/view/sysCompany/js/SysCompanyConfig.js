var flag = false;
var zTreeNode = new Array();
var setting = {
		edit: {
			enable: true,
			isMove:true,
			showRemoveBtn:true,
			showRenameBtn:false,
			//removeTitle:"删除",
			//renameTitle:"重命名",
			editNameSelectAll: true,
			
		},
		view: {
			selectedMulti: false,
			addHoverDom: addHoverDom,
			removeHoverDom: removeHoverDom,
			fontCss:  setFontCss
		},
		async: {
			enable: true,
			url:getAsyncUrl,
			autoParam:["id=pId"],
			dataFilter: filter
		},
		data: {
			simpleData: {
				enable: true
			}
		},
		check: {
			//enable: true
		},
		callback: {
			//beforeDrag: beforeDrag,
			//beforeDrop: beforeDrop,
			beforeRemove: beforeRemove,
//			beforeClick: zTreeBeforeClick,
			onClick: zTreeOnClick,
			//onAsyncError: zTreeOnAsyncError,
			//onAsyncSuccess: zTreeOnAsyncSuccess,
			onDrag: zTreeOnDrag,
			onDrop: zTreeOnDrop,
			onRemove: onRemove
		}
	};

	function getAsyncUrl(treeId, treeNode) {
	    return contextPath + "/sysCompany/show/";
	};
	
	var lastTreeNode;
	function addHoverDom(treeId, treeNode) {
//		if(lastTreeNode != null){
//			$("#addBtn_"+lastTreeNode.tId).unbind().remove();
//			$("#"+lastTreeNode.tId + "_remove").unbind().remove();
//		}
		lastTreeNode = treeNode;
		var sObj = $("#" + treeNode.tId + "_span");
		if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
		var addStr = "<img src='/pdfb4/img/menu/3.png' id='addBtn_" + treeNode.tId
			+ "' title='add' onfocus='this.blur();'/>";
		sObj.after(addStr);
		var btn = $("#addBtn_"+treeNode.tId);
		var newCount = 1;
		btn.bind("click", function(){
			$("#addBtn_"+treeNode.tId).unbind().remove();
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			var $modal = $('#ajax-modal');
			$('body').modalmanager('loading');
			$modal.load(contextPath + "/sysCompany/edit/"+treeNode.id+"?editMode=create", '', function(){
			      $modal.modal();
			});
			/*$.ajax({
				type : "POST",
				url : contextPath + "/sysCompany/add.do",
				data : {
					pId : treeNode.id,
					name : treeNode.name
				},
				async : false,
				success : function(obj) {
					if (obj.status == '200') {
						newTreeNode = obj.data;
						zTree.addNodes(treeNode, newTreeNode);
						if(!treeNode.isParent){
							treeNode.isParent = true;
							treeNode.icon = null;
//							treeNode.iconOpen("/pdfb4/img/menu/1_open.png");
//							treeNode.iconClose("/pdfb4/img/menu/1_close.png");
							zTree.updateNode(treeNode);
						}
					}
				},
			});*/
		});
	};
	
	function removeHoverDom(treeId, treeNode) {
		$("#addBtn_"+treeNode.tId).unbind().remove();
//		var zTree = $.fn.zTree.getZTreeObj("treeDemo");
	};
	
	function beforeRemove(treeId, treeNode) {
		var flag = menuDelete(treeId, treeNode);
		return flag;
	};
	
	//机构删除
		function menuDelete(treeId, treeNode){
			var flag = false;
			
			if(confirm("删除后该机构将不能再恢复，确认删除么？")){
				$.ajax({
					type : "POST",
					url : contextPath + "/sysCompany/delete/" + treeNode.id,
					async : false,
					success : function(obj) {
						if (obj.status == '200') {
							console.log("调整成功");
						}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						bootbox.alert(textStatus + errorThrown);
					}
				});
				flag = true;
			}else {
				flag = false;
			}
			return flag;
		}
	
	function onRemove(e, treeId, treeNode) {
//		$.ajax({
//			type : "POST",
//			url : contextPath + "/sysCompany/delete/" + treeNode.id,
//			async : false,
//			success : function(obj) {
//				if (obj.status == '200') {
//					console.log("调整成功");
//				}
//			},
//			error : function(XMLHttpRequest, textStatus, errorThrown) {
//				bootbox.alert(textStatus + errorThrown);
//			}
//		});
	};
	
	function setFontCss(treeId, treeNode) {
		if(!treeNode.isParent)
			return {'color':'red','font-weight':'bold'};
		else
			return {'font-weight':'bold','font-size':'20px'};
	}
	
	function zTreeOnDrop(event, treeId, treeNodes, targetNode, moveType,isCopy) {
		if(flag){
			var data = "";
			for(var i = 0; i <treeNodes.length; i++){
				if(targetNode != null){
					data = "id=" + treeNodes[i].id + "&pId=" + (treeNodes[i].pId == null ? 0 : treeNodes[i].pId) + "&targetId=" + targetNode.id 
								+ "&targetPId=" + (targetNode.pId == null ? treeNodes[i].id : targetNode.pId) + "&moveType=" + moveType;
				}else{
					data = "id=" + treeNodes[i].id + "&pId=" + treeNodes[i].id + "&moveType=noTarget";
				}
				console.log(data);
				$.ajax({
					type : "POST",
					url : contextPath + "/sysCompany/update.do",
					data : data,
					async : false,
					success : function(obj) {
						if (obj.status == '200') {
							console.log("调整成功");
						}
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						flag = false;
						bootbox.alert(textStatus + errorThrown);
					}
				});
			}
			flag = false;
		}
	};
	function zTreeOnDrag(event, treeId, treeNodes) {
		flag = true;
	};
	function zTreeOnAsyncSuccess(event, treeId, treeNode, msg) {
	    alert(msg);
	};
	function zTreeOnAsyncError(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown) {
	    alert(XMLHttpRequest);
	};
	
	function zTreeOnClick(event, treeId, treeNode) {
		$("#addBtn_"+treeNode.tId).unbind().remove();
		$("#"+treeNode.tId + "_remove").unbind().remove();
		var $modal = $('#ajax-modal');
		$('body').modalmanager('loading');
		$modal.load(contextPath + "/sysCompany/edit/"+treeNode.id, '', function(){
		      $modal.modal();
		});
	};
	
	function filter(treeId, parentNode, childNodes) {
		if (!childNodes) return null;
		for (var i=0, l=childNodes.length; i<l; i++) {
		}
		return childNodes;
	}

	function beforeDrag(treeId, treeNodes) {
		for (var i=0,l=treeNodes.length; i<l; i++) {
			if (treeNodes[i].drag === false) {
				return false;
			}
		}
		return true;
	}
	function beforeDrop(treeId, treeNodes, targetNode, moveType) {
		return targetNode ? targetNode.drop !== false : true;
	}
	
	$(document).ready(function(){
//		var treeNode = new Array();
		$.ajax({
			type : "POST",
			url : contextPath + "/sysCompany/setTreeNode.do",
			async : false,
			success : function(obj) {
				if (obj.status == '200') {
					zTreeNode = obj.data;
				}
			},
		});
		$.fn.zTree.init($("#treeDemo"), setting,zTreeNode);
		
		$("button.btn-refresh").click(function() {
			var treeNode2 = new Array();
			$.ajax({
				type : "POST",
				url : contextPath + "/sysCompany/setTreeNode.do",
				async : false,
				success : function(obj) {
					if (obj.status == '200') {
						treeNode2 = obj.data;
						zTreeNode = treeNode2;
						bootbox.alert("刷新成功");
					}
				},
			});
			$.fn.zTree.init($("#treeDemo"), setting,treeNode2);
		})
		var ajaxEdit = new AjaxEdit("#editForm");
		ajaxEdit.targetUrl = contextPath + "/sysCompany/save"; 
		ajaxEdit.bindForm();
	});