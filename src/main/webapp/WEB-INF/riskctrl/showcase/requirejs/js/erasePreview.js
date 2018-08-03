define(["Constants"],function(Constants){
	//擦除预览图形    
    function erasePreview(){    
        for(var i=0; i<4; i++){    
        	Constants.preTbl.rows[Constants.previewBlock[i].x].cells[Constants.previewBlock[i].y].style.backgroundColor="white";    
        }    
    }   
	return erasePreview;
})