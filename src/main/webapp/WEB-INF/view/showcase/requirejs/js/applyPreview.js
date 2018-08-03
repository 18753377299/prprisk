define(["Constants"],function(Constants){
	//调整previewBlock的坐标以适应预览窗口    
    function applyPreview(){    
        var t = 100;    
        for(var i=0; i<4; i++){    
            if(Constants.previewBlock[i].y<t){    
                t = Constants.previewBlock[i].y;    
            }    
        }    
        for(var i=0; i<4; i++){    
        	Constants.previewBlock[i].y-=t;    
        }    
    }  
	return applyPreview;
})