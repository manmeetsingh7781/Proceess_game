class Poles {
    public int pole_width = 35;
    public float moving_x_of_poles = 600;
    public float random_position_for_placing_downside = random(250, 350);
    public float random_position_for_placing_upside =  random(350, 250);
    private int number_of_poles = 200;
    public Grid grid = new Grid(number_of_poles);
    public Player player = new Player();
    int ypos = 0;


  public void drawPoleMap(){

  this.moving_x_of_poles -= moving_speedX;
  
   for(int h = 0; h < grid.elements.size(); ++h) {
            float pole_height = this.grid.elements.get(h);
            
            float xPosOfPoles = h * this.random_position_for_placing_upside + moving_x_of_poles;
            float yPosOfPoles = height - pole_height;
            
           
           fill(153, 255, 153);
           rect(h * this.random_position_for_placing_upside + moving_x_of_poles, ypos, pole_width, pole_height , 0, 0, 12, 12);
           rect(h * this.random_position_for_placing_downside + moving_x_of_poles, yPosOfPoles , pole_width, pole_height, 12, 12, 0, 0);
         
           
            if (xPosOfPoles < (float)(-this.random_position_for_placing_downside) * number_of_poles) {
               drawMSG("You Won", width/2-(50), height/2 - (30), 32); 
               noLoop();
            }
        
            if(xPosOfPoles <= 0){
               score++;
            }
            if(player.y >= height ||  player.y <= 0){

               drawMSG("You Lose!", width/2-(50), height/2 - (30), 32); 
               noLoop();
            }
            
    
    
            if(player.y >= 0 && player.y + player.player_Height <= pole_height && player.x >= xPosOfPoles && player.x <= xPosOfPoles + pole_width){
               drawMSG("You Lose!", width/2-(50), height/2 - (30), 32); 
               noLoop();
            }


           if(player.y >= yPosOfPoles && player.y + player.player_Height <= (yPosOfPoles + pole_height) && player.x   >= xPosOfPoles && player.x <= xPosOfPoles + pole_width){
               drawMSG("You Lose!", width/2-(50), height/2 - (30), 32); 
               noLoop();
            } 
          
            
        }
      
    }

}
