define(["Constants","generateBlankLine"],function(Constants,generateBlankLine){
	//消行     
    function deleteLine(){     
        var lines = 0;     
        for(var i=0; i<18; i++){     
            var j=0;     
            for(; j<10; j++){     
                if(Constants.board[i][j]==0){     
                    break;     
                }     
            }     
            if(j==10){     
                lines++;     
                if(i!=0){     
                    for(var k=i-1; k>=0; k--){     
                    	Constants.board[k+1] = Constants.board[k];     
                    }     
                }     
                Constants.board[0] = generateBlankLine();     
            }     
        }     
        return lines;     
    }  
	return deleteLine;
})