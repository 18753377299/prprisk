define(["moveLeft","moveRight","moveDown","rotate","Constants"],
		function(moveLeft,moveRight,moveDown,rotate,Constants){
	//键盘控制     
    function keyControl(){      
        if(Constants.status!=1){     
            return;     
        }      
        var code = event.keyCode;      
        switch(code){      
            case 37:{     
                moveLeft();     
                break;      
            }      
            case 38:{     
                rotate();      
                break;      
            }      
            case 39:{      
                moveRight();      
                break;     
            }      
            case 40:{      
                moveDown();      
                break;      
            }      
        }      
    }  
	return keyControl;
})