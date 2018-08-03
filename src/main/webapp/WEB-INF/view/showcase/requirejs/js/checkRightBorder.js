define(["Constants","isCellValid"],function(Constants,isCellValid){
	//检查右边界,尝试着朝右边移动一个,看是否合法.     
    function checkRightBorder(){      
        for(var i=0; i<Constants.activeBlock.length; i++){      
            if(Constants.activeBlock[i].y==9){      
                return false;      
            }      
            if(!isCellValid(Constants.activeBlock[i].x, Constants.activeBlock[i].y+1)){      
                return false;      
            }      
        }      
        return true;      
    }      
	return checkRightBorder;
})