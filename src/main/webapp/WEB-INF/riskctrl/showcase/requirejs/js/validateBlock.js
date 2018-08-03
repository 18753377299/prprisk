define(["isCellValid"],function(isCellValid){
    function validateBlock(block){    
        if(!block){    
            //alert("next block is null.");    
            return false;    
        }    
      for(var i=0; i<4; i++){     
          if(!isCellValid(block[i].x, block[i].y)){    
                //alert("a cell is invalid.");    
              return false;     
          }     
      }    
      return true;    
    }
	return validateBlock;
})