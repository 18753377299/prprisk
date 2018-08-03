define(["checkRightBorder","erase","paint","Constants"],
		function(checkRightBorder,erase,paint,Constants){
    //右移动     
    function moveRight(){      
        if(checkRightBorder()){      
            erase();      
            for(var i=0; i<4; i++){      
            	Constants.activeBlock[i].y = Constants.activeBlock[i].y + 1;      
            }      
            paint();      
        }      
    } 
    return moveRight;
})