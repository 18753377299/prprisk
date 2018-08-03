define(["Constants"],function(Constants){
	//绘预览图形    
    function paintPreview(){    
        for(var i=0; i<4; i++){    
        	Constants.preTbl.rows[Constants.previewBlock[i].x].cells[Constants.previewBlock[i].y].style.backgroundColor="red";    
        }    
    } 
	return paintPreview;
})