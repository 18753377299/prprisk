define(["Constants"],function(Constants){
	//绘活动图形     
    function paint(){      
        for(var i=0; i<4; i++){      
        	Constants.tbl.rows[Constants.activeBlock[i].x].cells[Constants.activeBlock[i].y].style.backgroundColor="red";      
        }      
    } 
	return paint;
})