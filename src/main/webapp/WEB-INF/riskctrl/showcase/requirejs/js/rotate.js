define(["copyBlock","isCellValid","erase","paint","Constants"],
		function(copyBlock,isCellValid,erase,paint,Constants){
    //旋转, 因为旋转之后可能会有方格覆盖已有的方格.     
    //先用一个tmpBlock,把activeBlock的内容都拷贝到tmpBlock,     
    //对tmpBlock尝试旋转, 如果旋转后检测发现没有方格产生冲突,则     
    //把旋转后的tmpBlock的值给activeBlock.     
    function rotate(){      
        var tmpBlock = copyBlock(Constants.activeBlock);     
        //先算四个点的中心点，则这四个点围绕中心旋转90度。    
        var cx = Math.round((tmpBlock[0].x + tmpBlock[1].x + tmpBlock[2].x + tmpBlock[3].x)/4);      
        var cy = Math.round((tmpBlock[0].y + tmpBlock[1].y + tmpBlock[2].y + tmpBlock[3].y)/4);      
        //旋转的主要算法. 可以这样分解来理解。    
        //先假设围绕源点旋转。然后再加上中心点的坐标。    
  
            for(var i=0; i<4; i++){      
                tmpBlock[i].x = cx+cy-Constants.activeBlock[i].y;     
                tmpBlock[i].y = cy-cx+Constants.activeBlock[i].x;     
            }      
            //检查旋转后方格是否合法.     
        for(var i=0; i<4; i++){      
            if(!isCellValid(tmpBlock[i].x,tmpBlock[i].y)){     
                return;     
            }     
        }     
        //如果合法, 擦除     
        erase();      
        //对activeBlock重新赋值.     
        for(var i=0; i<4; i++){      
        	Constants.activeBlock[i].x = tmpBlock[i].x;      
        	Constants.activeBlock[i].y = tmpBlock[i].y;      
        }     
        //重画.     
        paint();      
    }      
    return rotate;
})