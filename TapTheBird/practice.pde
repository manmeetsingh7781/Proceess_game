
    private int moving_speedX = 10;
    private PFont f; 
    private int score = 0;
    private Poles main = new Poles(); 





    
void setup(){

  fullScreen();
    smooth(2);
  

}



void draw(){
      score++;

      background(0,0,0,0);
      
      drawPoles();
  


       
}

void drawPoles(){
     main.drawPoleMap();
     main.player.drawPlayer();
     drawMSG("Score: "+score, width-100, 20 , 16);   

}


    
    
void drawMSG(String msg, int x, int y, int size){
    f = createFont("Arial", 16, true); 
    textFont(f, size);
    fill(255);
    text(msg ,x, y);

}

void accelerate(float val) {
       main.player.gravity = val;
}

    
    
void mousePressed(){
    accelerate(-5);   
}
