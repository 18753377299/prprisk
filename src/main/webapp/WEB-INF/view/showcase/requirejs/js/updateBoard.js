define(["Constants"],function(Constants){
	//更新board数组     
    function updateBoard(){      
        for(var i=0; i<4; i++){      
        	Constants.board[Constants.activeBlock[i].x][Constants.activeBlock[i].y]=1;      
        }      
    }    
	return updateBoard;
})