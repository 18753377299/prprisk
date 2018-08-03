define(function(){
	//辅助函数，拷贝一个图形。    
    function copyBlock(old){    
        var o = new Array(4);    
                for(var i=0; i<4; i++){      
            o[i] = {x:0, y:0};      
      }    
      for(var i=0; i<4; i++){      
                  o[i].x = old[i].x;      
                  o[i].y = old[i].y;      
                }    
                return o;    
    }  
	return copyBlock;
})