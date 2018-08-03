define(["Constants"],function(Constants){
	//擦除整个面板     
    function eraseBoard(){     
        for(var i=0; i<18; i++){     
            for(var j=0; j<10; j++){     
            	Constants.tbl.rows[i].cells[j].style.backgroundColor = "white";     
            }     
        }     
    }   
	return eraseBoard;
})