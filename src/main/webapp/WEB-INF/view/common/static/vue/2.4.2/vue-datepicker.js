
 Vue.component('picker', {
	    props: ['date'],
	    template: ' <div  class="input-group date">\
		    					<input type="text" class="form-control"  :value="date">\
		    					<span class="input-group-addon">\
		    						<span class="glyphicon glyphicon-calendar"></span>\
		    					</span>\
		    				</div>',  
	    'mounted': function() {
	    	var that = this;
	        //$(this.$el.firstChild).datetimepicker();
	    	var compself = this.$el;
	    	var attrs = compself.attributes;
	    	var iformat = attrs['dataformat']?attrs['dataformat'].value:"yyyy-mm-dd";
	    	var iminView = (iformat.substr(iformat.length-2,2)=="dd")?"month":"day";
	        $(compself).datetimepicker(
	        		{
	    				format : iformat,
	    				language : "zh-CN",
	    				autoclose : true,
	    				todayBtn : true,
	    				todayHighlight : true,
	    				showMeridian : false,
	    				minView : iminView,
	    				pickerPosition : "bottom-left",
	    			
	    			}
	        )
	        .on('hide', function (event) {
	        	that.date = this.firstChild.value;
	         that.$emit("on-result-change",that.date,event.target,that.$attrs.compvar);
	        });
	    	
	    }
	    
	   
	});
