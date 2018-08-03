define(["Constants"],function(Constants){
	//更新分数    
    function updateScore(){    
        document.getElementById("score").innerText=" " + Constants.score;    
    } 
	return updateScore;
})