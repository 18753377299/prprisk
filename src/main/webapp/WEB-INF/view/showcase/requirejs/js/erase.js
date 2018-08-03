define(["Constants"],function(Constants){
	//擦除     
    function erase(){      
        for(var i=0; i<4; i++){      
        	Constants.tbl.rows[Constants.activeBlock[i].x].cells[Constants.activeBlock[i].y].style.backgroundColor="white";      
        }      
    }  
	return erase;
})