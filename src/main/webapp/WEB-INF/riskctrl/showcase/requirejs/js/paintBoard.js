define(["Constants"],function(Constants){
	//重绘整个面板     
    function paintBoard(){     
        for(var i=0;i<18;i++){     
            for(var j=0; j<10; j++){      
              if(Constants.board[i][j]==1){     
            	  Constants.tbl.rows[i].cells[j].style.backgroundColor = "red";     
              }     
            }      
        }      
    }   
	return paintBoard;
})