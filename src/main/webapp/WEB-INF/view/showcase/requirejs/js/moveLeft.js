define(["checkLeftBorder","erase","paint","Constants"],
		function(checkLeftBorder,erase,paint,Constants){
    //左移动     
    function moveLeft(){     
        if(checkLeftBorder()){      
            erase();      
            for(var i=0; i<4; i++){      
            	Constants.activeBlock[i].y = Constants.activeBlock[i].y - 1;      
            }      
            paint();      
        }      
    }
    return moveLeft;
})