define(["Constants","isCellValid"],function(Constants,isCellValid){
	//检查底边界,尝试着朝下边移动一个,看是否合法.     
    function checkBottomBorder(){      
        for(var i=0; i<Constants.activeBlock.length; i++){      
            if(Constants.activeBlock[i].x==17){      
                return false;      
            }      
            if(!isCellValid(Constants.activeBlock[i].x+1, Constants.activeBlock[i].y)){      
                return false;      
            }      
        }      
        return true;      
    }    
	return checkBottomBorder;
})