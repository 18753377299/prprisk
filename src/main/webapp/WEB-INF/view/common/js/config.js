require.config({
    paths: {
        "jquery":	"/platform/static/adminlte/2.3.2/plugins/jQuery/jQuery-2.1.4.min.js?v=2.3.2",
        "bootstrap":	"/platform/static/adminlte/2.3.2/bootstrap/js/bootstrap.min.js?v=2.3.2",
        "bootstrap-datetimepicker":	"/platform/static/datetimepicker/1.0.2/js/bootstrap-datetimepicker.min.js?v=1.0.2",
        "bootstrap-datetimepicker.zh-CN":	"/platform/static/datetimepicker/1.0.2/js/locales/bootstrap-datetimepicker.zh-CN.js?v=1.0.2",
        "jquery.validate":	"/platform/static/jquery-validation/1.14.0/jquery.validate.min.js?v=1.14.0",
        "additional-methods":	"/platform/static/jquery-validation/1.14.0/additional-methods.min.js?v=1.14.0",
        "jquery.qtip":	"/platform/static/qtip2/2.1.1/jquery.qtip.min.js?v=2.1.1",
        "bootbox":	"/platform/static/bootbox/4.4.0/bootbox.js?v=4.4.0",
        "select2":	"/platform/static/adminlte/2.3.2/plugins/select2/select2.full.min.js?v=3.5.2",
        "slimScroll":	"/platform/static/adminlte/2.3.2/plugins/slimScroll/jquery.slimscroll.min.js?v=2.3.2",
        "fastclick":	"/platform/static/adminlte/2.3.2/plugins/fastclick/fastclick.min.js?v=2.3.2",
        "app":	"/platform/static/adminlte/2.3.2/dist/js/app.min.js?v=2.3.2",
        "datatables" : '/platform/static/adminlte/2.3.2/plugins/datatables/jquery.dataTables.min.js?v=2.3.2',
        "dataTables.bootstrap":	"/platform/static/adminlte/2.3.2/plugins/datatables/dataTables.bootstrap.min.js?v=2.3.2",
        "AjaxList" : '/platform/common/js/AjaxList',
        "menuCookie" : "/platform/common/js/menuCookie",
    },
    

	shim:{
	    'bootstrap':{
	    	"deps":["jquery"]
	     },
	     'bootstrap-datetimepicker':{
	    	 "deps":["jquery","bootstrap"],
	    	 "exports":"datetimepicker"
	     },
	     "slimScroll":{
	    	 "deps":["jquery"]
	     },
	     "app":{
	    	 "deps":["jquery"]
	     }
	    /* 'dataTables':{
	    	 "deps":["jquery","bootstrap"],
	    	 "exports":"dataTable"
	     }*/
	}

});