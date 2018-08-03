define(function(){
	//产生一个空白行.     
    function generateBlankLine(){     
        var line = new Array(10);     
        for(var i=0; i<10; i++){     
            line[i] = 0;     
        }     
        return line;     
    }  
	return generateBlankLine;
})