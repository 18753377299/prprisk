define(["checkBottomBorder","erase","paint","updateBoard","deleteLine","updateScore",
        "eraseBoard","paintBoard","erasePreview","validateBlock","generateBlock",
        "copyBlock","applyPreview","paintPreview","Constants"],
        function(checkBottomBorder,erase,paint,updateBoard,deleteLine,updateScore,
                eraseBoard,paintBoard,erasePreview,validateBlock,generateBlock,
                copyBlock,applyPreview,paintPreview,Constants){
	        //向下移动     
        function moveDown(){     
            //检查底边界.     
          if(checkBottomBorder()){      
            //没有触底, 则擦除当前图形,      
              erase();      
              //更新当前图形坐标     
              for(var i=0; i<4; i++){     
            	  Constants.activeBlock[i].x = Constants.activeBlock[i].x + 1;      
              }     
              //重画当前图形     
              paint();      
          }     
          //触底,      
          else{     
            //停止当前的定时器, 也就是停止自动向下移动.     
            clearInterval(Constants.timer);     
            //更新board数组.     
            updateBoard();     
            //消行     
            var lines = deleteLine();     
            //如果有消行, 则     
            if(lines!=0){     
                //更新分数     
                //一次消多行则分数加倍    
                if(lines==2){    
                    lines=3;    
                }    
                else if(lines==3){    
                    lines=6;    
                }    
                else if(lines==4){    
                    lines=10;    
                }    
                Constants.score = Constants.score + lines;     
                updateScore();    
                //擦除整个面板     
                eraseBoard();     
                //重绘面板     
                paintBoard();     
            }    
            erasePreview();    
            //产生一个新图形并判断是否可以放在最初的位置.     
            if(!validateBlock(Constants.nextBlock)){    
                alert("Game over");     
                Constants.status = 2;    
                return;     
            };    
            Constants.activeBlock = Constants.nextBlock;    
            Constants.nextBlock = generateBlock();    
            Constants.previewBlock = copyBlock(Constants.nextBlock);    
            paint();    
            //定时器, 每隔一秒执行一次moveDown    
            applyPreview();    
            paintPreview();    
            Constants.timer = setInterval(moveDown,1000)     
          }      
        } 
        return moveDown;
})