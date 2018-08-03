
   Vue.component('myscore', {
	       
	    template: '<input  id="myscore" v-model="score" type="text" title=""/>',
	    
	    props: ['score'],	 
	    
	    'mounted': function() {
	    	var that = this;
	        //$(this.$el.firstChild).datetimepicker();
	    	var compself= this.$el;
	    	var attrs = compself.attributes;
	        $(compself).rating({
	            'showCaption': false,
	            'stars': attrs['datastars']?attrs['datastars'].value:((attrs['datamax'])?attrs['datamax'].value:3),
	            'min': attrs['datamin']?attrs['datamin'].value:0,
	            'max': attrs['datamax']?attrs['datamax'].value:3,
	            'step': attrs['datastep']?attrs['datastep'].value:1,
	            'size': attrs['datasize']?attrs['datasize'].value:'xs',
	            'starCaptions': {0: 'status:nix', 1: 'status:wackelt', 2: 'status:geht', 3: 'status:laeuft'}
	        }).on('change', function (ev) {
	        	that.score = this.value;
		         that.$emit("on-result-change",that.score,event.target,that.$attrs.compvar);
		        });	       
	        
	        
	  
	    },
	    
	   
	});
