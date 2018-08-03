define(["Constants"],function(Constants){
	//检查坐标为(x,y)的是否在board种已经存在, 存在说明这个方格不合法.     
    function isCellValid(x, y){      
        if(x>17||x<0||y>9||y<0){      
            return false;      
        }      
        if(Constants.board[x][y]==1){      
            return false;      
        }      
        return true;      
    }
	return isCellValid;
})