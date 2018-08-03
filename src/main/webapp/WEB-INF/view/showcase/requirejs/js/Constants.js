define(function(){
	 //表示页面中的table, 这个table就是将要显示游戏的主面板     
    var tbl;     
    //预览窗口    
    var preTbl;     
    //游戏状态 0: 未开始;1 运行; 2 中止;     
    var status = 0;      
    //定时器, 定时器内将做moveDown操作     
    var timer;     
    //分数     
    var score = 0;     
    //board是一个18*10的数组,也和页面的table对应.     
    //用来标注那些方格已经被占据. 初始时都为0, 如果被占据则为1     
    var board = new Array(18);     
    for(var i=0;i<18;i++){     
        board[i] = new Array(10);      
    }     
    for(var i=0;i<18;i++){      
        for(var j=0; j<10; j++){      
            board[i][j] = 0;      
        }      
    }      
          
    //当前活动的方块, 它可以左右下移动, 变型.当它触底后, 将会更新board;     
    var activeBlock;    
    //下一个图形    
    var nextBlock;    
    //下一个图形预览    
    var previewBlock;   
    
    return {
    	tbl : tbl,
    	preTbl : preTbl,
    	status : status,
    	timer : timer,
    	score : score,
    	board : board,
    	activeBlock : activeBlock,
    	nextBlock : nextBlock,
    	previewBlock : previewBlock
    }
    
})