define(["Constants","isCellValid"],function(Constants,isCellValid){
	//检查左边界,尝试着朝左边移动一个,看是否合法.     
    function checkLeftBorder(){      
        for(var i=0; i<Constants.activeBlock.length; i++){      
            if(Constants.activeBlock[i].y==0){      
                return false;      
            }      
            if(!isCellValid(Constants.activeBlock[i].x, Constants.activeBlock[i].y-1)){      
                return false;      
            }      
        }      
        return true;      
    }    
	return checkLeftBorder;
})