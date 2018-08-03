    /************************************************************  
    * JS俄罗斯方块完美注释版 v 1.01  
    * 作者: sunxing007  
    * 转载请说明来自: http://blog.csdn.net/sunxing007  
    *************************************************************/   
      
    /************************************************************      
    * JS俄罗斯方块完美注释版 v 1.01     
    * 从学c语言那一会儿都想写一个俄罗斯方块,可是每次动起手总觉得难度太大.     
    * 今天终于用了大约4个小时写出来了. 其中在涉及到方块变型的时候还咨询了     
     * 同学来帮忙;     
    *     
    * 个人觉得难点有这么几个:     
    * 1: 边界检查, 不多说, 想通了就行     
     * 2: 旋转, 还是数学上的方法, 一个点相对另外一个点旋转90度的问题.      
    * 4: 让整个程序在点开始之后, 怎么让它一直自动的运行下去. 我以前一直没有做完,     
    *    主要是因为没有想清楚到底要用一个什么机制让游戏自动运行下去,      
    *    这个过程可以这么理解:     
    *    用户点开始->构造一个活动图形, 设置定时器,      
    *    每次向下移动后, 都检查是否触底, 如果触底了, 则尝试消行,     
    *    完了之后再构造一个活动图形, 再设置定时器.     
    */   
	require(["Constants","generateBlock","copyBlock","applyPreview","paint","paintPreview","moveDown","keyControl"],
			function(Constants,generateBlock,copyBlock,applyPreview,paint,paintPreview,moveDown,keyControl){
           
        //开始    
        var button = document.getElementById("button");
        button.onclick = function begin(){  
        	button.disabled = true;
            Constants.status = 1;      
            Constants.tbl = document.getElementById("board");    
            Constants.preTbl = document.getElementById("preBoard");    
            Constants.activeBlock = generateBlock();    
            Constants.nextBlock = generateBlock();    
            Constants.previewBlock = copyBlock(Constants.nextBlock);    
            applyPreview();    
            paint();    
            paintPreview();    
            Constants.timer = setInterval(moveDown,1000);     
        }    
        document.onkeydown=keyControl;  
	});