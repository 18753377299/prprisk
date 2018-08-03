define(function(){
	//生产方块形状, 有7种基本形状.     
        function generateBlock(){      
            var block = new Array(4);      
            //generate a random int number between 0-6;      
            var t = (Math.floor(Math.random()*20)+1)%7;      
            switch(t){    
                case 0:{      
                    block[0] = {x:0, y:4};      
                    block[1] = {x:1, y:4};      
                    block[2] = {x:0, y:5};      
                    block[3] = {x:1, y:5};      
                    break;      
                }      
                case 1:{      
                    block[0] = {x:0, y:3};      
                    block[1] = {x:0, y:4};      
                    block[2] = {x:0, y:5};      
                    block[3] = {x:0, y:6};      
                    break;      
                }      
                case 2:{      
                    block[0] = {x:0, y:5};      
                    block[1] = {x:1, y:4};      
                    block[2] = {x:1, y:5};      
                    block[3] = {x:2, y:4};      
                    break;      
                }      
                case 3:{      
                    block[0] = {x:0, y:4};      
                    block[1] = {x:1, y:4};      
                    block[2] = {x:1, y:5};      
                    block[3] = {x:2, y:5};      
                    break;      
                }      
                case 4:{      
                    block[0] = {x:0, y:4};      
                    block[1] = {x:1, y:4};      
                    block[2] = {x:1, y:5};      
                    block[3] = {x:1, y:6};      
                    break;      
                }      
                case 5:{      
                    block[0] = {x:0, y:4};      
                    block[1] = {x:1, y:4};      
                    block[2] = {x:2, y:4};      
                    block[3] = {x:2, y:5};      
                    break;      
                }      
                case 6:{      
                    block[0] = {x:0, y:5};      
                    block[1] = {x:1, y:4};      
                    block[2] = {x:1, y:5};      
                    block[3] = {x:1, y:6};      
                    break;      
                }     
            }    
            return block;     
        }
        return generateBlock;
})